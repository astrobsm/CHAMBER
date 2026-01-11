import { Router, Request, Response, NextFunction } from 'express';
import { body, param, query, validationResult } from 'express-validator';
import multer from 'multer';
import path from 'path';
import { authenticate, authorize } from '../middleware/auth.js';
import { query as dbQuery, getClient } from '../config/database.js';
import { UserRole, CMEContentType } from '../types/index.js';
import { logger } from '../utils/logger.js';

const router = Router();

// Configure multer for file uploads
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'uploads/cme/');
  },
  filename: (req, file, cb) => {
    const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
    cb(null, uniqueSuffix + path.extname(file.originalname));
  },
});

const upload = multer({
  storage,
  limits: { fileSize: 100 * 1024 * 1024 }, // 100MB limit
  fileFilter: (req, file, cb) => {
    const allowedTypes = ['.pdf', '.mp4', '.pptx', '.ppt', '.docx', '.doc'];
    const ext = path.extname(file.originalname).toLowerCase();
    if (allowedTypes.includes(ext)) {
      cb(null, true);
    } else {
      cb(new Error('Invalid file type'));
    }
  },
});

const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * GET /api/cme
 * List CME content for student's level
 */
router.get('/', authenticate, async (req: Request, res: Response) => {
  try {
    let categoryFilter = '';
    const params: unknown[] = [];
    
    if (req.user!.role === UserRole.STUDENT) {
      // Get student's level and filter CME content
      const studentResult = await dbQuery(
        `SELECT s.level FROM students s WHERE s.user_id = $1`,
        [req.user!.userId]
      );
      
      if (studentResult.rows.length > 0) {
        categoryFilter = `AND rc.level = $1`;
        params.push(studentResult.rows[0].level);
      }
    }
    
    // Get student ID for completion check
    const studentIdResult = await dbQuery(
      `SELECT id FROM students WHERE user_id = $1`,
      [req.user!.userId]
    );
    const studentId = studentIdResult.rows.length > 0 ? studentIdResult.rows[0].id : null;
    
    const result = await dbQuery(
      `SELECT c.*, rc.name as category_name, rc.level,
              (SELECT COUNT(*) FROM cme_completions cc WHERE cc.cme_content_id = c.id AND cc.student_id = $${params.length + 1}) as completed
       FROM cme_contents c
       JOIN rotation_categories rc ON c.category_id = rc.id
       WHERE c.is_active = true ${categoryFilter}
       ORDER BY c.created_at DESC`,
      [...params, studentId]
    );
    
    res.json({ success: true, data: result.rows });
  } catch (error) {
    logger.error('Error listing CME content:', error);
    res.status(500).json({ success: false, message: 'Failed to list content' });
  }
});

// ============================================================================
// STUDENT CME ENDPOINTS (Must be BEFORE /:id routes to avoid conflict)
// ============================================================================

/**
 * GET /api/cme/articles
 * Get all CME articles for student
 */
router.get('/articles', authenticate, async (req: Request, res: Response) => {
  try {
    const { category_id } = req.query;
    
    let whereClause = 'WHERE a.is_published = true';
    const params: unknown[] = [];
    let paramIndex = 1;
    
    // If student, filter by their level
    if (req.user!.role === UserRole.STUDENT) {
      const studentResult = await dbQuery(
        `SELECT s.level FROM students s WHERE s.user_id = $1`,
        [req.user!.userId]
      );
      
      if (studentResult.rows.length > 0) {
        whereClause += ` AND rc.level = $${paramIndex++}`;
        params.push(studentResult.rows[0].level);
      }
    }
    
    if (category_id) {
      whereClause += ` AND a.category_id = $${paramIndex++}`;
      params.push(category_id);
    }
    
    const result = await dbQuery(
      `SELECT a.*, 
              rc.name as category_name, rc.level,
              t.name as topic_name,
              (SELECT COUNT(*) FROM user_study_progress usp 
               JOIN students s ON usp.student_id = s.id 
               WHERE usp.article_id = a.id AND s.user_id = $${paramIndex}) > 0 as has_progress,
              (SELECT usp.is_fully_completed FROM user_study_progress usp 
               JOIN students s ON usp.student_id = s.id 
               WHERE usp.article_id = a.id AND s.user_id = $${paramIndex} LIMIT 1) as is_completed
       FROM cme_articles a
       LEFT JOIN rotation_categories rc ON a.category_id = rc.id
       LEFT JOIN topics t ON a.topic_id = t.id
       ${whereClause}
       ORDER BY a.created_at DESC`,
      [...params, req.user!.userId]
    );
    
    // Get summary stats
    const statsResult = await dbQuery(
      `SELECT 
         COUNT(DISTINCT usp.article_id) as articles_started,
         COUNT(DISTINCT CASE WHEN usp.is_fully_completed THEN usp.article_id END) as articles_completed,
         COALESCE(SUM(usp.cme_credits_earned), 0) as total_credits
       FROM user_study_progress usp
       JOIN students s ON usp.student_id = s.id
       WHERE s.user_id = $1`,
      [req.user!.userId]
    );
    
    res.json({ 
      success: true, 
      data: { 
        articles: result.rows,
        summary: statsResult.rows[0]
      } 
    });
  } catch (error) {
    logger.error('Error fetching CME articles:', error);
    res.status(500).json({ success: false, message: 'Failed to fetch articles' });
  }
});

/**
 * GET /api/cme/student/progress
 * Get student's study progress records
 */
router.get(
  '/student/progress',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT usp.*,
                a.title as article_title,
                a.cme_credits,
                a.estimated_reading_minutes,
                rc.name as category_name,
                t.name as topic_name
         FROM user_study_progress usp
         JOIN students s ON usp.student_id = s.id
         JOIN cme_articles a ON usp.article_id = a.id
         LEFT JOIN rotation_categories rc ON a.category_id = rc.id
         LEFT JOIN topics t ON a.topic_id = t.id
         WHERE s.user_id = $1
         ORDER BY usp.last_accessed_at DESC NULLS LAST`,
        [req.user!.userId]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching student progress:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch progress' });
    }
  }
);

/**
 * GET /api/cme/student/summary
 * Get student's CME completion summary
 */
router.get(
  '/student/summary',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT 
           (SELECT COUNT(*) FROM user_study_progress usp 
            JOIN students s ON usp.student_id = s.id WHERE s.user_id = $1) as articles_started,
           (SELECT COUNT(*) FROM user_study_progress usp 
            JOIN students s ON usp.student_id = s.id 
            WHERE s.user_id = $1 AND usp.is_fully_completed = true) as articles_completed,
           (SELECT COALESCE(SUM(usp.cme_credits_earned), 0) FROM user_study_progress usp 
            JOIN students s ON usp.student_id = s.id WHERE s.user_id = $1) as total_credits,
           (SELECT COALESCE(SUM(usp.time_spent_seconds) / 3600.0, 0) FROM user_study_progress usp 
            JOIN students s ON usp.student_id = s.id WHERE s.user_id = $1) as total_hours,
           (SELECT COALESCE(AVG(usp.assessment_score), 0) FROM user_study_progress usp 
            JOIN students s ON usp.student_id = s.id 
            WHERE s.user_id = $1 AND usp.assessment_completed = true) as avg_assessment_score`,
        [req.user!.userId]
      );
      
      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error fetching student summary:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch summary' });
    }
  }
);

// ============================================================================
// END STUDENT CME ENDPOINTS
// ============================================================================

// ============================================================================
// ADMIN CME MANAGEMENT ENDPOINTS (Must be BEFORE /:id routes)
// ============================================================================

/**
 * GET /api/cme/admin/stats
 * Get overall CME statistics
 */
router.get(
  '/admin/stats',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (req: Request, res: Response) => {
    try {
      const stats = await dbQuery(
        `SELECT 
            (SELECT COUNT(*) FROM cme_articles WHERE is_published = true) as total_articles,
            (SELECT COUNT(DISTINCT student_id) FROM user_study_progress) as total_students_engaged,
            (SELECT COUNT(*) FROM user_study_progress WHERE is_fully_completed = true) as total_completions,
            (SELECT COALESCE(SUM(cme_credits_earned), 0) FROM user_study_progress) as total_credits_awarded,
            (SELECT COALESCE(AVG(assessment_score), 0) FROM user_study_progress WHERE assessment_completed = true) as avg_assessment_score,
            (SELECT COALESCE(SUM(time_spent_seconds) / 3600.0, 0) FROM user_study_progress) as total_study_hours,
            (SELECT COUNT(*) FROM study_session_logs WHERE session_start >= NOW() - INTERVAL '24 hours') as sessions_last_24h,
            (SELECT COUNT(*) FROM study_session_logs WHERE session_start >= NOW() - INTERVAL '7 days') as sessions_last_7days`
      );
      
      res.json({ success: true, data: stats.rows[0] });
    } catch (error) {
      logger.error('Error fetching CME stats:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch stats' });
    }
  }
);

/**
 * GET /api/cme/admin/articles
 * Get all CME articles for admin
 */
router.get(
  '/admin/articles',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (req: Request, res: Response) => {
    try {
      const { category_id, topic_id } = req.query;
      
      let whereClause = 'WHERE 1=1';
      const params: unknown[] = [];
      let paramIndex = 1;
      
      if (category_id) {
        whereClause += ` AND a.category_id = $${paramIndex++}`;
        params.push(category_id);
      }
      
      if (topic_id) {
        whereClause += ` AND a.topic_id = $${paramIndex++}`;
        params.push(topic_id);
      }
      
      const result = await dbQuery(
        `SELECT a.*, 
                rc.name as category_name, 
                rc.level,
                t.name as topic_name,
                (SELECT COUNT(*) FROM user_study_progress usp WHERE usp.article_id = a.id) as total_readers,
                (SELECT COUNT(*) FROM user_study_progress usp WHERE usp.article_id = a.id AND usp.is_fully_completed = true) as completed_readers,
                (SELECT AVG(usp.assessment_score) FROM user_study_progress usp WHERE usp.article_id = a.id AND usp.assessment_completed = true) as avg_assessment_score,
                (SELECT SUM(usp.time_spent_seconds) FROM user_study_progress usp WHERE usp.article_id = a.id) as total_study_time_seconds,
                (SELECT COUNT(*) FROM article_self_assessments asa WHERE asa.article_id = a.id) as total_questions
         FROM cme_articles a
         LEFT JOIN rotation_categories rc ON a.category_id = rc.id
         LEFT JOIN topics t ON a.topic_id = t.id
         ${whereClause}
         ORDER BY a.created_at DESC`,
        params
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching admin articles:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch articles' });
    }
  }
);

/**
 * GET /api/cme/admin/articles/:id/progress
 * Get all student progress for a specific article
 */
router.get(
  '/admin/articles/:id/progress',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      
      const result = await dbQuery(
        `SELECT usp.*,
                s.matriculation_number,
                s.first_name,
                s.last_name,
                u.email,
                s.level,
                (usp.time_spent_seconds / 60.0) as time_spent_minutes
         FROM user_study_progress usp
         JOIN students s ON usp.student_id = s.id
         JOIN users u ON s.user_id = u.id
         WHERE usp.article_id = $1
         ORDER BY usp.last_accessed_at DESC NULLS LAST`,
        [id]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching article progress:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch progress' });
    }
  }
);

/**
 * GET /api/cme/admin/students
 * Get all students with their CME study summary
 */
router.get(
  '/admin/students',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT 
            s.id as student_id,
            s.matriculation_number,
            s.first_name,
            s.last_name,
            u.email,
            s.level,
            COUNT(DISTINCT usp.article_id) as articles_started,
            COUNT(DISTINCT CASE WHEN usp.is_fully_completed THEN usp.article_id END) as articles_completed,
            COALESCE(SUM(usp.cme_credits_earned), 0) as total_credits,
            COALESCE(AVG(CASE WHEN usp.assessment_completed THEN usp.assessment_score END), 0) as avg_assessment_score,
            COALESCE(SUM(usp.time_spent_seconds), 0) as total_study_seconds,
            MAX(usp.last_accessed_at) as last_study_activity
         FROM students s
         JOIN users u ON s.user_id = u.id
         LEFT JOIN user_study_progress usp ON s.id = usp.student_id
         GROUP BY s.id, s.matriculation_number, s.first_name, s.last_name, u.email, s.level
         ORDER BY total_study_seconds DESC NULLS LAST`,
        []
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching student CME summary:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch students' });
    }
  }
);

/**
 * GET /api/cme/admin/students/:id/progress
 * Get detailed study progress for a specific student
 */
router.get(
  '/admin/students/:id/progress',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      
      const result = await dbQuery(
        `SELECT usp.*,
                a.title as article_title,
                a.estimated_reading_minutes,
                a.cme_credits,
                rc.name as category_name,
                t.name as topic_name,
                (usp.time_spent_seconds / 60.0) as time_spent_minutes,
                (SELECT COUNT(*) FROM article_self_assessments asa WHERE asa.article_id = a.id) as total_questions,
                (SELECT COUNT(*) FROM user_assessment_answers uaa WHERE uaa.progress_id = usp.id AND uaa.is_correct = true) as correct_answers
         FROM user_study_progress usp
         JOIN cme_articles a ON usp.article_id = a.id
         LEFT JOIN rotation_categories rc ON a.category_id = rc.id
         LEFT JOIN topics t ON a.topic_id = t.id
         WHERE usp.student_id = $1
         ORDER BY usp.last_accessed_at DESC NULLS LAST`,
        [id]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching student progress:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch progress' });
    }
  }
);

/**
 * GET /api/cme/admin/study-sessions
 * Get recent study sessions for monitoring
 */
router.get(
  '/admin/study-sessions',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (req: Request, res: Response) => {
    try {
      const { limit = 50 } = req.query;
      
      const result = await dbQuery(
        `SELECT ssl.*,
                s.matriculation_number,
                s.first_name,
                s.last_name,
                a.title as article_title,
                (ssl.duration_seconds / 60.0) as duration_minutes
         FROM study_session_logs ssl
         JOIN students s ON ssl.student_id = s.id
         LEFT JOIN users u ON s.user_id = u.id
         JOIN cme_articles a ON ssl.article_id = a.id
         ORDER BY ssl.session_start DESC
         LIMIT $1`,
        [parseInt(limit as string)]
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching study sessions:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch sessions' });
    }
  }
);

/**
 * GET /api/cme/admin/assessment-results/:articleId
 * Get detailed assessment results for an article
 */
router.get(
  '/admin/assessment-results/:articleId',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('articleId').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { articleId } = req.params;
      
      // Get question-wise performance
      const questionStats = await dbQuery(
        `SELECT asa.id as question_id,
                asa.question_number,
                asa.question_text,
                asa.correct_option,
                COUNT(uaa.id) as total_attempts,
                COUNT(CASE WHEN uaa.is_correct THEN 1 END) as correct_attempts,
                ROUND(COUNT(CASE WHEN uaa.is_correct THEN 1 END)::numeric / NULLIF(COUNT(uaa.id), 0) * 100, 1) as correct_percentage
         FROM article_self_assessments asa
         LEFT JOIN user_assessment_answers uaa ON asa.id = uaa.question_id
         WHERE asa.article_id = $1
         GROUP BY asa.id, asa.question_number, asa.question_text, asa.correct_option
         ORDER BY asa.question_number`,
        [articleId]
      );
      
      // Get student-wise results
      const studentResults = await dbQuery(
        `SELECT 
            usp.id as progress_id,
            s.matriculation_number,
            s.first_name,
            s.last_name,
            usp.assessment_score,
            usp.assessment_completed_at,
            usp.assessment_attempts,
            (SELECT COUNT(*) FROM user_assessment_answers uaa WHERE uaa.progress_id = usp.id AND uaa.is_correct = true) as correct_count,
            (SELECT COUNT(*) FROM article_self_assessments asa WHERE asa.article_id = $1) as total_questions
         FROM user_study_progress usp
         JOIN students s ON usp.student_id = s.id
         WHERE usp.article_id = $1 AND usp.assessment_completed = true
         ORDER BY usp.assessment_score DESC`,
        [articleId]
      );
      
      res.json({ 
        success: true, 
        data: {
          questionStats: questionStats.rows,
          studentResults: studentResults.rows
        }
      });
    } catch (error) {
      logger.error('Error fetching assessment results:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch results' });
    }
  }
);

// ============================================================================
// END ADMIN CME MANAGEMENT ENDPOINTS
// ============================================================================

/**
 * POST /api/cme
 * Upload new CME content (Admin only)
 */
router.post(
  '/',
  authenticate,
  authorize([UserRole.ADMIN]),
  upload.single('file'),
  [
    body('title').isString().isLength({ min: 2, max: 200 }),
    body('description').optional().isString().isLength({ max: 1000 }),
    body('category_id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/),
    body('content_type').isIn(Object.values(CMEContentType)),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { title, description, category_id, content_type } = req.body;
      const file = req.file;
      
      if (!file && content_type !== 'video') {
        return res.status(400).json({ success: false, message: 'File required' });
      }
      
      const fileUrl = file ? `/uploads/cme/${file.filename}` : req.body.url;
      const fileSize = file ? file.size : null;
      
      const result = await dbQuery(
        `INSERT INTO cme_contents 
         (title, description, category_id, content_type, file_url, file_size, uploaded_by)
         VALUES ($1, $2, $3, $4, $5, $6, $7)
         RETURNING *`,
        [title, description, category_id, content_type, fileUrl, fileSize, req.user!.userId]
      );
      
      res.status(201).json({ success: true, data: result.rows[0] });
    } catch (error: any) {
      logger.error('Error uploading CME content:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to upload' });
    }
  }
);

/**
 * GET /api/cme/:id
 * Get CME content details
 */
router.get(
  '/:id',
  authenticate,
  [param('id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT c.*, rc.name as category_name,
                (SELECT COUNT(*) FROM cme_completions cc WHERE cc.cme_content_id = c.id AND cc.user_id = $2) > 0 as completed
         FROM cme_contents c
         JOIN rotation_categories rc ON c.category_id = rc.id
         WHERE c.id = $1`,
        [req.params.id, req.user!.userId]
      );
      
      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Content not found' });
      }
      
      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error fetching CME content:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch content' });
    }
  }
);

/**
 * POST /api/cme/:id/complete
 * Mark CME content as completed
 */
router.post(
  '/:id/complete',
  authenticate,
  authorize([UserRole.STUDENT]),
  [
    param('id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/),
    body('time_spent_minutes').optional().isInt({ min: 1 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { time_spent_minutes } = req.body;
      
      // Check if already completed
      const existing = await dbQuery(
        `SELECT id FROM cme_completions WHERE cme_content_id = $1 AND user_id = $2`,
        [req.params.id, req.user!.userId]
      );
      
      if (existing.rows.length > 0) {
        return res.json({ success: true, message: 'Already completed' });
      }
      
      const result = await dbQuery(
        `INSERT INTO cme_completions (cme_content_id, user_id, time_spent_minutes)
         VALUES ($1, $2, $3)
         RETURNING *`,
        [req.params.id, req.user!.userId, time_spent_minutes || null]
      );
      
      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error completing CME:', error);
      res.status(500).json({ success: false, message: 'Failed to complete' });
    }
  }
);

/**
 * GET /api/cme/my-progress
 * Get student's CME progress
 */
router.get(
  '/my/progress',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      // Get student's level
      const studentResult = await dbQuery(
        `SELECT s.level FROM students s WHERE s.user_id = $1`,
        [req.user!.userId]
      );
      
      if (studentResult.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }
      
      const level = studentResult.rows[0].level;
      
      // Get total and completed CME for student's level
      const result = await dbQuery(
        `SELECT 
           (SELECT COUNT(*) FROM cme_contents c 
            JOIN rotation_categories rc ON c.category_id = rc.id 
            WHERE c.is_active = true AND rc.level = $1) as total_content,
           (SELECT COUNT(*) FROM cme_completions cc 
            JOIN cme_contents c ON cc.cme_content_id = c.id
            JOIN rotation_categories rc ON c.category_id = rc.id
            WHERE cc.user_id = $2 AND rc.level = $1) as completed_content,
           (SELECT SUM(time_spent_minutes) FROM cme_completions cc WHERE cc.user_id = $2) as total_time_spent`,
        [level, req.user!.userId]
      );
      
      const data = result.rows[0];
      const completionRate = data.total_content > 0 
        ? (data.completed_content / data.total_content) * 100 
        : 0;
      
      res.json({
        success: true,
        data: {
          ...data,
          completion_rate: Math.round(completionRate * 100) / 100,
        },
      });
    } catch (error) {
      logger.error('Error fetching CME progress:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch progress' });
    }
  }
);

/**
 * DELETE /api/cme/:id
 * Delete CME content (Admin only)
 */
router.delete(
  '/:id',
  authenticate,
  authorize([UserRole.ADMIN]),
  [param('id').matches(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `UPDATE cme_contents SET is_active = false WHERE id = $1 RETURNING id`,
        [req.params.id]
      );
      
      if (result.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Content not found' });
      }
      
      res.json({ success: true, message: 'Content deleted' });
    } catch (error) {
      logger.error('Error deleting CME:', error);
      res.status(500).json({ success: false, message: 'Failed to delete' });
    }
  }
);

export default router;
