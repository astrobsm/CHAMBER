import { Router, Request, Response, NextFunction } from 'express';
import { body, param, query, validationResult } from 'express-validator';
import { authenticate, authorize } from '../middleware/auth.js';
import { query as dbQuery, getClient } from '../config/database.js';
import { UserRole, StudentLevel } from '../types/index.js';
import { logger } from '../utils/logger.js';

const router = Router();

const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    logger.error('Validation errors:', { errors: errors.array(), body: req.body });
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * GET /api/rotations/categories
 * Get all rotation categories
 */
router.get('/categories', authenticate, async (req: Request, res: Response) => {
  try {
    const result = await dbQuery(
      `SELECT * FROM rotation_categories WHERE is_active = true ORDER BY level, name`
    );
    res.json({ success: true, data: result.rows });
  } catch (error) {
    logger.error('Error fetching categories:', error);
    res.status(500).json({ success: false, message: 'Failed to fetch categories' });
  }
});

/**
 * POST /api/rotations/categories
 * Create a rotation category (Admin only)
 */
router.post(
  '/categories',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('name').isString().isLength({ min: 2, max: 100 }),
    body('code').isString().isLength({ min: 2, max: 20 }),
    body('level').isIn(Object.values(StudentLevel)),
    body('description').optional().isString().isLength({ max: 500 }),
    body('duration_weeks').isInt({ min: 1, max: 52 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `INSERT INTO rotation_categories (name, code, level, description, duration_weeks)
         VALUES ($1, $2, $3, $4, $5)
         RETURNING *`,
        [req.body.name, req.body.code, req.body.level, req.body.description, req.body.duration_weeks]
      );
      
      res.status(201).json({ success: true, data: result.rows[0] });
    } catch (error: any) {
      logger.error('Error creating category:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to create' });
    }
  }
);

/**
 * GET /api/rotations
 * List all rotations
 */
router.get(
  '/',
  authenticate,
  async (req: Request, res: Response) => {
    try {
      let whereClause = 'WHERE 1=1';
      const params: unknown[] = [];
      let paramIndex = 1;
      
      if (req.query.category_id) {
        whereClause += ` AND r.category_id = $${paramIndex++}`;
        params.push(req.query.category_id);
      }
      
      if (req.query.is_active !== undefined) {
        whereClause += ` AND r.is_active = $${paramIndex++}`;
        params.push(req.query.is_active === 'true');
      }
      
      const result = await dbQuery(
        `SELECT r.*, rc.name as category_name, rc.level,
                (SELECT COUNT(*) FROM student_rotations sr WHERE sr.rotation_id = r.id) as student_count
         FROM rotations r
         JOIN rotation_categories rc ON r.category_id = rc.id
         ${whereClause}
         ORDER BY r.start_date DESC`,
        params
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error listing rotations:', error);
      res.status(500).json({ success: false, message: 'Failed to list rotations' });
    }
  }
);

/**
 * POST /api/rotations
 * Create a new rotation (Admin only)
 */
router.post(
  '/',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('category_id').optional({ values: 'falsy' }).matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/),
    body('level').optional({ values: 'falsy' }).isIn(Object.values(StudentLevel)),
    body('name').isString().isLength({ min: 2, max: 100 }),
    body('description').optional({ values: 'falsy' }).isString(),
    body('duration_weeks').optional().isInt({ min: 1, max: 52 }),
    body('start_date').optional({ values: 'falsy' }).isString(),
    body('end_date').optional({ values: 'falsy' }).isString(),
    body('assessor_id').optional({ values: 'falsy' }).matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/),
    body('requirements').optional(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      let categoryId = req.body.category_id;
      
      // If no category_id provided but level is, look up or create category
      if (!categoryId && req.body.level) {
        const catResult = await dbQuery(
          `SELECT id FROM rotation_categories WHERE level = $1 LIMIT 1`,
          [req.body.level]
        );
        if (catResult.rows.length > 0) {
          categoryId = catResult.rows[0].id;
        } else {
          // Create a default category for this level
          const newCat = await dbQuery(
            `INSERT INTO rotation_categories (name, code, level, duration_weeks)
             VALUES ($1, $2, $3, $4)
             RETURNING id`,
            [req.body.name, req.body.level.substring(0, 10).toUpperCase(), req.body.level, req.body.duration_weeks || 8]
          );
          categoryId = newCat.rows[0].id;
        }
      }
      
      if (!categoryId) {
        return res.status(400).json({ success: false, message: 'Either category_id or level is required' });
      }
      
      const result = await dbQuery(
        `INSERT INTO rotations 
         (category_id, name, start_date, end_date, 
          attendance_weight_clinic, attendance_weight_theatre, attendance_weight_ward)
         VALUES ($1, $2, $3, $4, $5, $6, $7)
         RETURNING *`,
        [
          categoryId,
          req.body.name,
          req.body.start_date || new Date().toISOString().split('T')[0],
          req.body.end_date || new Date(Date.now() + 30*24*60*60*1000).toISOString().split('T')[0],
          req.body.attendance_weight_clinic || 33.33,
          req.body.attendance_weight_theatre || 33.33,
          req.body.attendance_weight_ward || 33.34,
        ]
      );
      
      res.status(201).json({ success: true, data: result.rows[0] });
    } catch (error: any) {
      logger.error('Error creating rotation:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to create' });
    }
  }
);

/**
 * GET /api/rotations/my
 * Get all rotations for current student
 * NOTE: Must be defined BEFORE /:id route to avoid route conflict
 */
router.get(
  '/my',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT sr.id, sr.rotation_id, sr.start_date, sr.end_date, sr.status, sr.final_score, sr.is_cleared,
                r.name as rotation_name, r.description,
                rc.id as category_id, rc.name as category_name, rc.level
         FROM student_rotations sr
         JOIN rotations r ON sr.rotation_id = r.id
         JOIN rotation_categories rc ON r.category_id = rc.id
         JOIN students s ON sr.student_id = s.id
         WHERE s.user_id = $1
         ORDER BY sr.start_date DESC`,
        [req.user!.userId]
      );
      
      res.json({ success: true, data: { rotations: result.rows } });
    } catch (error) {
      logger.error('Error fetching student rotations:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch rotations' });
    }
  }
);

/**
 * GET /api/rotations/my/active
 * Get current student's active rotation
 * NOTE: Must be defined BEFORE /:id route to avoid route conflict
 */
router.get(
  '/my/active',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT r.*, rc.name as category_name, rc.level,
                sr.start_date as my_start_date, sr.end_date as my_end_date,
                sr.status, sr.final_score, sr.is_cleared
         FROM student_rotations sr
         JOIN rotations r ON sr.rotation_id = r.id
         JOIN rotation_categories rc ON r.category_id = rc.id
         JOIN students s ON sr.student_id = s.id
         WHERE s.user_id = $1 AND sr.status = 'active'`,
        [req.user!.userId]
      );
      
      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'No active rotation' });
      }
      
      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error fetching active rotation:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch rotation' });
    }
  }
);

/**
 * GET /api/rotations/:id
 * Get rotation details
 */
router.get(
  '/:id',
  authenticate,
  [param('id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT r.*, rc.name as category_name, rc.level, rc.description as category_description
         FROM rotations r
         JOIN rotation_categories rc ON r.category_id = rc.id
         WHERE r.id = $1`,
        [req.params.id]
      );
      
      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Rotation not found' });
      }
      
      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error fetching rotation:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch rotation' });
    }
  }
);

/**
 * GET /api/rotations/:id/students
 * Get students in a rotation
 */
router.get(
  '/:id/students',
  authenticate,
  authorize([UserRole.ADMIN, UserRole.ASSESSOR]),
  [param('id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT s.*, sr.start_date, sr.end_date, sr.status, sr.final_score, sr.is_cleared
         FROM students s
         JOIN student_rotations sr ON s.id = sr.student_id
         WHERE sr.rotation_id = $1
         ORDER BY s.last_name, s.first_name`,
        [req.params.id]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching rotation students:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch students' });
    }
  }
);

/**
 * POST /api/rotations/:id/assign
 * Assign students to a rotation (Admin only)
 */
router.post(
  '/:id/assign',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    param('id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/),
    body('student_ids').isArray({ min: 1 }),
    body('student_ids.*').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const client = await getClient();
      
      try {
        await client.query('BEGIN');
        
        // Get rotation details
        const rotationResult = await client.query(
          `SELECT start_date, end_date FROM rotations WHERE id = $1`,
          [req.params.id]
        );
        
        if (rotationResult.rows.length === 0) {
          throw new Error('Rotation not found');
        }
        
        const { start_date, end_date } = rotationResult.rows[0];
        const results: unknown[] = [];
        
        for (const studentId of req.body.student_ids) {
          // Check if already assigned
          const existing = await client.query(
            `SELECT id FROM student_rotations WHERE student_id = $1 AND rotation_id = $2`,
            [studentId, req.params.id]
          );
          
          if (existing.rows.length > 0) {
            continue; // Skip if already assigned
          }
          
          const result = await client.query(
            `INSERT INTO student_rotations (student_id, rotation_id, start_date, end_date)
             VALUES ($1, $2, $3, $4)
             RETURNING *`,
            [studentId, req.params.id, start_date, end_date]
          );
          
          // Update student's current rotation
          await client.query(
            `UPDATE students SET current_rotation_id = $1 WHERE id = $2`,
            [req.params.id, studentId]
          );
          
          results.push(result.rows[0]);
        }
        
        await client.query('COMMIT');
        res.json({ success: true, data: { assigned: results.length } });
      } catch (error) {
        await client.query('ROLLBACK');
        throw error;
      } finally {
        client.release();
      }
    } catch (error: any) {
      logger.error('Error assigning students:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to assign' });
    }
  }
);

export default router;
