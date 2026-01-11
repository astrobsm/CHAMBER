import { Router, Request, Response, NextFunction } from 'express';
import { body, param, query, validationResult } from 'express-validator';
import { authenticate, authorize } from '../middleware/auth';
import { query as dbQuery, getClient } from '../config/database';
import { UserRole, CognitiveLevel, DifficultyLevel } from '../types/index';
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
 * POST /api/questions
 * Create a new question (Admin only)
 */
router.post(
  '/',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    body('topic_id').isUUID(),
    body('question_text').isString().isLength({ min: 10, max: 2000 }),
    body('option_a').isString().isLength({ min: 1, max: 500 }),
    body('option_b').isString().isLength({ min: 1, max: 500 }),
    body('option_c').isString().isLength({ min: 1, max: 500 }),
    body('option_d').isString().isLength({ min: 1, max: 500 }),
    body('option_e').isString().isLength({ min: 1, max: 500 }),
    body('correct_option').isIn(['A', 'B', 'C', 'D', 'E']),
    body('explanation').isString().isLength({ min: 10, max: 2000 }),
    body('difficulty').isIn(Object.values(DifficultyLevel)),
    body('cognitive_level').isIn(Object.values(CognitiveLevel)),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const client = await getClient();
      
      try {
        await client.query('BEGIN');
        
        // Get category_id from topic
        const topicResult = await client.query(
          `SELECT category_id FROM topics WHERE id = $1`,
          [req.body.topic_id]
        );
        
        if (topicResult.rows.length === 0) {
          throw new Error('Topic not found');
        }
        
        const categoryId = topicResult.rows[0].category_id;
        
        const result = await client.query(
          `INSERT INTO questions 
           (topic_id, category_id, question_text, option_a, option_b, option_c, 
            option_d, option_e, correct_option, explanation, difficulty, cognitive_level, created_by)
           VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
           RETURNING *`,
          [
            req.body.topic_id,
            categoryId,
            req.body.question_text,
            req.body.option_a,
            req.body.option_b,
            req.body.option_c,
            req.body.option_d,
            req.body.option_e,
            req.body.correct_option,
            req.body.explanation,
            req.body.difficulty,
            req.body.cognitive_level,
            req.user!.userId,
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
      logger.error('Error creating question:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to create' });
    }
  }
);

/**
 * GET /api/questions
 * List questions with filters (Admin only)
 */
router.get(
  '/',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    query('topic_id').optional().isUUID(),
    query('category_id').optional().isUUID(),
    query('difficulty').optional().isIn(Object.values(DifficultyLevel)),
    query('cognitive_level').optional().isIn(Object.values(CognitiveLevel)),
    query('page').optional().isInt({ min: 1 }),
    query('limit').optional().isInt({ min: 1, max: 5000 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { topic_id, category_id, difficulty, cognitive_level, page = 1, limit = 20 } = req.query;
      const offset = (Number(page) - 1) * Number(limit);
      
      let whereClause = 'WHERE q.is_active = true';
      const params: unknown[] = [];
      let paramIndex = 1;
      
      if (topic_id) {
        whereClause += ` AND q.topic_id = $${paramIndex++}`;
        params.push(topic_id);
      }
      
      if (category_id) {
        whereClause += ` AND q.category_id = $${paramIndex++}`;
        params.push(category_id);
      }
      
      if (difficulty) {
        whereClause += ` AND q.difficulty = $${paramIndex++}`;
        params.push(difficulty);
      }
      
      if (cognitive_level) {
        whereClause += ` AND q.cognitive_level = $${paramIndex++}`;
        params.push(cognitive_level);
      }
      
      const countResult = await dbQuery(
        `SELECT COUNT(*) FROM questions q ${whereClause}`,
        params
      );
      
      const result = await dbQuery(
        `SELECT q.*, t.name as topic_name, rc.name as category_name
         FROM questions q
         JOIN topics t ON q.topic_id = t.id
         JOIN rotation_categories rc ON q.category_id = rc.id
         ${whereClause}
         ORDER BY q.created_at DESC
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
      logger.error('Error listing questions:', error);
      res.status(500).json({ success: false, message: 'Failed to list questions' });
    }
  }
);

/**
 * GET /api/questions/:id
 * Get question details (Admin only)
 */
router.get(
  '/:id',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT q.*, t.name as topic_name, rc.name as category_name
         FROM questions q
         JOIN topics t ON q.topic_id = t.id
         JOIN rotation_categories rc ON q.category_id = rc.id
         WHERE q.id = $1`,
        [req.params.id]
      );
      
      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Question not found' });
      }
      
      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error fetching question:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch question' });
    }
  }
);

/**
 * PUT /api/questions/:id
 * Update a question (Admin only)
 */
router.put(
  '/:id',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    param('id').isUUID(),
    body('question_text').optional().isString().isLength({ min: 10, max: 2000 }),
    body('option_a').optional().isString().isLength({ min: 1, max: 500 }),
    body('option_b').optional().isString().isLength({ min: 1, max: 500 }),
    body('option_c').optional().isString().isLength({ min: 1, max: 500 }),
    body('option_d').optional().isString().isLength({ min: 1, max: 500 }),
    body('option_e').optional().isString().isLength({ min: 1, max: 500 }),
    body('correct_option').optional().isIn(['A', 'B', 'C', 'D', 'E']),
    body('explanation').optional().isString().isLength({ min: 10, max: 2000 }),
    body('difficulty').optional().isIn(Object.values(DifficultyLevel)),
    body('cognitive_level').optional().isIn(Object.values(CognitiveLevel)),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const fields = Object.keys(req.body).filter(k => req.body[k] !== undefined);
      
      if (fields.length === 0) {
        return res.status(400).json({ success: false, message: 'No fields to update' });
      }
      
      const setClause = fields.map((f, i) => `${f} = $${i + 2}`).join(', ');
      const values = fields.map(f => req.body[f]);
      
      const result = await dbQuery(
        `UPDATE questions SET ${setClause}, updated_at = CURRENT_TIMESTAMP
         WHERE id = $1 RETURNING *`,
        [req.params.id, ...values]
      );
      
      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Question not found' });
      }
      
      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error updating question:', error);
      res.status(500).json({ success: false, message: 'Failed to update question' });
    }
  }
);

/**
 * DELETE /api/questions/:id
 * Soft delete a question (Admin only)
 */
router.delete(
  '/:id',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `UPDATE questions SET is_active = false, updated_at = CURRENT_TIMESTAMP
         WHERE id = $1 RETURNING id`,
        [req.params.id]
      );
      
      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Question not found' });
      }
      
      res.json({ success: true, message: 'Question deleted' });
    } catch (error) {
      logger.error('Error deleting question:', error);
      res.status(500).json({ success: false, message: 'Failed to delete question' });
    }
  }
);

/**
 * GET /api/questions/topics
 * Get all topics
 */
router.get('/topics/list', authenticate, async (req: Request, res: Response) => {
  try {
    const result = await dbQuery(
      `SELECT t.*, rc.name as category_name,
              (SELECT COUNT(*) FROM questions q WHERE q.topic_id = t.id AND q.is_active = true) as question_count
       FROM topics t
       JOIN rotation_categories rc ON t.category_id = rc.id
       WHERE t.is_active = true
       ORDER BY rc.name, t.order_index`
    );
    
    res.json({ success: true, data: result.rows });
  } catch (error) {
    logger.error('Error listing topics:', error);
    res.status(500).json({ success: false, message: 'Failed to list topics' });
  }
});

/**
 * POST /api/questions/bulk
 * Bulk import questions (Admin only)
 */
router.post(
  '/bulk',
  authenticate,
  authorize([UserRole.ADMIN]),
  [body('questions').isArray({ min: 1, max: 100 })],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { questions } = req.body;
      const client = await getClient();
      
      try {
        await client.query('BEGIN');
        
        const results: unknown[] = [];
        const errors: unknown[] = [];
        
        for (let i = 0; i < questions.length; i++) {
          const q = questions[i];
          try {
            // Get category_id from topic
            const topicResult = await client.query(
              `SELECT category_id FROM topics WHERE id = $1`,
              [q.topic_id]
            );
            
            if (topicResult.rows.length === 0) {
              errors.push({ index: i, error: 'Topic not found' });
              continue;
            }
            
            const result = await client.query(
              `INSERT INTO questions 
               (topic_id, category_id, question_text, option_a, option_b, option_c, 
                option_d, option_e, correct_option, explanation, difficulty, cognitive_level, created_by)
               VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
               RETURNING id`,
              [
                q.topic_id,
                topicResult.rows[0].category_id,
                q.question_text,
                q.option_a,
                q.option_b,
                q.option_c,
                q.option_d,
                q.option_e,
                q.correct_option,
                q.explanation,
                q.difficulty || 'medium',
                q.cognitive_level || 'knowledge',
                req.user!.userId,
              ]
            );
            
            results.push(result.rows[0]);
          } catch (err: any) {
            errors.push({ index: i, error: err.message });
          }
        }
        
        await client.query('COMMIT');
        
        res.status(201).json({
          success: true,
          data: { imported: results.length, errors },
        });
      } catch (error) {
        await client.query('ROLLBACK');
        throw error;
      } finally {
        client.release();
      }
    } catch (error: any) {
      logger.error('Error bulk importing questions:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to import' });
    }
  }
);

export default router;
