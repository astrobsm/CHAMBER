import { Router, Request, Response, NextFunction } from 'express';
import { body, param, query, validationResult } from 'express-validator';
import bcrypt from 'bcryptjs';
import { authenticate, authorize } from '../middleware/auth';
import { AuthService } from '../services/authService';
import { PerformanceService } from '../services/performanceService';
import { query as dbQuery, getClient } from '../config/database';
import { UserRole, StudentLevel } from '../types/index';
import { logger } from '../utils/logger';

const router = Router();
const authService = new AuthService();
const performanceService = new PerformanceService();

const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * GET /api/admin/stats
 * Get system statistics (Admin only)
 */
router.get(
  '/stats',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (_req: Request, res: Response) => {
    try {
      const stats = await dbQuery(`
        SELECT 
          (SELECT COUNT(*) FROM students) as total_students,
          (SELECT COUNT(*) FROM assessors) as total_assessors,
          (SELECT COUNT(*) FROM users WHERE role = 'admin') as total_admins,
          (SELECT COUNT(*) FROM users WHERE is_active = true) as active_users,
          (SELECT COUNT(*) FROM rotations) as total_rotations,
          (SELECT COUNT(*) FROM rotations WHERE is_active = true) as active_rotations,
          (SELECT COUNT(*) FROM tests) as total_tests,
          (SELECT COUNT(*) FROM tests WHERE created_at >= date_trunc('month', CURRENT_DATE)) as tests_this_month,
          (SELECT COUNT(*) FROM attendance_records WHERE DATE(check_in_time) = CURRENT_DATE) as today_attendance
      `);
      
      const row = stats.rows[0];
      
      // Calculate clearance rate
      const clearanceResult = await dbQuery(`
        SELECT 
          COUNT(*) FILTER (WHERE is_cleared = true) as cleared,
          COUNT(*) as total
        FROM student_rotations
      `);
      const clearanceRate = clearanceResult.rows[0].total > 0 
        ? Math.round((clearanceResult.rows[0].cleared / clearanceResult.rows[0].total) * 100)
        : 0;
      
      // Return camelCase keys for frontend
      res.json({ 
        success: true, 
        data: {
          totalStudents: parseInt(row.total_students) || 0,
          totalAssessors: parseInt(row.total_assessors) || 0,
          totalAdmins: parseInt(row.total_admins) || 0,
          activeUsers: parseInt(row.active_users) || 0,
          totalRotations: parseInt(row.total_rotations) || 0,
          activeRotations: parseInt(row.active_rotations) || 0,
          totalTests: parseInt(row.total_tests) || 0,
          testsThisMonth: parseInt(row.tests_this_month) || 0,
          todayAttendance: parseInt(row.today_attendance) || 0,
          clearanceRate: clearanceRate,
          // Empty arrays for charts (can be populated with real data later)
          enrollmentTrend: [],
          levelDistribution: [],
          performanceTrend: [],
          alerts: [],
          recentActivity: []
        }
      });
    } catch (error: any) {
      logger.error('Error fetching stats:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch stats' });
    }
  }
);

/**
 * GET /api/admin/users
 * Get all users with optional filters (Admin only)
 */
router.get(
  '/users',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (req: Request, res: Response) => {
    try {
      const { role, is_active, page = 1, limit = 50 } = req.query;
      const offset = (Number(page) - 1) * Number(limit);
      
      let whereClause = 'WHERE 1=1';
      const params: unknown[] = [];
      let paramIndex = 1;
      
      if (role) {
        whereClause += ` AND u.role = $${paramIndex++}`;
        params.push(role);
      }
      
      if (is_active !== undefined) {
        whereClause += ` AND u.is_active = $${paramIndex++}`;
        params.push(is_active === 'true');
      }
      
      const usersQuery = await dbQuery(
        `SELECT u.id, u.email, u.role, u.is_active, u.created_at, u.last_login,
                COALESCE(s.first_name, a.first_name) as first_name,
                COALESCE(s.last_name, a.last_name) as last_name,
                s.level, a.department, a.title
         FROM users u
         LEFT JOIN students s ON u.id = s.user_id
         LEFT JOIN assessors a ON u.id = a.user_id
         ${whereClause}
         ORDER BY u.created_at DESC
         LIMIT $${paramIndex++} OFFSET $${paramIndex++}`,
        [...params, Number(limit), offset]
      );
      
      const countQuery = await dbQuery(
        `SELECT COUNT(*) FROM users u ${whereClause}`,
        params
      );
      
      res.json({
        success: true,
        data: {
          users: usersQuery.rows,
          total: parseInt(countQuery.rows[0].count),
          page: Number(page),
          limit: Number(limit),
        },
      });
    } catch (error: any) {
      logger.error('Error fetching users:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch users' });
    }
  }
);

/**
 * POST /api/admin/users
 * Create a new user (Admin only)
 */
router.post(
  '/users',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('email').isEmail().normalizeEmail(),
    body('password').isString().isLength({ min: 6 }),
    body('first_name').isString().isLength({ min: 1, max: 100 }),
    body('last_name').isString().isLength({ min: 1, max: 100 }),
    body('role').isIn(['student', 'assessor', 'admin']),
    body('level').optional({ values: 'falsy' }).isIn(Object.values(StudentLevel)),
    body('department').optional({ values: 'falsy' }).isString(),
    body('matriculation_number').optional({ values: 'falsy' }).isString(),
    body('phone_number').optional({ values: 'falsy' }).isString(),
    body('staff_id').optional({ values: 'falsy' }).isString(),
    body('title').optional({ values: 'falsy' }).isString(),
    body('designation').optional({ values: 'falsy' }).isString(),
  ],
  validate,
  async (req: Request, res: Response) => {
    const client = await getClient();
    try {
      await client.query('BEGIN');

      const {
        email,
        password,
        first_name,
        last_name,
        role,
        level,
        department,
        matriculation_number,
        phone_number,
        staff_id,
        title,
        designation,
      } = req.body;

      // Role-specific validation
      if (role === 'student') {
        if (!matriculation_number) {
          return res.status(400).json({ success: false, message: 'Matriculation number is required for students' });
        }
        if (!phone_number) {
          return res.status(400).json({ success: false, message: 'Phone number is required for students' });
        }
      } else if (role === 'assessor') {
        if (!staff_id) {
          return res.status(400).json({ success: false, message: 'Staff ID is required for assessors' });
        }
      }

      // Check if email already exists
      const existingUser = await client.query(
        'SELECT id FROM users WHERE email = $1',
        [email]
      );
      if (existingUser.rows.length > 0) {
        await client.query('ROLLBACK');
        return res.status(400).json({ success: false, message: 'Email already exists' });
      }

      // Hash password
      const salt = await bcrypt.genSalt(12);
      const hashedPassword = await bcrypt.hash(password, salt);

      // Create user
      const userResult = await client.query(
        `INSERT INTO users (email, password_hash, role, is_active)
         VALUES ($1, $2, $3, true)
         RETURNING id, email, role, is_active, created_at`,
        [email, hashedPassword, role]
      );

      const user = userResult.rows[0];

      // Create role-specific record
      if (role === 'student') {
        await client.query(
          `INSERT INTO students (user_id, first_name, last_name, level, matriculation_number, phone_number)
           VALUES ($1, $2, $3, $4, $5, $6)`,
          [user.id, first_name, last_name, level || 'surgery_1', matriculation_number || null, phone_number || null]
        );
      } else if (role === 'assessor') {
        await client.query(
          `INSERT INTO assessors (user_id, first_name, last_name, staff_id, title, designation, department)
           VALUES ($1, $2, $3, $4, $5, $6, $7)`,
          [user.id, first_name, last_name, staff_id || null, title || null, designation || null, department || null]
        );
      }

      await client.query('COMMIT');

      res.status(201).json({
        success: true,
        data: {
          ...user,
          first_name,
          last_name,
          level: role === 'student' ? level || 'surgery_1' : undefined,
          department: role === 'assessor' ? department : undefined,
        },
      });
    } catch (error: any) {
      await client.query('ROLLBACK');
      logger.error('Error creating user:', error);
      res.status(500).json({ success: false, message: error.message || 'Failed to create user' });
    } finally {
      client.release();
    }
  }
);

/**
 * GET /api/admin/users/bulk-template
 * Get CSV template for bulk upload
 */
router.get(
  '/users/bulk-template',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (_req: Request, res: Response) => {
    const csvTemplate = `email,first_name,last_name,role,matriculation_number,level,phone_number,staff_id,title,designation,department
john.doe@example.com,John,Doe,student,MED/2024/001,surgery_1,08012345678,,,
jane.smith@example.com,Jane,Smith,assessor,,,,STAFF001,Dr.,Consultant,Medicine
admin@example.com,Admin,User,admin,,,,,,,`;
    
    res.setHeader('Content-Type', 'text/csv');
    res.setHeader('Content-Disposition', 'attachment; filename=bulk_upload_template.csv');
    res.send(csvTemplate);
  }
);

/**
 * GET /api/admin/users/:id
 * Get a specific user by ID (Admin only)
 */
router.get(
  '/users/:id',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      
      const userQuery = await dbQuery(
        `SELECT u.id, u.email, u.role, u.is_active, u.created_at, u.last_login,
                COALESCE(s.first_name, a.first_name) as first_name,
                COALESCE(s.last_name, a.last_name) as last_name,
                s.level, s.matriculation_number, s.phone_number,
                a.department, a.title, a.designation, a.staff_id
         FROM users u
         LEFT JOIN students s ON u.id = s.user_id
         LEFT JOIN assessors a ON u.id = a.user_id
         WHERE u.id = $1`,
        [id]
      );
      
      if (userQuery.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'User not found' });
      }
      
      res.json({ success: true, data: userQuery.rows[0] });
    } catch (error: any) {
      logger.error('Error fetching user:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch user' });
    }
  }
);

/**
 * PUT /api/admin/users/:id
 * Update a user (Admin only)
 */
router.put(
  '/users/:id',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      const { first_name, last_name, email, is_active, level, department, title, designation } = req.body;
      
      // Update user table (only email and is_active)
      const userUpdates: string[] = [];
      const userParams: unknown[] = [];
      let paramIndex = 1;
      
      if (email) { userUpdates.push(`email = $${paramIndex++}`); userParams.push(email.toLowerCase()); }
      if (is_active !== undefined) { userUpdates.push(`is_active = $${paramIndex++}`); userParams.push(is_active); }
      
      if (userUpdates.length > 0) {
        userUpdates.push(`updated_at = NOW()`);
        userParams.push(id);
        await dbQuery(
          `UPDATE users SET ${userUpdates.join(', ')} WHERE id = $${paramIndex}`,
          userParams
        );
      }
      
      // Update role-specific data
      const userQuery = await dbQuery('SELECT role FROM users WHERE id = $1', [id]);
      const role = userQuery.rows[0]?.role;
      
      if (role === 'student') {
        const studentUpdates: string[] = [];
        const studentParams: unknown[] = [];
        let sIndex = 1;
        if (first_name) { studentUpdates.push(`first_name = $${sIndex++}`); studentParams.push(first_name); }
        if (last_name) { studentUpdates.push(`last_name = $${sIndex++}`); studentParams.push(last_name); }
        if (level) { studentUpdates.push(`level = $${sIndex++}`); studentParams.push(level); }
        if (studentUpdates.length > 0) {
          studentUpdates.push(`updated_at = NOW()`);
          studentParams.push(id);
          await dbQuery(`UPDATE students SET ${studentUpdates.join(', ')} WHERE user_id = $${sIndex}`, studentParams);
        }
      }
      
      if (role === 'assessor') {
        const assessorUpdates: string[] = [];
        const assessorParams: unknown[] = [];
        let aIndex = 1;
        if (first_name) { assessorUpdates.push(`first_name = $${aIndex++}`); assessorParams.push(first_name); }
        if (last_name) { assessorUpdates.push(`last_name = $${aIndex++}`); assessorParams.push(last_name); }
        if (department) { assessorUpdates.push(`department = $${aIndex++}`); assessorParams.push(department); }
        if (title) { assessorUpdates.push(`title = $${aIndex++}`); assessorParams.push(title); }
        if (designation) { assessorUpdates.push(`designation = $${aIndex++}`); assessorParams.push(designation); }
        if (assessorUpdates.length > 0) {
          assessorUpdates.push(`updated_at = NOW()`);
          assessorParams.push(id);
          await dbQuery(`UPDATE assessors SET ${assessorUpdates.join(', ')} WHERE user_id = $${aIndex}`, assessorParams);
        }
      }
      
      res.json({ success: true, message: 'User updated successfully' });
    } catch (error: any) {
      logger.error('Error updating user:', error);
      res.status(500).json({ success: false, message: 'Failed to update user' });
    }
  }
);

/**
 * DELETE /api/admin/users/:id
 * Delete a user (Admin only)
 */
router.delete(
  '/users/:id',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      
      // Soft delete by setting is_active to false
      await dbQuery('UPDATE users SET is_active = false, updated_at = NOW() WHERE id = $1', [id]);
      
      res.json({ success: true, message: 'User deleted successfully' });
    } catch (error: any) {
      logger.error('Error deleting user:', error);
      res.status(500).json({ success: false, message: 'Failed to delete user' });
    }
  }
);

/**
 * POST /api/admin/users/:id/reset-password
 * Reset user password (Admin only)
 */
router.post(
  '/users/:id/reset-password',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      const bcrypt = await import('bcryptjs');
      
      // Generate temporary password
      const tempPassword = `Temp${Math.random().toString(36).slice(-8)}!`;
      const hashedPassword = await bcrypt.hash(tempPassword, 12);
      
      await dbQuery('UPDATE users SET password_hash = $1, updated_at = NOW() WHERE id = $2', [hashedPassword, id]);
      
      res.json({ success: true, data: { temporary_password: tempPassword } });
    } catch (error: any) {
      logger.error('Error resetting password:', error);
      res.status(500).json({ success: false, message: 'Failed to reset password' });
    }
  }
);

/**
 * POST /api/admin/students
 * Create/onboard a new student (Admin only)
 */
router.post(
  '/students',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('email').isEmail(),
    body('matriculation_number').isString().isLength({ min: 5, max: 50 }),
    body('first_name').isString().isLength({ min: 2, max: 100 }),
    body('last_name').isString().isLength({ min: 2, max: 100 }),
    body('level').isIn(Object.values(StudentLevel)),
    body('phone_number').isMobilePhone('any'),
    body('password').isString().isLength({ min: 8 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await authService.registerStudent(req.body);
      res.status(201).json({ success: true, data: { user: result.user, student: result.student } });
    } catch (error: any) {
      logger.error('Error creating student:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to create student' });
    }
  }
);

/**
 * POST /api/admin/students/bulk
 * Bulk onboard students (Admin only)
 */
router.post(
  '/students/bulk',
  authenticate,
  authorize([UserRole.ADMIN]),
  [body('students').isArray({ min: 1, max: 100 })],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { students } = req.body;
      const results: unknown[] = [];
      const errors: unknown[] = [];
      
      for (let i = 0; i < students.length; i++) {
        try {
          const result = await authService.registerStudent(students[i]);
          results.push({ index: i, student: result.student });
        } catch (err: any) {
          errors.push({ index: i, error: err.message });
        }
      }
      
      res.status(201).json({
        success: true,
        data: { created: results.length, failed: errors.length, errors },
      });
    } catch (error: any) {
      logger.error('Error bulk creating students:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to create' });
    }
  }
);

/**
 * POST /api/admin/assessors
 * Create a new assessor (Admin only)
 */
router.post(
  '/assessors',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('email').isEmail(),
    body('staff_id').isString().isLength({ min: 2, max: 50 }),
    body('first_name').isString().isLength({ min: 2, max: 100 }),
    body('last_name').isString().isLength({ min: 2, max: 100 }),
    body('title').optional().isString(),
    body('designation').optional().isString(),
    body('department').optional().isString(),
    body('password').isString().isLength({ min: 8 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    const client = await getClient();
    try {
      await client.query('BEGIN');
      
      const { email, staff_id, first_name, last_name, title, designation, department, password } = req.body;
      
      // Check if email exists
      const existing = await client.query('SELECT id FROM users WHERE email = $1', [email]);
      if (existing.rows.length > 0) {
        await client.query('ROLLBACK');
        return res.status(400).json({ success: false, message: 'Email already exists' });
      }
      
      // Hash password
      const salt = await bcrypt.genSalt(12);
      const hashedPassword = await bcrypt.hash(password, salt);
      
      // Create user
      const userResult = await client.query(
        `INSERT INTO users (email, password_hash, role, is_active)
         VALUES ($1, $2, 'assessor', true) RETURNING id, email, role`,
        [email, hashedPassword]
      );
      const user = userResult.rows[0];
      
      // Create assessor record
      const assessorResult = await client.query(
        `INSERT INTO assessors (user_id, first_name, last_name, staff_id, title, designation, department)
         VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *`,
        [user.id, first_name, last_name, staff_id, title, designation, department]
      );
      
      await client.query('COMMIT');
      res.status(201).json({ success: true, data: { user, assessor: assessorResult.rows[0] } });
    } catch (error: any) {
      await client.query('ROLLBACK');
      logger.error('Error creating assessor:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to create' });
    } finally {
      client.release();
    }
  }
);

/**
 * PUT /api/admin/students/:id/status
 * Update student status (Admin only)
 */
router.put(
  '/students/:id/status',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    param('id').isUUID(),
    body('is_active').isBoolean(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `UPDATE users SET is_active = $1, updated_at = CURRENT_TIMESTAMP
         WHERE id = (SELECT user_id FROM students WHERE id = $2)
         RETURNING id`,
        [req.body.is_active, req.params.id]
      );
      
      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }
      
      res.json({ success: true, message: 'Status updated' });
    } catch (error) {
      logger.error('Error updating status:', error);
      res.status(500).json({ success: false, message: 'Failed to update' });
    }
  }
);

/**
 * POST /api/admin/topics
 * Create a new topic (Admin only)
 */
router.post(
  '/topics',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('category_id').isUUID(),
    body('name').isString().isLength({ min: 2, max: 200 }),
    body('description').optional().isString(),
    body('order_index').optional().isInt({ min: 0 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `INSERT INTO topics (category_id, name, description, order_index)
         VALUES ($1, $2, $3, $4)
         RETURNING *`,
        [req.body.category_id, req.body.name, req.body.description, req.body.order_index || 0]
      );
      
      res.status(201).json({ success: true, data: result.rows[0] });
    } catch (error: any) {
      logger.error('Error creating topic:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to create' });
    }
  }
);

/**
 * GET /api/admin/config/thresholds
 * Get system thresholds configuration
 */
router.get(
  '/config/thresholds',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT * FROM system_configurations WHERE category = 'thresholds'`
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching thresholds:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch' });
    }
  }
);

/**
 * PUT /api/admin/config/thresholds
 * Update system thresholds (Admin only)
 */
router.put(
  '/config/thresholds',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('clearance_threshold').optional().isFloat({ min: 0, max: 100 }),
    body('attendance_weight').optional().isFloat({ min: 0, max: 100 }),
    body('participation_weight').optional().isFloat({ min: 0, max: 100 }),
    body('test_weight').optional().isFloat({ min: 0, max: 100 }),
    body('cme_weight').optional().isFloat({ min: 0, max: 100 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const client = await getClient();
      
      try {
        await client.query('BEGIN');
        
        for (const [key, value] of Object.entries(req.body)) {
          await client.query(
            `INSERT INTO system_configurations (key, value, category, updated_by)
             VALUES ($1, $2, 'thresholds', $3)
             ON CONFLICT (key) DO UPDATE SET value = $2, updated_by = $3, updated_at = CURRENT_TIMESTAMP`,
            [key, String(value), req.user!.userId]
          );
        }
        
        await client.query('COMMIT');
        res.json({ success: true, message: 'Thresholds updated' });
      } catch (error) {
        await client.query('ROLLBACK');
        throw error;
      } finally {
        client.release();
      }
    } catch (error) {
      logger.error('Error updating thresholds:', error);
      res.status(500).json({ success: false, message: 'Failed to update' });
    }
  }
);

/**
 * POST /api/admin/clearance/process
 * Process clearances for a rotation (Admin only)
 */
router.post(
  '/clearance/process',
  authenticate,
  authorize([UserRole.ADMIN]),
  [body('rotation_id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const results = await performanceService.processRotationClearances(
        req.body.rotation_id,
        req.user!.userId
      );
      
      res.json({ success: true, data: results });
    } catch (error: any) {
      logger.error('Error processing clearances:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to process' });
    }
  }
);

/**
 * GET /api/admin/export/students
 * Export student data (Admin only)
 */
router.get(
  '/export/students',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    query('rotation_id').optional().isUUID(),
    query('format').optional().isIn(['json', 'csv']),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { rotation_id, format = 'json' } = req.query;
      
      let whereClause = '';
      const params: unknown[] = [];
      
      if (rotation_id) {
        whereClause = 'WHERE sr.rotation_id = $1';
        params.push(rotation_id);
      }
      
      const result = await dbQuery(
        `SELECT 
           s.matriculation_number, s.first_name, s.last_name, s.level,
           s.phone_number, u.email, s.clearance_status,
           r.name as rotation_name, sr.final_score, sr.is_cleared,
           sr.start_date, sr.end_date
         FROM students s
         JOIN users u ON s.user_id = u.id
         LEFT JOIN student_rotations sr ON s.id = sr.student_id
         LEFT JOIN rotations r ON sr.rotation_id = r.id
         ${whereClause}
         ORDER BY s.last_name, s.first_name`,
        params
      );
      
      if (format === 'csv') {
        const headers = Object.keys(result.rows[0] || {}).join(',');
        const rows = result.rows.map(r => Object.values(r).join(',')).join('\n');
        
        res.setHeader('Content-Type', 'text/csv');
        res.setHeader('Content-Disposition', 'attachment; filename=students_export.csv');
        res.send(`${headers}\n${rows}`);
      } else {
        res.json({ success: true, data: result.rows });
      }
    } catch (error) {
      logger.error('Error exporting students:', error);
      res.status(500).json({ success: false, message: 'Failed to export' });
    }
  }
);

/**
 * GET /api/admin/dashboard
 * Get admin dashboard summary
 */
router.get(
  '/dashboard',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (req: Request, res: Response) => {
    try {
      const [students, rotations, tests, attendance] = await Promise.all([
        dbQuery(`SELECT COUNT(*) as total, 
                        COUNT(*) FILTER (WHERE clearance_status = 'cleared') as cleared
                 FROM students`),
        dbQuery(`SELECT COUNT(*) as total,
                        COUNT(*) FILTER (WHERE is_active = true) as active
                 FROM rotations`),
        dbQuery(`SELECT COUNT(*) as total,
                        COUNT(*) FILTER (WHERE status = 'completed') as completed,
                        AVG(score) FILTER (WHERE status = 'completed') as avg_score
                 FROM tests`),
        dbQuery(`SELECT COUNT(DISTINCT session_id) as total_sessions,
                        COUNT(*) as total_records,
                        COUNT(*) FILTER (WHERE status = 'present') as present
                 FROM attendance_records`),
      ]);
      
      res.json({
        success: true,
        data: {
          students: students.rows[0],
          rotations: rotations.rows[0],
          tests: tests.rows[0],
          attendance: attendance.rows[0],
        },
      });
    } catch (error) {
      logger.error('Error fetching admin dashboard:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch' });
    }
  }
);

/**
 * POST /api/admin/users/bulk-upload
 * Bulk upload users from CSV/JSON data (Admin only)
 */
router.post(
  '/users/bulk-upload',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('users').isArray({ min: 1, max: 500 }).withMessage('Users array required (max 500)'),
    body('users.*.email').isEmail().withMessage('Valid email required'),
    body('users.*.first_name').isString().isLength({ min: 2 }).withMessage('First name required'),
    body('users.*.last_name').isString().isLength({ min: 2 }).withMessage('Last name required'),
    body('users.*.role').isIn(['student', 'assessor', 'admin']).withMessage('Valid role required'),
  ],
  validate,
  async (req: Request, res: Response) => {
    const client = await getClient();
    try {
      await client.query('BEGIN');
      
      const { users } = req.body;
      const results: { success: unknown[]; failed: unknown[] } = { success: [], failed: [] };
      
      for (let i = 0; i < users.length; i++) {
        const userData = users[i];
        try {
          // Generate a temporary password if not provided
          const tempPassword = userData.password || `Temp${Math.random().toString(36).slice(-8)}!`;
          const bcrypt = await import('bcryptjs');
          const hashedPassword = await bcrypt.hash(tempPassword, 12);
          
          if (userData.role === 'student') {
            // Register as student
            const result = await authService.registerStudent({
              email: userData.email,
              firstName: userData.first_name,
              lastName: userData.last_name,
              password: tempPassword,
              matriculationNumber: userData.matriculation_number || `UNTH/${Date.now()}/${i}`,
              level: (userData.level || 'LEVEL_400') as StudentLevel,
              phoneNumber: userData.phone_number || '08000000000',
            });
            results.success.push({
              row: i + 1,
              email: userData.email,
              role: 'student',
              tempPassword,
              id: result.user.id,
            });
          } else if (userData.role === 'assessor') {
            // Create assessor directly since registerAssessor may not exist
            const userResult = await client.query(
              `INSERT INTO users (email, password_hash, role, first_name, last_name, is_active)
               VALUES ($1, $2, 'assessor', $3, $4, true)
               RETURNING id, email, role, first_name, last_name`,
              [userData.email.toLowerCase(), hashedPassword, userData.first_name, userData.last_name]
            );
            
            // Create assessor profile
            await client.query(
              `INSERT INTO assessors (user_id, staff_id, title, designation, department)
               VALUES ($1, $2, $3, $4, $5)`,
              [
                userResult.rows[0].id,
                userData.staff_id || `STAFF/${Date.now()}/${i}`,
                userData.title || '',
                userData.designation || '',
                userData.department || ''
              ]
            );
            
            results.success.push({
              row: i + 1,
              email: userData.email,
              role: 'assessor',
              tempPassword,
              id: userResult.rows[0].id,
            });
          } else if (userData.role === 'admin') {
            // Create admin user
            const userResult = await client.query(
              `INSERT INTO users (email, password_hash, role, first_name, last_name, is_active)
               VALUES ($1, $2, 'admin', $3, $4, true)
               RETURNING id, email, role, first_name, last_name`,
              [userData.email, hashedPassword, userData.first_name, userData.last_name]
            );
            
            results.success.push({
              row: i + 1,
              email: userData.email,
              role: 'admin',
              tempPassword,
              id: userResult.rows[0].id,
            });
          }
        } catch (err: any) {
          results.failed.push({
            row: i + 1,
            email: userData.email,
            error: err.message || 'Unknown error',
          });
        }
      }
      
      await client.query('COMMIT');
      
      logger.info(`Bulk upload completed: ${results.success.length} success, ${results.failed.length} failed`);
      
      res.status(201).json({
        success: true,
        message: `Successfully created ${results.success.length} users. ${results.failed.length} failed.`,
        data: results,
      });
    } catch (error: any) {
      await client.query('ROLLBACK');
      logger.error('Error in bulk upload:', error);
      res.status(500).json({ success: false, message: error.message || 'Bulk upload failed' });
    } finally {
      client.release();
    }
  }
);

export default router;
