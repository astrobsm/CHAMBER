import { Router, Request, Response, NextFunction } from 'express';
import { body, param, query, validationResult } from 'express-validator';
import { authenticate, authorize } from '../middleware/auth.js';
import { query as dbQuery } from '../config/database.js';
import { UserRole } from '../types/index.js';
import { logger } from '../utils/logger.js';

const router = Router();

// Validation middleware
const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * GET /api/students/profile
 * Get current student's profile
 */
router.get('/profile', authenticate, authorize([UserRole.STUDENT]), async (req: Request, res: Response) => {
  try {
    const userId = req.user!.userId;

    const result = await dbQuery(
      `SELECT s.*, u.email, u.last_login,
              sr.rotation_id, sr.start_date as rotation_start, sr.end_date as rotation_end,
              sr.final_score, sr.is_cleared,
              r.name as rotation_name, rc.name as category_name
       FROM students s
       JOIN users u ON s.user_id = u.id
       LEFT JOIN student_rotations sr ON s.id = sr.student_id AND sr.status = 'active'
       LEFT JOIN rotations r ON sr.rotation_id = r.id
       LEFT JOIN rotation_categories rc ON r.category_id = rc.id
       WHERE s.user_id = $1`,
      [userId]
    );

    if (result.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Student profile not found' });
    }

    res.json({ success: true, data: result.rows[0] });
  } catch (error) {
    logger.error('Error fetching student profile:', error);
    res.status(500).json({ success: false, message: 'Failed to fetch profile' });
  }
});

/**
 * PUT /api/students/profile
 * Update current student's profile
 */
router.put(
  '/profile',
  authenticate,
  authorize([UserRole.STUDENT]),
  [
    body('phone_number').optional().isMobilePhone('any'),
    body('whatsapp_number').optional().isMobilePhone('any'),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const userId = req.user!.userId;
      const { phone_number, whatsapp_number } = req.body;

      const result = await dbQuery(
        `UPDATE students 
         SET phone_number = COALESCE($1, phone_number),
             whatsapp_number = COALESCE($2, whatsapp_number),
             updated_at = CURRENT_TIMESTAMP
         WHERE user_id = $3
         RETURNING *`,
        [phone_number, whatsapp_number, userId]
      );

      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error updating student profile:', error);
      res.status(500).json({ success: false, message: 'Failed to update profile' });
    }
  }
);

/**
 * GET /api/students/dashboard
 * Get student dashboard data
 */
router.get('/dashboard', authenticate, authorize([UserRole.STUDENT]), async (req: Request, res: Response) => {
  try {
    const userId = req.user!.userId;

    // Get student info
    const studentResult = await dbQuery(
      `SELECT s.id, s.first_name, s.last_name, s.level, s.clearance_status
       FROM students s WHERE s.user_id = $1`,
      [userId]
    );

    if (studentResult.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Student not found' });
    }

    const student = studentResult.rows[0];

    // Get active rotation
    const rotationResult = await dbQuery(
      `SELECT sr.*, r.name as rotation_name, r.start_date, r.end_date,
              rc.name as category_name
       FROM student_rotations sr
       JOIN rotations r ON sr.rotation_id = r.id
       JOIN rotation_categories rc ON r.category_id = rc.id
       WHERE sr.student_id = $1 AND sr.status = 'active'`,
      [student.id]
    );

    // Get attendance summary
    const attendanceResult = await dbQuery(
      `SELECT 
         COUNT(*) FILTER (WHERE ar.status = 'present') as present_count,
         COUNT(*) FILTER (WHERE ar.status = 'absent') as absent_count,
         COUNT(*) FILTER (WHERE ar.status = 'late') as late_count,
         COUNT(*) as total_sessions
       FROM attendance_records ar
       JOIN attendance_sessions ass ON ar.session_id = ass.id
       WHERE ar.student_id = $1`,
      [student.id]
    );

    // Get test scores
    const testResult = await dbQuery(
      `SELECT test_type, score, total_questions, percentage, completed_at
       FROM tests
       WHERE student_id = $1 AND status = 'completed'
       ORDER BY completed_at DESC`,
      [student.id]
    );

    // Get participation average
    const participationResult = await dbQuery(
      `SELECT AVG(score) as average_score, COUNT(*) as total_activities
       FROM participation_records
       WHERE student_id = $1`,
      [student.id]
    );

    res.json({
      success: true,
      data: {
        student,
        activeRotation: rotationResult.rows[0] || null,
        attendance: attendanceResult.rows[0],
        tests: testResult.rows,
        participation: participationResult.rows[0],
      },
    });
  } catch (error) {
    logger.error('Error fetching dashboard:', error);
    res.status(500).json({ success: false, message: 'Failed to fetch dashboard' });
  }
});

/**
 * GET /api/students/performance
 * Get detailed performance analytics
 */
router.get('/performance', authenticate, authorize([UserRole.STUDENT]), async (req: Request, res: Response) => {
  try {
    const userId = req.user!.userId;

    const studentResult = await dbQuery(
      `SELECT s.id FROM students s WHERE s.user_id = $1`,
      [userId]
    );

    if (studentResult.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Student not found' });
    }

    const studentId = studentResult.rows[0].id;

    // Get comprehensive performance data
    const performanceResult = await dbQuery(
      `SELECT 
         ps.*,
         sr.rotation_id,
         r.name as rotation_name
       FROM performance_summaries ps
       JOIN student_rotations sr ON ps.student_rotation_id = sr.id
       JOIN rotations r ON sr.rotation_id = r.id
       WHERE ps.student_id = $1
       ORDER BY ps.last_calculated_at DESC`,
      [studentId]
    );

    res.json({ success: true, data: performanceResult.rows });
  } catch (error) {
    logger.error('Error fetching performance:', error);
    res.status(500).json({ success: false, message: 'Failed to fetch performance' });
  }
});

/**
 * GET /api/students/:id (Admin only)
 * Get specific student details
 */
router.get(
  '/:id',
  authenticate,
  authorize([UserRole.ADMIN, UserRole.ASSESSOR]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;

      const result = await dbQuery(
        `SELECT s.*, u.email, u.last_login, u.is_active
         FROM students s
         JOIN users u ON s.user_id = u.id
         WHERE s.id = $1`,
        [id]
      );

      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }

      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error fetching student:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch student' });
    }
  }
);

/**
 * GET /api/students (Admin only)
 * List all students with filtering
 */
router.get(
  '/',
  authenticate,
  authorize([UserRole.ADMIN, UserRole.ASSESSOR]),
  [
    query('level').optional().isIn(['surgery_1', 'surgery_2', 'surgery_3', 'surgery_4']),
    query('rotation_id').optional().isUUID(),
    query('page').optional().isInt({ min: 1 }),
    query('limit').optional().isInt({ min: 1, max: 100 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { level, rotation_id, page = 1, limit = 20 } = req.query;
      const offset = (Number(page) - 1) * Number(limit);

      let whereClause = 'WHERE 1=1';
      const params: unknown[] = [];
      let paramIndex = 1;

      if (level) {
        whereClause += ` AND s.level = $${paramIndex++}`;
        params.push(level);
      }

      if (rotation_id) {
        whereClause += ` AND sr.rotation_id = $${paramIndex++}`;
        params.push(rotation_id);
      }

      const countResult = await dbQuery(
        `SELECT COUNT(*) FROM students s
         LEFT JOIN student_rotations sr ON s.id = sr.student_id
         ${whereClause}`,
        params
      );

      const result = await dbQuery(
        `SELECT s.*, u.email, sr.rotation_id, r.name as rotation_name
         FROM students s
         JOIN users u ON s.user_id = u.id
         LEFT JOIN student_rotations sr ON s.id = sr.student_id AND sr.status = 'active'
         LEFT JOIN rotations r ON sr.rotation_id = r.id
         ${whereClause}
         ORDER BY s.last_name, s.first_name
         LIMIT $${paramIndex++} OFFSET $${paramIndex}`,
        [...params, limit, offset]
      );

      res.json({
        success: true,
        data: result.rows,
        pagination: {
          page: Number(page),
          limit: Number(limit),
          total: parseInt(countResult.rows[0].count),
          pages: Math.ceil(parseInt(countResult.rows[0].count) / Number(limit)),
        },
      });
    } catch (error) {
      logger.error('Error listing students:', error);
      res.status(500).json({ success: false, message: 'Failed to list students' });
    }
  }
);

export default router;
