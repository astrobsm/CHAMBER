import { Router, Request, Response, NextFunction } from 'express';
import { body, param, query, validationResult } from 'express-validator';
import { authenticate, authorize } from '../middleware/auth.js';
import { TestEngineService } from '../services/testEngineService.js';
import { UserRole, TestType } from '../types/index.js';
import { logger } from '../utils/logger.js';
import { query as dbQuery } from '../config/database.js';

const router = Router();
const testService = new TestEngineService();

// Validation middleware
const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * GET /api/tests
 * List all tests (admin/assessor)
 */
router.get(
  '/',
  authenticate,
  authorize([UserRole.ADMIN, UserRole.ASSESSOR]),
  async (req: Request, res: Response) => {
    try {
      const { rotation_id } = req.query;
      
      let queryText = `
        SELECT t.*, 
               s.first_name || ' ' || s.last_name as student_name,
               r.name as rotation_name,
               rc.name as category_name
        FROM tests t
        JOIN students s ON t.student_id = s.id
        JOIN rotations r ON t.rotation_id = r.id
        JOIN rotation_categories rc ON r.category_id = rc.id
      `;
      const params: any[] = [];
      
      if (rotation_id) {
        queryText += ` WHERE t.rotation_id = $1`;
        params.push(rotation_id);
      }
      
      queryText += ` ORDER BY t.started_at DESC NULLS LAST, t.created_at DESC LIMIT 100`;
      
      const result = await dbQuery(queryText, params);
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching tests:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch tests' });
    }
  }
);

/**
 * POST /api/tests/start
 * Start a new test
 */
router.post(
  '/start',
  authenticate,
  authorize([UserRole.STUDENT]),
  [
    body('rotation_id').isUUID(),
    body('test_type').isIn(Object.values(TestType)),
    body('device_fingerprint').optional().isString(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { rotation_id, test_type, device_fingerprint } = req.body;

      const result = await testService.startTest(
        req.user!.userId,
        rotation_id,
        test_type,
        device_fingerprint,
        req.get('User-Agent'),
        req.ip
      );

      res.json({ success: true, data: result });
    } catch (error: any) {
      logger.error('Error starting test:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to start test' });
    }
  }
);

// ============================================================================
// STUDENT ROUTES - Must be defined BEFORE /:testId routes to avoid conflict
// ============================================================================

/**
 * GET /api/tests/my-tests
 * Get all tests for current student
 */
router.get(
  '/my-tests',
  authenticate,
  authorize([UserRole.STUDENT]),
  [query('rotation_id').optional().isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const tests = await testService.getStudentTests(
        req.user!.userId,
        req.query.rotation_id as string | undefined
      );
      res.json({ success: true, data: tests });
    } catch (error) {
      logger.error('Error fetching tests:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch tests' });
    }
  }
);

/**
 * GET /api/tests/my-attempts
 * Get test attempts for current student
 */
router.get(
  '/my-attempts',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const result = await dbQuery(
        `SELECT t.id, t.test_type, t.status, t.started_at, t.completed_at, t.score,
                t.passed, t.questions_answered, t.total_questions, t.time_spent_seconds,
                r.name as rotation_name, rc.name as category_name
         FROM tests t
         JOIN students s ON t.student_id = s.id
         JOIN rotations r ON t.rotation_id = r.id
         JOIN rotation_categories rc ON r.category_id = rc.id
         WHERE s.user_id = $1
         ORDER BY t.started_at DESC NULLS LAST, t.created_at DESC`,
        [req.user!.userId]
      );
      res.json({ success: true, data: result.rows });
    } catch (error) {
      logger.error('Error fetching test attempts:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch attempts' });
    }
  }
);

/**
 * GET /api/tests/available
 * Get available tests for student
 */
router.get(
  '/available',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const tests = await testService.getAvailableTests(req.user!.userId);
      res.json({ success: true, data: tests });
    } catch (error) {
      logger.error('Error fetching available tests:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch available tests' });
    }
  }
);

// ============================================================================
// END STUDENT ROUTES
// ============================================================================

/**
 * POST /api/tests/:testId/answer
 * Submit an answer
 */
router.post(
  '/:testId/answer',
  authenticate,
  authorize([UserRole.STUDENT]),
  [
    param('testId').isUUID(),
    body('question_id').isUUID(),
    body('selected_option').isIn(['A', 'B', 'C', 'D', 'E']),
    body('time_spent_seconds').isInt({ min: 0 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { testId } = req.params;
      const { question_id, selected_option, time_spent_seconds } = req.body;

      // Get student ID from user
      const studentResult = await dbQuery(
        'SELECT id FROM students WHERE user_id = $1',
        [req.user!.userId]
      );
      if (studentResult.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }
      const studentId = studentResult.rows[0].id;

      const result = await testService.submitAnswer(studentId, {
        testId,
        questionId: question_id,
        selectedOption: selected_option,
        timeSpentSeconds: time_spent_seconds
      });

      res.json({ success: true, data: result });
    } catch (error: any) {
      logger.error('Error submitting answer:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to submit answer' });
    }
  }
);

/**
 * POST /api/tests/:testId/complete
 * Complete/submit the test
 */
router.post(
  '/:testId/complete',
  authenticate,
  authorize([UserRole.STUDENT]),
  [param('testId').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      // Get student ID from user
      const studentResult = await dbQuery(
        'SELECT id FROM students WHERE user_id = $1',
        [req.user!.userId]
      );
      if (studentResult.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }
      const studentId = studentResult.rows[0].id;

      const result = await testService.submitTest(studentId, req.params.testId);
      res.json({ success: true, data: result });
    } catch (error: any) {
      logger.error('Error completing test:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to complete test' });
    }
  }
);

/**
 * POST /api/tests/:testId/activity
 * Log suspicious activity
 */
router.post(
  '/:testId/activity',
  authenticate,
  authorize([UserRole.STUDENT]),
  [
    param('testId').isUUID(),
    body('activity_type').isIn([
      'tab_switch', 'focus_lost', 'copy_attempt', 'paste_attempt',
      'screenshot_attempt', 'resize_attempt', 'devtools_open',
    ]),
    body('details').optional().isObject(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { testId } = req.params;
      const { activity_type, details } = req.body;

      // Get student ID from user
      const studentResult = await dbQuery(
        'SELECT id FROM students WHERE user_id = $1',
        [req.user!.userId]
      );
      if (studentResult.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }
      const studentId = studentResult.rows[0].id;

      await testService.logActivity(studentId, {
        testId,
        activityType: activity_type,
        activityData: details
      });
      res.json({ success: true, message: 'Activity logged' });
    } catch (error) {
      logger.error('Error logging activity:', error);
      res.status(500).json({ success: false, message: 'Failed to log activity' });
    }
  }
);

/**
 * GET /api/tests/:testId/status
 * Get current test status
 */
router.get(
  '/:testId/status',
  authenticate,
  authorize([UserRole.STUDENT]),
  [param('testId').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      // Get test details
      const testResult = await dbQuery(
        `SELECT t.*, s.user_id 
         FROM tests t 
         JOIN students s ON t.student_id = s.id 
         WHERE t.id = $1 AND s.user_id = $2`,
        [req.params.testId, req.user!.userId]
      );

      if (testResult.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Test not found' });
      }

      const test = testResult.rows[0];
      const startTime = new Date(test.started_at);
      const elapsed = (Date.now() - startTime.getTime()) / 1000;
      const timeRemaining = Math.max(0, test.duration_minutes * 60 - elapsed);

      res.json({
        success: true,
        data: {
          testId: test.id,
          status: test.status,
          questionsAnswered: test.questions_answered,
          totalQuestions: test.total_questions,
          timeRemaining: Math.floor(timeRemaining),
          startedAt: test.started_at,
        },
      });
    } catch (error) {
      logger.error('Error fetching test status:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch status' });
    }
  }
);

/**
 * GET /api/tests/:testId/results
 * Get test results (after completion)
 */
router.get(
  '/:testId/results',
  authenticate,
  authorize([UserRole.STUDENT]),
  [param('testId').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const results = await testService.getTestResults(req.params.testId, req.user!.userId);
      res.json({ success: true, data: results });
    } catch (error: any) {
      logger.error('Error fetching test results:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to fetch results' });
    }
  }
);

export default router;
