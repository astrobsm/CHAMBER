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

// ============================================================================
// ARTICLE ENDPOINTS
// ============================================================================

/**
 * GET /api/study/articles
 * List all CME articles for student's level
 */
router.get('/articles', authenticate, async (req: Request, res: Response) => {
  try {
    let studentId = null;
    let levelFilter = '';
    const params: unknown[] = [];

    if (req.user!.role === UserRole.STUDENT) {
      const studentResult = await dbQuery(
        `SELECT s.id, s.level FROM students s WHERE s.user_id = $1`,
        [req.user!.userId]
      );
      
      if (studentResult.rows.length > 0) {
        studentId = studentResult.rows[0].id;
        levelFilter = `AND rc.level = $1`;
        params.push(studentResult.rows[0].level);
      }
    }

    const result = await dbQuery(
      `SELECT 
        a.id, a.title, a.subtitle, a.abstract, a.authors, 
        a.cme_credits, a.estimated_reading_minutes, a.difficulty_level,
        a.cover_image_url, a.publish_date,
        t.id as topic_id, t.name as topic_name,
        rc.id as category_id, rc.name as category_name, rc.level,
        (SELECT COUNT(*) FROM article_sections s WHERE s.article_id = a.id) as section_count,
        (SELECT COUNT(*) FROM article_self_assessments sa WHERE sa.article_id = a.id) as question_count,
        CASE WHEN usp.id IS NOT NULL THEN true ELSE false END as started,
        COALESCE(usp.reading_progress_percent, 0) as reading_progress,
        COALESCE(usp.is_fully_completed, false) as completed,
        usp.assessment_score,
        usp.cme_credits_earned
       FROM cme_articles a
       JOIN topics t ON a.topic_id = t.id
       JOIN rotation_categories rc ON a.category_id = rc.id
       LEFT JOIN user_study_progress usp ON a.id = usp.article_id AND usp.student_id = $${params.length + 1}
       WHERE a.is_published = true ${levelFilter}
       ORDER BY t.name`,
      [...params, studentId]
    );

    // Calculate overall progress
    const totalArticles = result.rows.length;
    const completedArticles = result.rows.filter((a: any) => a.completed).length;
    const totalCredits = result.rows.reduce((sum: number, a: any) => sum + parseFloat(a.cme_credits || 0), 0);
    const earnedCredits = result.rows.reduce((sum: number, a: any) => sum + parseFloat(a.cme_credits_earned || 0), 0);

    res.json({
      success: true,
      data: {
        articles: result.rows,
        summary: {
          totalArticles,
          completedArticles,
          progressPercent: totalArticles > 0 ? Math.round((completedArticles / totalArticles) * 100) : 0,
          totalCredits,
          earnedCredits
        }
      }
    });
  } catch (error) {
    logger.error('Error listing study articles:', error);
    res.status(500).json({ success: false, message: 'Failed to list articles' });
  }
});

/**
 * GET /api/study/articles/:id
 * Get full article content with sections
 */
router.get('/articles/:id', authenticate, param('id').isUUID(), validate, async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    let studentId = null;

    if (req.user!.role === UserRole.STUDENT) {
      const studentResult = await dbQuery(
        `SELECT id FROM students WHERE user_id = $1`,
        [req.user!.userId]
      );
      if (studentResult.rows.length > 0) {
        studentId = studentResult.rows[0].id;
      }
    }

    // Get article details
    const articleResult = await dbQuery(
      `SELECT 
        a.*, t.name as topic_name, rc.name as category_name, rc.level
       FROM cme_articles a
       JOIN topics t ON a.topic_id = t.id
       JOIN rotation_categories rc ON a.category_id = rc.id
       WHERE a.id = $1 AND a.is_published = true`,
      [id]
    );

    if (articleResult.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Article not found' });
    }

    // Get sections
    const sectionsResult = await dbQuery(
      `SELECT id, section_type, section_order, title, content, is_expandable
       FROM article_sections
       WHERE article_id = $1
       ORDER BY section_order`,
      [id]
    );

    // Get references
    const referencesResult = await dbQuery(
      `SELECT reference_number, citation, doi, pubmed_id, url
       FROM article_references
       WHERE article_id = $1
       ORDER BY reference_number`,
      [id]
    );

    // Get user progress if student
    let progress = null;
    if (studentId) {
      const progressResult = await dbQuery(
        `SELECT * FROM user_study_progress WHERE student_id = $1 AND article_id = $2`,
        [studentId, id]
      );
      progress = progressResult.rows[0] || null;

      // Create or update progress record
      if (!progress) {
        await dbQuery(
          `INSERT INTO user_study_progress (student_id, article_id, started_at, last_accessed_at)
           VALUES ($1, $2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
           ON CONFLICT (student_id, article_id) DO UPDATE SET last_accessed_at = CURRENT_TIMESTAMP
           RETURNING *`,
          [studentId, id]
        );
      } else {
        await dbQuery(
          `UPDATE user_study_progress SET last_accessed_at = CURRENT_TIMESTAMP WHERE id = $1`,
          [progress.id]
        );
      }
    }

    res.json({
      success: true,
      data: {
        article: articleResult.rows[0],
        sections: sectionsResult.rows,
        references: referencesResult.rows,
        progress
      }
    });
  } catch (error) {
    logger.error('Error getting article:', error);
    res.status(500).json({ success: false, message: 'Failed to get article' });
  }
});

/**
 * POST /api/study/articles/:id/progress
 * Update reading progress
 */
router.post(
  '/articles/:id/progress',
  authenticate,
  authorize([UserRole.STUDENT]),
  param('id').isUUID(),
  body('progress_percent').isFloat({ min: 0, max: 100 }),
  body('time_spent_seconds').optional().isInt({ min: 0 }),
  body('current_section_id').optional().isUUID(),
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      const { progress_percent, time_spent_seconds, current_section_id } = req.body;

      const studentResult = await dbQuery(
        `SELECT id FROM students WHERE user_id = $1`,
        [req.user!.userId]
      );

      if (studentResult.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }

      const studentId = studentResult.rows[0].id;
      const readingCompleted = progress_percent >= 100;

      const result = await dbQuery(
        `INSERT INTO user_study_progress 
          (student_id, article_id, started_at, last_accessed_at, reading_progress_percent, 
           time_spent_seconds, current_section_id, reading_completed, reading_completed_at)
         VALUES ($1, $2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, $3, $4, $5, $6, 
                 CASE WHEN $6 THEN CURRENT_TIMESTAMP ELSE NULL END)
         ON CONFLICT (student_id, article_id) 
         DO UPDATE SET 
           last_accessed_at = CURRENT_TIMESTAMP,
           reading_progress_percent = GREATEST(user_study_progress.reading_progress_percent, $3),
           time_spent_seconds = user_study_progress.time_spent_seconds + COALESCE($4, 0),
           current_section_id = COALESCE($5, user_study_progress.current_section_id),
           reading_completed = user_study_progress.reading_completed OR $6,
           reading_completed_at = CASE 
             WHEN NOT user_study_progress.reading_completed AND $6 THEN CURRENT_TIMESTAMP 
             ELSE user_study_progress.reading_completed_at 
           END,
           updated_at = CURRENT_TIMESTAMP
         RETURNING *`,
        [studentId, id, progress_percent, time_spent_seconds || 0, current_section_id, readingCompleted]
      );

      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error updating progress:', error);
      res.status(500).json({ success: false, message: 'Failed to update progress' });
    }
  }
);

// ============================================================================
// SELF-ASSESSMENT ENDPOINTS
// ============================================================================

/**
 * GET /api/study/articles/:id/assessment
 * Get self-assessment questions for an article
 */
router.get('/articles/:id/assessment', authenticate, param('id').isUUID(), validate, async (req: Request, res: Response) => {
  try {
    const { id } = req.params;

    // Get questions (without correct answers for students taking the test)
    const questionsResult = await dbQuery(
      `SELECT id, question_number, question_text, option_a, option_b, option_c, option_d, option_e, difficulty
       FROM article_self_assessments
       WHERE article_id = $1
       ORDER BY question_number`,
      [id]
    );

    // Get article info for context
    const articleResult = await dbQuery(
      `SELECT id, title, topic_id FROM cme_articles WHERE id = $1`,
      [id]
    );

    res.json({
      success: true,
      data: {
        article: articleResult.rows[0],
        questions: questionsResult.rows,
        totalQuestions: questionsResult.rows.length
      }
    });
  } catch (error) {
    logger.error('Error getting assessment:', error);
    res.status(500).json({ success: false, message: 'Failed to get assessment' });
  }
});

/**
 * POST /api/study/articles/:id/assessment/submit
 * Submit assessment answers
 */
router.post(
  '/articles/:id/assessment/submit',
  authenticate,
  authorize([UserRole.STUDENT]),
  param('id').isUUID(),
  body('answers').isArray(),
  body('answers.*.question_id').isUUID(),
  body('answers.*.selected_option').isIn(['A', 'B', 'C', 'D', 'E']),
  validate,
  async (req: Request, res: Response) => {
    const client = await getClient();
    try {
      await client.query('BEGIN');
      
      const { id } = req.params;
      const { answers } = req.body;

      const studentResult = await client.query(
        `SELECT id FROM students WHERE user_id = $1`,
        [req.user!.userId]
      );

      if (studentResult.rows.length === 0) {
        await client.query('ROLLBACK');
        return res.status(404).json({ success: false, message: 'Student not found' });
      }

      const studentId = studentResult.rows[0].id;

      // Get or create progress record
      let progressResult = await client.query(
        `SELECT id, assessment_attempts FROM user_study_progress 
         WHERE student_id = $1 AND article_id = $2`,
        [studentId, id]
      );

      let progressId: string;
      let attemptNumber: number;

      if (progressResult.rows.length === 0) {
        const newProgress = await client.query(
          `INSERT INTO user_study_progress (student_id, article_id, started_at, assessment_started_at, assessment_attempts)
           VALUES ($1, $2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1)
           RETURNING id, assessment_attempts`,
          [studentId, id]
        );
        progressId = newProgress.rows[0].id;
        attemptNumber = 1;
      } else {
        progressId = progressResult.rows[0].id;
        attemptNumber = (progressResult.rows[0].assessment_attempts || 0) + 1;
        await client.query(
          `UPDATE user_study_progress 
           SET assessment_started_at = COALESCE(assessment_started_at, CURRENT_TIMESTAMP),
               assessment_attempts = $1
           WHERE id = $2`,
          [attemptNumber, progressId]
        );
      }

      // Get correct answers
      const correctAnswersResult = await client.query(
        `SELECT id, correct_option, explanation, reference_numbers
         FROM article_self_assessments WHERE article_id = $1`,
        [id]
      );

      const correctAnswersMap = new Map(
        correctAnswersResult.rows.map((q: any) => [q.id, q])
      );

      // Process answers and calculate score
      let correctCount = 0;
      const results: any[] = [];

      for (const answer of answers) {
        const correctAnswer = correctAnswersMap.get(answer.question_id);
        if (correctAnswer) {
          const isCorrect = answer.selected_option === correctAnswer.correct_option;
          if (isCorrect) correctCount++;

          // Save answer
          await client.query(
            `INSERT INTO user_assessment_answers 
              (progress_id, question_id, selected_option, is_correct, attempt_number)
             VALUES ($1, $2, $3, $4, $5)
             ON CONFLICT (progress_id, question_id, attempt_number) 
             DO UPDATE SET selected_option = $3, is_correct = $4, answered_at = CURRENT_TIMESTAMP`,
            [progressId, answer.question_id, answer.selected_option, isCorrect, attemptNumber]
          );

          results.push({
            question_id: answer.question_id,
            selected_option: answer.selected_option,
            correct_option: correctAnswer.correct_option,
            is_correct: isCorrect,
            explanation: correctAnswer.explanation,
            reference_numbers: correctAnswer.reference_numbers
          });
        }
      }

      const totalQuestions = correctAnswersResult.rows.length;
      const score = totalQuestions > 0 ? (correctCount / totalQuestions) * 100 : 0;
      const passed = score >= 70; // 70% passing threshold

      // Get article CME credits
      const articleResult = await client.query(
        `SELECT cme_credits FROM cme_articles WHERE id = $1`,
        [id]
      );
      const cmeCredits = passed ? parseFloat(articleResult.rows[0]?.cme_credits || 0) : 0;

      // Update progress with score
      await client.query(
        `UPDATE user_study_progress 
         SET assessment_completed = true,
             assessment_completed_at = CURRENT_TIMESTAMP,
             assessment_score = $1,
             is_fully_completed = CASE WHEN reading_completed AND $2 THEN true ELSE is_fully_completed END,
             cme_credits_earned = CASE WHEN $2 THEN $3 ELSE cme_credits_earned END,
             updated_at = CURRENT_TIMESTAMP
         WHERE id = $4`,
        [score, passed, cmeCredits, progressId]
      );

      await client.query('COMMIT');

      res.json({
        success: true,
        data: {
          score: Math.round(score * 100) / 100,
          correctCount,
          totalQuestions,
          passed,
          cmeCreditsEarned: cmeCredits,
          attemptNumber,
          results
        }
      });
    } catch (error) {
      await client.query('ROLLBACK');
      logger.error('Error submitting assessment:', error);
      res.status(500).json({ success: false, message: 'Failed to submit assessment' });
    } finally {
      client.release();
    }
  }
);

/**
 * GET /api/study/articles/:id/assessment/results
 * Get assessment results with explanations
 */
router.get('/articles/:id/assessment/results', authenticate, param('id').isUUID(), validate, async (req: Request, res: Response) => {
  try {
    const { id } = req.params;

    let studentId = null;
    if (req.user!.role === UserRole.STUDENT) {
      const studentResult = await dbQuery(
        `SELECT id FROM students WHERE user_id = $1`,
        [req.user!.userId]
      );
      if (studentResult.rows.length > 0) {
        studentId = studentResult.rows[0].id;
      }
    }

    // Get all questions with correct answers and explanations
    const questionsResult = await dbQuery(
      `SELECT sa.*, 
        (SELECT selected_option FROM user_assessment_answers uaa 
         JOIN user_study_progress usp ON uaa.progress_id = usp.id
         WHERE uaa.question_id = sa.id AND usp.student_id = $2
         ORDER BY uaa.attempt_number DESC LIMIT 1) as user_answer,
        (SELECT is_correct FROM user_assessment_answers uaa 
         JOIN user_study_progress usp ON uaa.progress_id = usp.id
         WHERE uaa.question_id = sa.id AND usp.student_id = $2
         ORDER BY uaa.attempt_number DESC LIMIT 1) as was_correct
       FROM article_self_assessments sa
       WHERE sa.article_id = $1
       ORDER BY sa.question_number`,
      [id, studentId]
    );

    // Get references for explanations
    const referencesResult = await dbQuery(
      `SELECT reference_number, citation FROM article_references WHERE article_id = $1`,
      [id]
    );

    const referencesMap = new Map(
      referencesResult.rows.map((r: any) => [r.reference_number, r.citation])
    );

    // Add reference citations to each question
    const questionsWithRefs = questionsResult.rows.map((q: any) => ({
      ...q,
      reference_citations: (q.reference_numbers || []).map((num: number) => ({
        number: num,
        citation: referencesMap.get(num)
      }))
    }));

    res.json({
      success: true,
      data: {
        questions: questionsWithRefs
      }
    });
  } catch (error) {
    logger.error('Error getting assessment results:', error);
    res.status(500).json({ success: false, message: 'Failed to get results' });
  }
});

// ============================================================================
// PROGRESS TRACKING ENDPOINTS
// ============================================================================

/**
 * GET /api/study/progress
 * Get overall study progress for current user
 */
router.get('/progress', authenticate, async (req: Request, res: Response) => {
  try {
    let studentId = null;
    
    if (req.user!.role === UserRole.STUDENT) {
      const studentResult = await dbQuery(
        `SELECT id, level FROM students WHERE user_id = $1`,
        [req.user!.userId]
      );
      if (studentResult.rows.length > 0) {
        studentId = studentResult.rows[0].id;
      }
    }

    if (!studentId) {
      return res.status(404).json({ success: false, message: 'Student not found' });
    }

    // Get overall progress
    const progressResult = await dbQuery(
      `SELECT 
        COUNT(DISTINCT a.id) as total_articles,
        COUNT(DISTINCT CASE WHEN usp.reading_completed THEN a.id END) as articles_read,
        COUNT(DISTINCT CASE WHEN usp.assessment_completed THEN a.id END) as assessments_completed,
        COUNT(DISTINCT CASE WHEN usp.is_fully_completed THEN a.id END) as fully_completed,
        COALESCE(SUM(usp.cme_credits_earned), 0) as total_credits,
        COALESCE(AVG(CASE WHEN usp.assessment_score IS NOT NULL THEN usp.assessment_score END), 0) as avg_score,
        COALESCE(SUM(usp.time_spent_seconds), 0) as total_time_seconds
       FROM cme_articles a
       LEFT JOIN user_study_progress usp ON a.id = usp.article_id AND usp.student_id = $1
       WHERE a.is_published = true`,
      [studentId]
    );

    // Get per-topic progress
    const topicProgressResult = await dbQuery(
      `SELECT 
        t.id as topic_id, t.name as topic_name,
        a.id as article_id, a.title as article_title,
        COALESCE(usp.reading_progress_percent, 0) as reading_progress,
        COALESCE(usp.reading_completed, false) as reading_completed,
        COALESCE(usp.assessment_completed, false) as assessment_completed,
        usp.assessment_score,
        COALESCE(usp.is_fully_completed, false) as fully_completed,
        COALESCE(usp.cme_credits_earned, 0) as credits_earned
       FROM topics t
       LEFT JOIN cme_articles a ON t.id = a.topic_id AND a.is_published = true
       LEFT JOIN user_study_progress usp ON a.id = usp.article_id AND usp.student_id = $1
       ORDER BY t.name`,
      [studentId]
    );

    // Get recent activity
    const recentActivityResult = await dbQuery(
      `SELECT 
        a.id as article_id, a.title,
        usp.last_accessed_at,
        usp.reading_progress_percent,
        usp.assessment_score,
        usp.is_fully_completed
       FROM user_study_progress usp
       JOIN cme_articles a ON usp.article_id = a.id
       WHERE usp.student_id = $1
       ORDER BY usp.last_accessed_at DESC
       LIMIT 5`,
      [studentId]
    );

    res.json({
      success: true,
      data: {
        summary: progressResult.rows[0],
        topicProgress: topicProgressResult.rows,
        recentActivity: recentActivityResult.rows
      }
    });
  } catch (error) {
    logger.error('Error getting study progress:', error);
    res.status(500).json({ success: false, message: 'Failed to get progress' });
  }
});

/**
 * POST /api/study/session/start
 * Log study session start
 */
router.post(
  '/session/start',
  authenticate,
  authorize([UserRole.STUDENT]),
  body('article_id').isUUID(),
  validate,
  async (req: Request, res: Response) => {
    try {
      const { article_id, device_info } = req.body;

      const studentResult = await dbQuery(
        `SELECT id FROM students WHERE user_id = $1`,
        [req.user!.userId]
      );

      if (studentResult.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }

      const result = await dbQuery(
        `INSERT INTO study_session_logs (student_id, article_id, device_info)
         VALUES ($1, $2, $3)
         RETURNING id`,
        [studentResult.rows[0].id, article_id, device_info || null]
      );

      res.json({ success: true, data: { session_id: result.rows[0].id } });
    } catch (error) {
      logger.error('Error starting session:', error);
      res.status(500).json({ success: false, message: 'Failed to start session' });
    }
  }
);

/**
 * POST /api/study/session/:id/end
 * Log study session end
 */
router.post(
  '/session/:id/end',
  authenticate,
  authorize([UserRole.STUDENT]),
  param('id').isUUID(),
  body('sections_viewed').optional().isArray(),
  validate,
  async (req: Request, res: Response) => {
    try {
      const { id } = req.params;
      const { sections_viewed } = req.body;

      const result = await dbQuery(
        `UPDATE study_session_logs
         SET session_end = CURRENT_TIMESTAMP,
             duration_seconds = EXTRACT(EPOCH FROM (CURRENT_TIMESTAMP - session_start))::INTEGER,
             sections_viewed = $1
         WHERE id = $2
         RETURNING *`,
        [sections_viewed || [], id]
      );

      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error ending session:', error);
      res.status(500).json({ success: false, message: 'Failed to end session' });
    }
  }
);

export default router;
