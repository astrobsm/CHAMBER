import { v4 as uuidv4 } from 'uuid';
import crypto from 'crypto';
import { query, getClient } from '../config/database';
import config from '../config/index';
import {
  Test,
  TestAnswer,
  TestType,
  TestStatus,
  Question,
  SubmitAnswerRequest,
  TestActivityRequest,
} from '../types/index';

export class TestEngineService {
  /**
   * Start a new test for a student
   */
  async startTest(
    studentId: string,
    rotationId: string,
    testType: TestType,
    deviceFingerprint?: string,
    userAgent?: string,
    ipAddress?: string
  ): Promise<{
    test: Test;
    questions: Partial<Question>[];
  }> {
    const client = await getClient();

    try {
      await client.query('BEGIN');

      // Check if test already exists
      const existingTest = await client.query(
        `SELECT * FROM tests 
         WHERE student_id = $1 AND rotation_id = $2 AND test_type = $3`,
        [studentId, rotationId, testType]
      );

      if (existingTest.rows.length > 0) {
        const test = existingTest.rows[0];

        if (test.status === TestStatus.COMPLETED) {
          throw new Error('You have already completed this test');
        }

        if (test.status === TestStatus.INVALIDATED) {
          throw new Error('This test has been invalidated');
        }

        if (test.status === TestStatus.IN_PROGRESS) {
          // Check if test time has expired
          const startTime = new Date(test.started_at);
          const elapsed = (Date.now() - startTime.getTime()) / 1000;

          if (elapsed >= test.duration_minutes * 60) {
            // Auto-complete the test
            await this.autoSubmitTest(test.id, 'Time expired');
            throw new Error('Test time has expired');
          }

          // Return existing test with questions
          const questions = await this.getTestQuestions(test.id, test.question_order, test.option_orders);

          await client.query('COMMIT');
          return { test, questions };
        }
      }

      // Get student's active rotation
      const rotationResult = await client.query(
        `SELECT sr.id, rc.id as category_id
         FROM student_rotations sr
         JOIN rotations r ON sr.rotation_id = r.id
         JOIN rotation_categories rc ON r.category_id = rc.id
         WHERE sr.student_id = $1 AND sr.rotation_id = $2 AND sr.status = 'active'`,
        [studentId, rotationId]
      );

      if (rotationResult.rows.length === 0) {
        throw new Error('No active rotation found');
      }

      const { id: studentRotationId, category_id: categoryId } = rotationResult.rows[0];

      // Get random questions from the question bank
      const questions = await this.selectRandomQuestions(categoryId, config.testEngine.questionsCount);

      if (questions.length < config.testEngine.questionsCount) {
        throw new Error(`Not enough questions available. Required: ${config.testEngine.questionsCount}, Available: ${questions.length}`);
      }

      // Generate randomized order
      const questionOrder = this.shuffleArray(questions.map(q => q.id));
      const optionOrders: Record<string, string[]> = {};

      // Randomize options for each question
      for (const question of questions) {
        optionOrders[question.id] = this.shuffleArray(['A', 'B', 'C', 'D', 'E']);
      }

      // Generate integrity hash
      const integrityHash = this.generateIntegrityHash(questionOrder, optionOrders);

      // Create test
      const testId = uuidv4();
      const testResult = await client.query(
        `INSERT INTO tests (
          id, student_id, student_rotation_id, rotation_id, test_type,
          status, total_questions, duration_minutes, started_at,
          question_order, option_orders, integrity_hash,
          device_fingerprint, user_agent, ip_address
        ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, NOW(), $9, $10, $11, $12, $13, $14)
        RETURNING *`,
        [
          testId,
          studentId,
          studentRotationId,
          rotationId,
          testType,
          TestStatus.IN_PROGRESS,
          config.testEngine.questionsCount,
          config.testEngine.durationMinutes,
          JSON.stringify(questionOrder),
          JSON.stringify(optionOrders),
          integrityHash,
          deviceFingerprint,
          userAgent,
          ipAddress,
        ]
      );

      const test = testResult.rows[0];

      // Create empty answer records
      for (let i = 0; i < questionOrder.length; i++) {
        await client.query(
          `INSERT INTO test_answers (id, test_id, question_id, question_index)
           VALUES ($1, $2, $3, $4)`,
          [uuidv4(), testId, questionOrder[i], i]
        );
      }

      await client.query('COMMIT');

      // Prepare questions for client (without correct answers)
      const clientQuestions = this.prepareQuestionsForClient(questions, questionOrder, optionOrders);

      return { test, questions: clientQuestions };
    } catch (error) {
      await client.query('ROLLBACK');
      throw error;
    } finally {
      client.release();
    }
  }

  /**
   * Select random questions from question bank
   */
  private async selectRandomQuestions(categoryId: string, count: number): Promise<Question[]> {
    // Use a balanced selection across difficulty levels and topics
    const result = await query(
      `WITH ranked_questions AS (
        SELECT *,
          ROW_NUMBER() OVER (
            PARTITION BY topic_id, difficulty 
            ORDER BY RANDOM()
          ) as rn
        FROM questions
        WHERE category_id = $1 AND is_active = true
      )
      SELECT * FROM ranked_questions
      ORDER BY RANDOM()
      LIMIT $2`,
      [categoryId, count]
    );

    return result.rows;
  }

  /**
   * Shuffle array using Fisher-Yates algorithm with crypto-random
   */
  private shuffleArray<T>(array: T[]): T[] {
    const shuffled = [...array];
    for (let i = shuffled.length - 1; i > 0; i--) {
      const randomBytes = crypto.randomBytes(4);
      const randomValue = randomBytes.readUInt32BE(0);
      const j = randomValue % (i + 1);
      [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
    }
    return shuffled;
  }

  /**
   * Generate integrity hash for test
   */
  private generateIntegrityHash(
    questionOrder: string[],
    optionOrders: Record<string, string[]>
  ): string {
    const data = JSON.stringify({ questionOrder, optionOrders });
    return crypto.createHash('sha256').update(data).digest('hex');
  }

  /**
   * Prepare questions for client (without answers)
   */
  private prepareQuestionsForClient(
    questions: Question[],
    questionOrder: string[],
    optionOrders: Record<string, string[]>
  ): Partial<Question>[] {
    const questionMap = new Map(questions.map(q => [q.id, q]));

    return questionOrder.map((qId, index) => {
      const question = questionMap.get(qId)!;
      const optionOrder = optionOrders[qId];

      // Reorder options based on randomized order
      const options: Record<string, string> = {
        A: question.optionA,
        B: question.optionB,
        C: question.optionC,
        D: question.optionD,
        E: question.optionE,
      };

      const shuffledOptions: Record<string, string> = {};
      optionOrder.forEach((origOption, newIndex) => {
        const newOption = ['A', 'B', 'C', 'D', 'E'][newIndex];
        shuffledOptions[newOption] = options[origOption];
      });

      return {
        id: question.id,
        questionText: question.questionText,
        optionA: shuffledOptions.A,
        optionB: shuffledOptions.B,
        optionC: shuffledOptions.C,
        optionD: shuffledOptions.D,
        optionE: shuffledOptions.E,
        imageUrl: question.imageUrl,
      };
    });
  }

  /**
   * Get questions for an existing test
   */
  private async getTestQuestions(
    testId: string,
    questionOrder: string[],
    optionOrders: Record<string, string[]>
  ): Promise<Partial<Question>[]> {
    const result = await query(
      `SELECT q.* FROM questions q
       WHERE q.id = ANY($1)`,
      [questionOrder]
    );

    return this.prepareQuestionsForClient(result.rows, questionOrder, optionOrders);
  }

  /**
   * Submit answer for a question
   */
  async submitAnswer(
    studentId: string,
    data: SubmitAnswerRequest
  ): Promise<{
    success: boolean;
    questionsAnswered: number;
    totalQuestions: number;
    timeRemaining: number;
  }> {
    // Verify test belongs to student and is in progress
    const testResult = await query(
      `SELECT * FROM tests WHERE id = $1 AND student_id = $2`,
      [data.testId, studentId]
    );

    if (testResult.rows.length === 0) {
      throw new Error('Test not found');
    }

    const test = testResult.rows[0];

    if (test.status !== TestStatus.IN_PROGRESS) {
      throw new Error('Test is not in progress');
    }

    // Check if time expired
    const startTime = new Date(test.started_at);
    const elapsed = (Date.now() - startTime.getTime()) / 1000;
    const timeRemaining = Math.max(0, test.duration_minutes * 60 - elapsed);

    if (timeRemaining <= 0) {
      await this.autoSubmitTest(test.id, 'Time expired');
      throw new Error('Test time has expired');
    }

    // Map the selected option back to original
    const optionOrders: Record<string, string[]> = test.option_orders;
    const originalOption = this.mapAnswerToOriginal(
      data.selectedOption,
      optionOrders[data.questionId]
    );

    // Update answer
    await query(
      `UPDATE test_answers 
       SET selected_option = $1, time_spent_seconds = $2, answered_at = NOW()
       WHERE test_id = $3 AND question_id = $4`,
      [originalOption, data.timeSpentSeconds, data.testId, data.questionId]
    );

    // Update test progress
    const progressResult = await query(
      `UPDATE tests 
       SET questions_answered = (
         SELECT COUNT(*) FROM test_answers 
         WHERE test_id = $1 AND selected_option IS NOT NULL
       ),
       updated_at = NOW()
       WHERE id = $1
       RETURNING questions_answered, total_questions`,
      [data.testId]
    );

    const progress = progressResult.rows[0];

    return {
      success: true,
      questionsAnswered: progress.questions_answered,
      totalQuestions: progress.total_questions,
      timeRemaining: Math.floor(timeRemaining),
    };
  }

  /**
   * Map shuffled option back to original
   */
  private mapAnswerToOriginal(
    selectedOption: string,
    optionOrder: string[]
  ): string {
    const selectedIndex = ['A', 'B', 'C', 'D', 'E'].indexOf(selectedOption);
    return optionOrder[selectedIndex];
  }

  /**
   * Complete/submit the test
   */
  async submitTest(
    studentId: string,
    testId: string
  ): Promise<{
    score: number;
    percentage: number;
    correctAnswers: number;
    totalQuestions: number;
    results: Array<{
      questionId: string;
      questionText: string;
      selectedOption: string | null;
      correctOption: string;
      isCorrect: boolean;
      explanation: string;
    }>;
    admonition: string;
  }> {
    const client = await getClient();

    try {
      await client.query('BEGIN');

      // Get test
      const testResult = await client.query(
        `SELECT * FROM tests WHERE id = $1 AND student_id = $2`,
        [testId, studentId]
      );

      if (testResult.rows.length === 0) {
        throw new Error('Test not found');
      }

      const test = testResult.rows[0];

      if (test.status === TestStatus.COMPLETED) {
        throw new Error('Test already completed');
      }

      // Calculate time spent
      const startTime = new Date(test.started_at);
      const timeSpentSeconds = Math.floor((Date.now() - startTime.getTime()) / 1000);

      // Grade the test
      const answersResult = await client.query(
        `SELECT ta.*, q.question_text, q.correct_option, q.explanation,
                q.option_a, q.option_b, q.option_c, q.option_d, q.option_e
         FROM test_answers ta
         JOIN questions q ON ta.question_id = q.id
         WHERE ta.test_id = $1
         ORDER BY ta.question_index`,
        [testId]
      );

      let correctAnswers = 0;
      const results: any[] = [];

      for (const answer of answersResult.rows) {
        const isCorrect = answer.selected_option === answer.correct_option;

        if (isCorrect) {
          correctAnswers++;
        }

        // Update answer with correctness
        await client.query(
          `UPDATE test_answers SET is_correct = $1 WHERE id = $2`,
          [isCorrect, answer.id]
        );

        // Update question statistics
        await client.query(
          `UPDATE questions 
           SET times_used = times_used + 1,
               times_correct = times_correct + CASE WHEN $1 THEN 1 ELSE 0 END
           WHERE id = $2`,
          [isCorrect, answer.question_id]
        );

        results.push({
          questionId: answer.question_id,
          questionText: answer.question_text,
          selectedOption: answer.selected_option,
          correctOption: answer.correct_option,
          isCorrect,
          explanation: answer.explanation,
        });
      }

      const totalQuestions = answersResult.rows.length;
      const percentage = totalQuestions > 0 ? (correctAnswers / totalQuestions) * 100 : 0;

      // Update test
      await client.query(
        `UPDATE tests 
         SET status = $1, completed_at = NOW(), time_spent_seconds = $2,
             score = $3, percentage = $4, correct_answers = $5
         WHERE id = $6`,
        [TestStatus.COMPLETED, timeSpentSeconds, correctAnswers, percentage, correctAnswers, testId]
      );

      await client.query('COMMIT');

      // Update performance summary
      this.updateTestScore(studentId, test.rotation_id).catch(console.error);

      // Generate admonition
      const admonition = this.generateAdmonition(percentage);

      return {
        score: correctAnswers,
        percentage,
        correctAnswers,
        totalQuestions,
        results,
        admonition,
      };
    } catch (error) {
      await client.query('ROLLBACK');
      throw error;
    } finally {
      client.release();
    }
  }

  /**
   * Auto-submit test (timeout or suspicious activity)
   */
  private async autoSubmitTest(testId: string, reason: string): Promise<void> {
    await query(
      `UPDATE tests 
       SET status = $1, completed_at = NOW(), 
           suspicious_activities = suspicious_activities || $2::jsonb
       WHERE id = $3 AND status = $4`,
      [
        TestStatus.COMPLETED,
        JSON.stringify([{ type: 'auto_submit', reason, timestamp: new Date().toISOString() }]),
        testId,
        TestStatus.IN_PROGRESS,
      ]
    );
  }

  /**
   * Log test activity (anti-cheating)
   */
  async logActivity(
    studentId: string,
    data: TestActivityRequest
  ): Promise<void> {
    // Verify test belongs to student
    const testResult = await query(
      `SELECT * FROM tests WHERE id = $1 AND student_id = $2 AND status = $3`,
      [data.testId, studentId, TestStatus.IN_PROGRESS]
    );

    if (testResult.rows.length === 0) {
      return; // Silently ignore if test not found or not in progress
    }

    const test = testResult.rows[0];

    // Log the activity
    await query(
      `INSERT INTO test_activity_logs (id, test_id, activity_type, activity_data)
       VALUES ($1, $2, $3, $4)`,
      [uuidv4(), data.testId, data.activityType, JSON.stringify(data.activityData || {})]
    );

    // Update counters
    if (data.activityType === 'tab_switch') {
      const newTabSwitches = test.tab_switches + 1;

      await query(
        `UPDATE tests 
         SET tab_switches = $1,
             suspicious_activities = suspicious_activities || $2::jsonb
         WHERE id = $3`,
        [
          newTabSwitches,
          JSON.stringify([{ type: 'tab_switch', timestamp: new Date().toISOString() }]),
          data.testId,
        ]
      );

      // Check threshold
      if (newTabSwitches >= config.testEngine.suspiciousThreshold) {
        await this.autoSubmitTest(data.testId, 'Exceeded tab switch threshold');
      }
    } else if (data.activityType === 'focus_loss') {
      await query(
        `UPDATE tests 
         SET focus_losses = focus_losses + 1,
             suspicious_activities = suspicious_activities || $1::jsonb
         WHERE id = $2`,
        [
          JSON.stringify([{ type: 'focus_loss', timestamp: new Date().toISOString() }]),
          data.testId,
        ]
      );
    }
  }

  /**
   * Update test score in performance summary
   */
  private async updateTestScore(studentId: string, rotationId: string): Promise<void> {
    const testsResult = await query(
      `SELECT test_type, percentage FROM tests
       WHERE student_id = $1 AND rotation_id = $2 AND status = 'completed'`,
      [studentId, rotationId]
    );

    const scores: Record<string, number> = {};
    for (const test of testsResult.rows) {
      scores[test.test_type] = test.percentage;
    }

    const avgScore = Object.values(scores).length > 0
      ? Object.values(scores).reduce((a, b) => a + b, 0) / Object.values(scores).length
      : 0;

    await query(
      `UPDATE performance_summaries 
       SET test_pre_score = $1,
           test_mid_score = $2,
           test_post_score = $3,
           test_average_score = $4,
           last_calculated_at = NOW(),
           updated_at = NOW()
       WHERE student_id = $5 AND rotation_id = $6`,
      [
        scores.pre_test || null,
        scores.mid_test || null,
        scores.post_test || null,
        avgScore,
        studentId,
        rotationId,
      ]
    );
  }

  /**
   * Generate end-of-test admonition
   */
  private generateAdmonition(percentage: number): string {
    if (percentage >= 90) {
      return "Excellent performance! You have demonstrated outstanding knowledge and preparation. Keep up the exceptional work!";
    } else if (percentage >= 75) {
      return "Good job! You have met the minimum requirement for clearance. Continue to study and improve your understanding.";
    } else if (percentage >= 60) {
      return "Fair performance. You are close to the required threshold. Review the topics you struggled with and focus on improving.";
    } else if (percentage >= 40) {
      return "Your performance needs improvement. Please dedicate more time to studying the course materials and seek help if needed.";
    } else {
      return "Your score indicates significant gaps in understanding. We strongly recommend intensive review and consultation with your instructors.";
    }
  }

  /**
   * Get test status for a student
   */
  async getTestStatus(
    studentId: string,
    rotationId: string
  ): Promise<{
    preTest: { status: string; score?: number } | null;
    midTest: { status: string; score?: number } | null;
    postTest: { status: string; score?: number } | null;
  }> {
    const result = await query(
      `SELECT test_type, status, percentage
       FROM tests
       WHERE student_id = $1 AND rotation_id = $2`,
      [studentId, rotationId]
    );

    const tests: Record<string, { status: string; score?: number }> = {};

    for (const test of result.rows) {
      tests[test.test_type] = {
        status: test.status,
        score: test.percentage,
      };
    }

    return {
      preTest: tests.pre_test || null,
      midTest: tests.mid_test || null,
      postTest: tests.post_test || null,
    };
  }

  /**
   * Invalidate a test (admin action)
   */
  async invalidateTest(
    testId: string,
    reason: string,
    invalidatedBy: string
  ): Promise<void> {
    await query(
      `UPDATE tests 
       SET status = $1, is_invalidated = true, 
           invalidation_reason = $2, invalidated_by = $3
       WHERE id = $4`,
      [TestStatus.INVALIDATED, reason, invalidatedBy, testId]
    );
  }

  /**
   * Get all tests for a student
   */
  async getStudentTests(
    userId: string,
    rotationId?: string
  ): Promise<any[]> {
    let queryText = `
      SELECT t.*, r.name as rotation_name, rc.name as category_name
      FROM tests t
      JOIN students s ON t.student_id = s.id
      JOIN rotations r ON t.rotation_id = r.id
      JOIN rotation_categories rc ON r.category_id = rc.id
      WHERE s.user_id = $1
    `;
    const params: any[] = [userId];

    if (rotationId) {
      queryText += ` AND t.rotation_id = $2`;
      params.push(rotationId);
    }

    queryText += ` ORDER BY t.started_at DESC`;

    const result = await query(queryText, params);
    return result.rows;
  }

  /**
   * Get available tests for a student based on rotation dates
   */
  async getAvailableTests(userId: string): Promise<any[]> {
    const result = await query(
      `SELECT sr.id, sr.rotation_id, sr.start_date, sr.end_date, sr.status,
              r.name as rotation_name, rc.id as category_id, rc.name as category_name,
              t_pre.id as pre_test_id, t_pre.status as pre_test_status, t_pre.percentage as pre_test_score, t_pre.completed_at as pre_test_completed_at,
              t_mid.id as mid_test_id, t_mid.status as mid_test_status, t_mid.percentage as mid_test_score, t_mid.completed_at as mid_test_completed_at,
              t_post.id as post_test_id, t_post.status as post_test_status, t_post.percentage as post_test_score, t_post.completed_at as post_test_completed_at
       FROM student_rotations sr
       JOIN students s ON sr.student_id = s.id
       JOIN rotations r ON sr.rotation_id = r.id
       JOIN rotation_categories rc ON r.category_id = rc.id
       LEFT JOIN tests t_pre ON t_pre.student_id = sr.student_id AND t_pre.rotation_id = sr.rotation_id AND t_pre.test_type = 'pre_test'
       LEFT JOIN tests t_mid ON t_mid.student_id = sr.student_id AND t_mid.rotation_id = sr.rotation_id AND t_mid.test_type = 'mid_test'
       LEFT JOIN tests t_post ON t_post.student_id = sr.student_id AND t_post.rotation_id = sr.rotation_id AND t_post.test_type = 'post_test'
       WHERE s.user_id = $1 AND sr.status IN ('active', 'completed')
       ORDER BY sr.start_date DESC`,
      [userId]
    );

    return result.rows.map(row => ({
      rotation: {
        id: row.rotation_id,
        name: row.rotation_name,
        categoryId: row.category_id,
        categoryName: row.category_name,
        startDate: row.start_date,
        endDate: row.end_date,
        status: row.status,
      },
      tests: {
        preTest: row.pre_test_id ? {
          id: row.pre_test_id,
          status: row.pre_test_status,
          score: row.pre_test_score,
          completedAt: row.pre_test_completed_at,
        } : null,
        midTest: row.mid_test_id ? {
          id: row.mid_test_id,
          status: row.mid_test_status,
          score: row.mid_test_score,
          completedAt: row.mid_test_completed_at,
        } : null,
        postTest: row.post_test_id ? {
          id: row.post_test_id,
          status: row.post_test_status,
          score: row.post_test_score,
          completedAt: row.post_test_completed_at,
        } : null,
      },
    }));
  }

  /**
   * Get test results for a specific test
   */
  async getTestResults(
    testId: string,
    userId: string
  ): Promise<{
    score: number;
    percentage: number;
    correctAnswers: number;
    totalQuestions: number;
    results: Array<{
      questionId: string;
      questionText: string;
      selectedOption: string | null;
      correctOption: string;
      isCorrect: boolean;
      explanation: string;
    }>;
    testInfo: {
      testType: string;
      startedAt: string;
      completedAt: string;
      timeSpentSeconds: number;
    };
  }> {
    // First get student ID
    const studentResult = await query(
      'SELECT id FROM students WHERE user_id = $1',
      [userId]
    );

    if (studentResult.rows.length === 0) {
      throw new Error('Student not found');
    }

    const studentId = studentResult.rows[0].id;

    // Get test
    const testResult = await query(
      `SELECT * FROM tests WHERE id = $1 AND student_id = $2`,
      [testId, studentId]
    );

    if (testResult.rows.length === 0) {
      throw new Error('Test not found');
    }

    const test = testResult.rows[0];

    if (test.status !== TestStatus.COMPLETED) {
      throw new Error('Test is not completed yet');
    }

    // Get answers with question details
    const answersResult = await query(
      `SELECT ta.*, q.question_text, q.correct_option, q.explanation
       FROM test_answers ta
       JOIN questions q ON ta.question_id = q.id
       WHERE ta.test_id = $1
       ORDER BY ta.question_index`,
      [testId]
    );

    const results = answersResult.rows.map(answer => ({
      questionId: answer.question_id,
      questionText: answer.question_text,
      selectedOption: answer.selected_option,
      correctOption: answer.correct_option,
      isCorrect: answer.is_correct || false,
      explanation: answer.explanation,
    }));

    return {
      score: test.correct_answers || 0,
      percentage: test.percentage || 0,
      correctAnswers: test.correct_answers || 0,
      totalQuestions: test.total_questions,
      results,
      testInfo: {
        testType: test.test_type,
        startedAt: test.started_at,
        completedAt: test.completed_at,
        timeSpentSeconds: test.time_spent_seconds,
      },
    };
  }
}

export const testEngineService = new TestEngineService();
