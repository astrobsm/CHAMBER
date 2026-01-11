import { Router, Request, Response, NextFunction } from 'express';
import { body, param, query, validationResult } from 'express-validator';
import { authenticate, authorize } from '../middleware/auth';
import { query as dbQuery, getClient } from '../config/database';
import { UserRole } from '../types/index';
import { logger } from '../utils/logger';

const router = Router();

const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * POST /api/participation/record
 * Record a participation activity (Assessor)
 */
router.post(
  '/record',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [
    body('student_id').isUUID(),
    body('participation_type_id').isUUID(),
    body('session_date').isDate(),
    body('score').isFloat({ min: 0, max: 100 }),
    body('rubric_scores').optional().isObject(),
    body('feedback').optional().isString().isLength({ max: 1000 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const client = await getClient();
      
      try {
        await client.query('BEGIN');
        
        // Get assessor ID
        const assessorResult = await client.query(
          `SELECT id FROM assessors WHERE user_id = $1`,
          [req.user!.userId]
        );
        
        if (assessorResult.rows.length === 0) {
          throw new Error('Assessor not found');
        }
        
        const assessorId = assessorResult.rows[0].id;
        
        // Get student's active rotation
        const rotationResult = await client.query(
          `SELECT id FROM student_rotations 
           WHERE student_id = $1 AND status = 'active'`,
          [req.body.student_id]
        );
        
        const studentRotationId = rotationResult.rows[0]?.id;
        
        // Get max score from participation type
        const typeResult = await client.query(
          `SELECT max_score FROM participation_types WHERE id = $1`,
          [req.body.participation_type_id]
        );
        
        const maxScore = typeResult.rows[0]?.max_score || 100;
        
        // Insert participation record
        const result = await client.query(
          `INSERT INTO participation_records 
           (student_id, student_rotation_id, participation_type_id, session_date, 
            score, max_score, assessor_id, rubric_scores, feedback)
           VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
           RETURNING *`,
          [
            req.body.student_id,
            studentRotationId,
            req.body.participation_type_id,
            req.body.session_date,
            req.body.score,
            maxScore,
            assessorId,
            req.body.rubric_scores || null,
            req.body.feedback || null,
          ]
        );
        
        await client.query('COMMIT');
        res.status(201).json({ success: true, data: result.rows[0] });
      } catch (error) {
        await client.query('ROLLBACK');
        throw error;
      } finally {
        client.release();
      }
    } catch (error: any) {
      logger.error('Error recording participation:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to record' });
    }
  }
);

/**
 * GET /api/participation/types
 * Get all participation types
 */
router.get('/types', authenticate, async (req: Request, res: Response) => {
  try {
    const result = await dbQuery(
      `SELECT * FROM participation_types WHERE is_active = true ORDER BY name`
    );
    res.json({ success: true, data: result.rows });
  } catch (error) {
    logger.error('Error fetching participation types:', error);
    res.status(500).json({ success: false, message: 'Failed to fetch types' });
  }
});

/**
 * GET /api/participation/my-records
 * Get current student's participation records
 */
router.get(
  '/my-records',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT pr.*, pt.name as type_name, pt.code as type_code,
                a.first_name as assessor_first_name, a.last_name as assessor_last_name
         FROM participation_records pr
         JOIN participation_types pt ON pr.participation_type_id = pt.id
         JOIN assessors a ON pr.assessor_id = a.id
         JOIN students s ON pr.student_id = s.id
         WHERE s.user_id = $1
         ORDER BY pr.session_date DESC`,
        [req.user!.userId]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching participation records:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch records' });
    }
  }
);

/**
 * GET /api/participation/summary
 * Get participation summary for student
 */
router.get(
  '/summary',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT 
           pt.name as type_name,
           pt.code as type_code,
           COUNT(pr.id) as total_activities,
           AVG(pr.score) as average_score,
           MAX(pr.score) as max_score,
           MIN(pr.score) as min_score
         FROM participation_types pt
         LEFT JOIN participation_records pr ON pt.id = pr.participation_type_id
         LEFT JOIN students s ON pr.student_id = s.id AND s.user_id = $1
         WHERE pt.is_active = true
         GROUP BY pt.id, pt.name, pt.code
         ORDER BY pt.name`,
        [req.user!.userId]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching participation summary:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch summary' });
    }
  }
);

/**
 * GET /api/participation/student/:studentId
 * Get participation records for a specific student (Assessor/Admin)
 */
router.get(
  '/student/:studentId',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [param('studentId').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT pr.*, pt.name as type_name, 
                a.first_name as assessor_first_name, a.last_name as assessor_last_name
         FROM participation_records pr
         JOIN participation_types pt ON pr.participation_type_id = pt.id
         JOIN assessors a ON pr.assessor_id = a.id
         WHERE pr.student_id = $1
         ORDER BY pr.session_date DESC`,
        [req.params.studentId]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching student participation:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch records' });
    }
  }
);

/**
 * GET /api/participation/rubrics/:typeId
 * Get rubrics for a participation type
 */
router.get(
  '/rubrics/:typeId',
  authenticate,
  [param('typeId').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT * FROM participation_rubrics 
         WHERE participation_type_id = $1 AND is_active = true
         ORDER BY order_index`,
        [req.params.typeId]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching rubrics:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch rubrics' });
    }
  }
);

export default router;
