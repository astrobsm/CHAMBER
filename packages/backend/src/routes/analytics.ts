import { Router, Request, Response, NextFunction } from 'express';
import { query as validQuery, validationResult } from 'express-validator';
import { authenticate, authorize } from '../middleware/auth.js';
import { PerformanceService } from '../services/performanceService.js';
import { query as dbQuery } from '../config/database.js';
import { UserRole } from '../types/index.js';
import { logger } from '../utils/logger.js';

const router = Router();
const performanceService = new PerformanceService();

const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * GET /api/analytics/my-performance
 * Get current student's comprehensive performance analytics
 */
router.get(
  '/my-performance',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const performance = await performanceService.calculateStudentPerformance(req.user!.userId);
      res.json({ success: true, data: performance });
    } catch (error) {
      logger.error('Error fetching performance:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch performance' });
    }
  }
);

/**
 * GET /api/analytics/my-ranking
 * Get student's anonymized comparative ranking
 */
router.get(
  '/my-ranking',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const ranking = await performanceService.getStudentRanking(req.user!.userId);
      res.json({ success: true, data: ranking });
    } catch (error) {
      logger.error('Error fetching ranking:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch ranking' });
    }
  }
);

/**
 * GET /api/analytics/my-weak-areas
 * Identify student's weak performance areas
 */
router.get(
  '/my-weak-areas',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const weakAreas = await performanceService.identifyWeakAreas(req.user!.userId);
      res.json({ success: true, data: weakAreas });
    } catch (error) {
      logger.error('Error identifying weak areas:', error);
      res.status(500).json({ success: false, message: 'Failed to identify weak areas' });
    }
  }
);

/**
 * GET /api/analytics/cohort
 * Get cohort analytics (Admin only)
 */
router.get(
  '/cohort',
  authenticate,
  authorize([UserRole.ADMIN]),
  [
    validQuery('rotation_id').optional().isUUID(),
    validQuery('level').optional().isIn(['surgery_1', 'surgery_2', 'surgery_3', 'surgery_4']),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { rotation_id, level } = req.query;
      
      let whereClause = 'WHERE 1=1';
      const params: unknown[] = [];
      let paramIndex = 1;
      
      if (rotation_id) {
        whereClause += ` AND sr.rotation_id = $${paramIndex++}`;
        params.push(rotation_id);
      }
      
      if (level) {
        whereClause += ` AND s.level = $${paramIndex++}`;
        params.push(level);
      }
      
      // Overall statistics
      const statsResult = await dbQuery(
        `SELECT 
           COUNT(DISTINCT s.id) as total_students,
           AVG(ps.overall_score) as avg_score,
           MIN(ps.overall_score) as min_score,
           MAX(ps.overall_score) as max_score,
           STDDEV(ps.overall_score) as score_stddev,
           COUNT(*) FILTER (WHERE ps.overall_score >= 75) as cleared_count,
           COUNT(*) FILTER (WHERE ps.overall_score < 75) as not_cleared_count
         FROM students s
         LEFT JOIN student_rotations sr ON s.id = sr.student_id
         LEFT JOIN performance_summaries ps ON s.id = ps.student_id
         ${whereClause}`,
        params
      );
      
      // Performance distribution
      const distributionResult = await dbQuery(
        `SELECT 
           CASE 
             WHEN ps.overall_score >= 90 THEN '90-100'
             WHEN ps.overall_score >= 80 THEN '80-89'
             WHEN ps.overall_score >= 70 THEN '70-79'
             WHEN ps.overall_score >= 60 THEN '60-69'
             WHEN ps.overall_score >= 50 THEN '50-59'
             ELSE 'Below 50'
           END as range,
           COUNT(*) as count
         FROM students s
         LEFT JOIN student_rotations sr ON s.id = sr.student_id
         LEFT JOIN performance_summaries ps ON s.id = ps.student_id
         ${whereClause} AND ps.overall_score IS NOT NULL
         GROUP BY range
         ORDER BY range DESC`,
        params
      );
      
      // Attendance compliance
      const attendanceResult = await dbQuery(
        `SELECT 
           ass.attendance_type,
           COUNT(DISTINCT ass.id) as total_sessions,
           COUNT(ar.id) FILTER (WHERE ar.status = 'present') as present_count,
           COUNT(ar.id) FILTER (WHERE ar.status = 'absent') as absent_count
         FROM attendance_sessions ass
         LEFT JOIN attendance_records ar ON ass.id = ar.session_id
         ${rotation_id ? `WHERE ass.rotation_id = $1` : ''}
         GROUP BY ass.attendance_type`,
        rotation_id ? [rotation_id] : []
      );
      
      res.json({
        success: true,
        data: {
          statistics: statsResult.rows[0],
          distribution: distributionResult.rows,
          attendance: attendanceResult.rows,
        },
      });
    } catch (error) {
      logger.error('Error fetching cohort analytics:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch analytics' });
    }
  }
);

/**
 * GET /api/analytics/topic-performance
 * Get topic-wise performance heatmap (Admin only)
 */
router.get(
  '/topic-performance',
  authenticate,
  authorize([UserRole.ADMIN]),
  [validQuery('category_id').optional().isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { category_id } = req.query;
      
      const result = await dbQuery(
        `SELECT 
           t.id as topic_id,
           t.name as topic_name,
           COUNT(ta.id) as total_answers,
           COUNT(ta.id) FILTER (WHERE ta.is_correct = true) as correct_answers,
           ROUND(AVG(CASE WHEN ta.is_correct THEN 100 ELSE 0 END), 2) as accuracy_rate
         FROM topics t
         LEFT JOIN questions q ON t.id = q.topic_id
         LEFT JOIN test_answers ta ON q.id = ta.question_id
         WHERE t.is_active = true ${category_id ? 'AND t.category_id = $1' : ''}
         GROUP BY t.id, t.name
         ORDER BY accuracy_rate ASC NULLS LAST`,
        category_id ? [category_id] : []
      );
      
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching topic performance:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch data' });
    }
  }
);

/**
 * GET /api/analytics/test-validity
 * Get test validity metrics (Admin only)
 */
router.get(
  '/test-validity',
  authenticate,
  authorize([UserRole.ADMIN]),
  async (req: Request, res: Response) => {
    try {
      // Question difficulty analysis
      const difficultyResult = await dbQuery(
        `SELECT 
           q.id as question_id,
           q.question_text,
           q.difficulty,
           COUNT(ta.id) as times_answered,
           COUNT(ta.id) FILTER (WHERE ta.is_correct = true) as correct_count,
           ROUND(AVG(CASE WHEN ta.is_correct THEN 100 ELSE 0 END), 2) as actual_difficulty
         FROM questions q
         LEFT JOIN test_answers ta ON q.id = ta.question_id
         WHERE q.is_active = true
         GROUP BY q.id
         HAVING COUNT(ta.id) >= 10
         ORDER BY actual_difficulty`
      );
      
      // Test completion statistics
      const completionResult = await dbQuery(
        `SELECT 
           test_type,
           COUNT(*) as total_tests,
           COUNT(*) FILTER (WHERE status = 'completed') as completed,
           COUNT(*) FILTER (WHERE status = 'abandoned') as abandoned,
           COUNT(*) FILTER (WHERE status = 'invalidated') as invalidated,
           AVG(score) FILTER (WHERE status = 'completed') as avg_score,
           AVG(EXTRACT(EPOCH FROM (completed_at - started_at)) / 60) FILTER (WHERE status = 'completed') as avg_duration_minutes
         FROM tests
         GROUP BY test_type`
      );
      
      // Suspicious activity report
      const activityResult = await dbQuery(
        `SELECT 
           activity_type,
           COUNT(*) as count,
           COUNT(DISTINCT test_id) as affected_tests
         FROM test_activity_logs
         GROUP BY activity_type
         ORDER BY count DESC`
      );
      
      res.json({
        success: true,
        data: {
          questionAnalysis: difficultyResult.rows,
          testCompletion: completionResult.rows,
          suspiciousActivity: activityResult.rows,
        },
      });
    } catch (error) {
      logger.error('Error fetching test validity:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch data' });
    }
  }
);

export default router;
