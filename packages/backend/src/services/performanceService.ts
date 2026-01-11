import { v4 as uuidv4 } from 'uuid';
import { query, getClient } from '../config/database';
import config from '../config/index';
import { PerformanceSummary, ClearanceStatus } from '../types/index';

export class PerformanceService {
  /**
   * Calculate overall performance for a student in a rotation
   */
  async calculateOverallPerformance(
    studentId: string,
    rotationId: string
  ): Promise<PerformanceSummary> {
    const client = await getClient();

    try {
      await client.query('BEGIN');

      // Get student rotation
      const srResult = await client.query(
        `SELECT id FROM student_rotations WHERE student_id = $1 AND rotation_id = $2`,
        [studentId, rotationId]
      );

      if (srResult.rows.length === 0) {
        throw new Error('Student rotation not found');
      }

      const studentRotationId = srResult.rows[0].id;

      // Calculate attendance scores
      const attendanceScores = await this.calculateAttendanceScores(studentId, rotationId);

      // Calculate participation scores
      const participationScores = await this.calculateParticipationScores(studentId, rotationId);

      // Get test scores
      const testScores = await this.getTestScores(studentId, rotationId);

      // Calculate CME scores
      const cmeScores = await this.calculateCMEScores(studentId, rotationId);

      // Get score weights
      const weights = await this.getScoreWeights(rotationId);

      // Calculate overall score
      const overallScore =
        (attendanceScores.total * weights.attendance +
          participationScores.total * weights.participation +
          testScores.average * weights.tests +
          cmeScores.score * weights.cme) / 100;

      const isEligibleForClearance = overallScore >= config.clearance.thresholdPercentage;
      const deficitPercentage = isEligibleForClearance
        ? 0
        : config.clearance.thresholdPercentage - overallScore;

      // Upsert performance summary
      const result = await client.query(
        `INSERT INTO performance_summaries (
          id, student_id, student_rotation_id, rotation_id,
          attendance_clinic_score, attendance_clinic_sessions, attendance_clinic_present,
          attendance_theatre_score, attendance_theatre_sessions, attendance_theatre_present,
          attendance_ward_score, attendance_ward_sessions, attendance_ward_present,
          attendance_total_score,
          participation_seminar_score, participation_history_score, participation_physical_score,
          participation_conduct_score, participation_team_score, participation_total_score,
          test_pre_score, test_mid_score, test_post_score, test_average_score,
          cme_completed, cme_total, cme_score,
          overall_score, is_eligible_for_clearance, deficit_percentage,
          last_calculated_at
        ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $30, NOW())
        ON CONFLICT (student_id, rotation_id) DO UPDATE SET
          attendance_clinic_score = $5, attendance_clinic_sessions = $6, attendance_clinic_present = $7,
          attendance_theatre_score = $8, attendance_theatre_sessions = $9, attendance_theatre_present = $10,
          attendance_ward_score = $11, attendance_ward_sessions = $12, attendance_ward_present = $13,
          attendance_total_score = $14,
          participation_seminar_score = $15, participation_history_score = $16, participation_physical_score = $17,
          participation_conduct_score = $18, participation_team_score = $19, participation_total_score = $20,
          test_pre_score = $21, test_mid_score = $22, test_post_score = $23, test_average_score = $24,
          cme_completed = $25, cme_total = $26, cme_score = $27,
          overall_score = $28, is_eligible_for_clearance = $29, deficit_percentage = $30,
          last_calculated_at = NOW(), updated_at = NOW()
        RETURNING *`,
        [
          uuidv4(),
          studentId,
          studentRotationId,
          rotationId,
          attendanceScores.clinic.score,
          attendanceScores.clinic.sessions,
          attendanceScores.clinic.present,
          attendanceScores.theatre.score,
          attendanceScores.theatre.sessions,
          attendanceScores.theatre.present,
          attendanceScores.ward.score,
          attendanceScores.ward.sessions,
          attendanceScores.ward.present,
          attendanceScores.total,
          participationScores.seminar,
          participationScores.history,
          participationScores.physical,
          participationScores.conduct,
          participationScores.team,
          participationScores.total,
          testScores.preTest,
          testScores.midTest,
          testScores.postTest,
          testScores.average,
          cmeScores.completed,
          cmeScores.total,
          cmeScores.score,
          overallScore,
          isEligibleForClearance,
          deficitPercentage,
        ]
      );

      await client.query('COMMIT');

      return result.rows[0];
    } catch (error) {
      await client.query('ROLLBACK');
      throw error;
    } finally {
      client.release();
    }
  }

  /**
   * Calculate attendance scores
   */
  private async calculateAttendanceScores(
    studentId: string,
    rotationId: string
  ): Promise<{
    clinic: { score: number; sessions: number; present: number };
    theatre: { score: number; sessions: number; present: number };
    ward: { score: number; sessions: number; present: number };
    total: number;
  }> {
    const result = await query(
      `SELECT 
         ats.attendance_type,
         COUNT(DISTINCT ats.id) as total_sessions,
         COUNT(CASE WHEN ar.status IN ('present', 'late') THEN 1 END) as present_count
       FROM attendance_sessions ats
       LEFT JOIN attendance_records ar ON ats.id = ar.session_id AND ar.student_id = $1
       WHERE ats.rotation_id = $2 AND ats.is_active = true
       GROUP BY ats.attendance_type`,
      [studentId, rotationId]
    );

    const scores: Record<string, { score: number; sessions: number; present: number }> = {
      clinic: { score: 0, sessions: 0, present: 0 },
      theatre: { score: 0, sessions: 0, present: 0 },
      ward_rounds: { score: 0, sessions: 0, present: 0 },
    };

    for (const row of result.rows) {
      const sessions = parseInt(row.total_sessions);
      const present = parseInt(row.present_count);
      const score = sessions > 0 ? (present / sessions) * 100 : 0;

      scores[row.attendance_type] = { score, sessions, present };
    }

    // Get weights from rotation
    const rotationResult = await query(
      `SELECT attendance_weight_clinic, attendance_weight_theatre, attendance_weight_ward
       FROM rotations WHERE id = $1`,
      [rotationId]
    );

    const weights = rotationResult.rows[0] || {
      attendance_weight_clinic: 33.33,
      attendance_weight_theatre: 33.33,
      attendance_weight_ward: 33.34,
    };

    const total =
      (scores.clinic.score * weights.attendance_weight_clinic +
        scores.theatre.score * weights.attendance_weight_theatre +
        scores.ward_rounds.score * weights.attendance_weight_ward) / 100;

    return {
      clinic: scores.clinic,
      theatre: scores.theatre,
      ward: scores.ward_rounds,
      total,
    };
  }

  /**
   * Calculate participation scores
   */
  private async calculateParticipationScores(
    studentId: string,
    rotationId: string
  ): Promise<{
    seminar: number;
    history: number;
    physical: number;
    conduct: number;
    team: number;
    total: number;
  }> {
    const result = await query(
      `SELECT 
         pt.code,
         AVG(pr.score) as avg_score
       FROM participation_records pr
       JOIN participation_types pt ON pr.participation_type_id = pt.id
       JOIN student_rotations sr ON pr.student_rotation_id = sr.id
       WHERE pr.student_id = $1 AND sr.rotation_id = $2
       GROUP BY pt.code`,
      [studentId, rotationId]
    );

    const scores: Record<string, number> = {
      seminar: 0,
      history: 0,
      physical_exam: 0,
      conduct: 0,
      team: 0,
    };

    for (const row of result.rows) {
      scores[row.code] = parseFloat(row.avg_score) || 0;
    }

    // Calculate total (simple average)
    const values = Object.values(scores).filter(v => v > 0);
    const total = values.length > 0 ? values.reduce((a, b) => a + b, 0) / values.length : 0;

    return {
      seminar: scores.seminar,
      history: scores.history,
      physical: scores.physical_exam,
      conduct: scores.conduct,
      team: scores.team,
      total,
    };
  }

  /**
   * Get test scores
   */
  private async getTestScores(
    studentId: string,
    rotationId: string
  ): Promise<{
    preTest: number | null;
    midTest: number | null;
    postTest: number | null;
    average: number;
  }> {
    const result = await query(
      `SELECT test_type, percentage 
       FROM tests 
       WHERE student_id = $1 AND rotation_id = $2 AND status = 'completed'`,
      [studentId, rotationId]
    );

    const scores: Record<string, number | null> = {
      pre_test: null,
      mid_test: null,
      post_test: null,
    };

    for (const row of result.rows) {
      scores[row.test_type] = parseFloat(row.percentage);
    }

    const validScores = Object.values(scores).filter(v => v !== null) as number[];
    const average = validScores.length > 0
      ? validScores.reduce((a, b) => a + b, 0) / validScores.length
      : 0;

    return {
      preTest: scores.pre_test,
      midTest: scores.mid_test,
      postTest: scores.post_test,
      average,
    };
  }

  /**
   * Calculate CME scores
   */
  private async calculateCMEScores(
    studentId: string,
    rotationId: string
  ): Promise<{
    completed: number;
    total: number;
    score: number;
  }> {
    // Get total CME content for this rotation
    const totalResult = await query(
      `SELECT COUNT(*) as total
       FROM cme_contents cc
       JOIN rotations r ON cc.category_id = r.category_id
       WHERE r.id = $1 AND cc.is_active = true`,
      [rotationId]
    );

    const total = parseInt(totalResult.rows[0]?.total || 0);

    if (total === 0) {
      return { completed: 0, total: 0, score: 100 }; // No CME required = full score
    }

    // Get completed CME for student
    const completedResult = await query(
      `SELECT COUNT(*) as completed
       FROM cme_completions cmc
       JOIN cme_contents cc ON cmc.cme_content_id = cc.id
       JOIN student_rotations sr ON cmc.student_rotation_id = sr.id
       WHERE cmc.student_id = $1 AND sr.rotation_id = $2 AND cmc.is_completed = true`,
      [studentId, rotationId]
    );

    const completed = parseInt(completedResult.rows[0]?.completed || 0);
    const score = (completed / total) * 100;

    return { completed, total, score };
  }

  /**
   * Get score weights
   */
  private async getScoreWeights(
    rotationId: string
  ): Promise<{
    attendance: number;
    participation: number;
    tests: number;
    cme: number;
  }> {
    // Try rotation-specific weights first
    let result = await query(
      `SELECT component_name, weight_percentage
       FROM score_weights
       WHERE rotation_id = $1 AND is_active = true`,
      [rotationId]
    );

    // Fall back to global weights
    if (result.rows.length === 0) {
      result = await query(
        `SELECT component_name, weight_percentage
         FROM score_weights
         WHERE rotation_id IS NULL AND is_active = true`
      );
    }

    const weights: Record<string, number> = {
      attendance: 25,
      participation: 25,
      tests: 40,
      cme: 10,
    };

    for (const row of result.rows) {
      weights[row.component_name] = parseFloat(row.weight_percentage);
    }

    return weights as any;
  }

  /**
   * Get performance summary for a student
   */
  async getPerformanceSummary(
    studentId: string,
    rotationId: string
  ): Promise<PerformanceSummary | null> {
    const result = await query(
      `SELECT * FROM performance_summaries
       WHERE student_id = $1 AND rotation_id = $2`,
      [studentId, rotationId]
    );

    return result.rows[0] || null;
  }

  /**
   * Get student dashboard data
   */
  async getStudentDashboard(studentId: string): Promise<any> {
    // Get student info with current rotation
    const studentResult = await query(
      `SELECT s.*, u.email, u.last_login
       FROM students s
       JOIN users u ON s.user_id = u.id
       WHERE s.id = $1`,
      [studentId]
    );

    if (studentResult.rows.length === 0) {
      throw new Error('Student not found');
    }

    const student = studentResult.rows[0];

    // Get current rotation details
    const rotationResult = await query(
      `SELECT sr.*, r.name as rotation_name, r.start_date, r.end_date,
              rc.name as category_name, rc.level
       FROM student_rotations sr
       JOIN rotations r ON sr.rotation_id = r.id
       JOIN rotation_categories rc ON r.category_id = rc.id
       WHERE sr.student_id = $1 AND sr.status = 'active'`,
      [studentId]
    );

    const currentRotation = rotationResult.rows[0] || null;

    // Get performance summary
    let performance = null;
    if (currentRotation) {
      performance = await this.getPerformanceSummary(studentId, currentRotation.rotation_id);

      // If no performance record, calculate it
      if (!performance) {
        performance = await this.calculateOverallPerformance(studentId, currentRotation.rotation_id);
      }
    }

    // Get recent attendance
    const recentAttendance = await query(
      `SELECT ar.*, ats.attendance_type, ats.session_date, ats.location
       FROM attendance_records ar
       JOIN attendance_sessions ats ON ar.session_id = ats.id
       WHERE ar.student_id = $1
       ORDER BY ats.session_date DESC, ar.check_in_time DESC
       LIMIT 5`,
      [studentId]
    );

    // Get test status
    let testStatus = null;
    if (currentRotation) {
      const testResult = await query(
        `SELECT test_type, status, percentage, completed_at
         FROM tests
         WHERE student_id = $1 AND rotation_id = $2`,
        [studentId, currentRotation.rotation_id]
      );

      testStatus = testResult.rows;
    }

    // Get upcoming CME
    let upcomingCME = null;
    if (currentRotation) {
      upcomingCME = await query(
        `SELECT cc.*, COALESCE(cmc.is_completed, false) as is_completed
         FROM cme_contents cc
         JOIN rotations r ON cc.category_id = r.category_id
         LEFT JOIN cme_completions cmc ON cc.id = cmc.cme_content_id AND cmc.student_id = $1
         WHERE r.id = $2 AND cc.is_active = true
         AND (cmc.is_completed IS NULL OR cmc.is_completed = false)
         ORDER BY cc.created_at DESC
         LIMIT 5`,
        [studentId, currentRotation.rotation_id]
      );
    }

    return {
      student,
      currentRotation,
      performance,
      recentAttendance: recentAttendance.rows,
      testStatus,
      upcomingCME: upcomingCME?.rows || [],
    };
  }

  /**
   * Get comparative ranking (anonymized)
   */
  async getComparativeRanking(
    studentId: string,
    rotationId: string
  ): Promise<{
    rank: number;
    total: number;
    percentile: number;
    distribution: { range: string; count: number }[];
  }> {
    // Get all students in this rotation with their scores
    const result = await query(
      `SELECT ps.student_id, ps.overall_score
       FROM performance_summaries ps
       JOIN student_rotations sr ON ps.student_rotation_id = sr.id
       WHERE sr.rotation_id = $1
       ORDER BY ps.overall_score DESC`,
      [rotationId]
    );

    const scores = result.rows;
    const total = scores.length;

    // Find student's rank
    const studentIndex = scores.findIndex(s => s.student_id === studentId);
    const rank = studentIndex >= 0 ? studentIndex + 1 : total;

    // Calculate percentile
    const percentile = total > 0 ? ((total - rank) / total) * 100 : 0;

    // Create distribution
    const distribution = [
      { range: '90-100', count: 0 },
      { range: '80-89', count: 0 },
      { range: '70-79', count: 0 },
      { range: '60-69', count: 0 },
      { range: 'Below 60', count: 0 },
    ];

    for (const score of scores) {
      const s = parseFloat(score.overall_score);
      if (s >= 90) distribution[0].count++;
      else if (s >= 80) distribution[1].count++;
      else if (s >= 70) distribution[2].count++;
      else if (s >= 60) distribution[3].count++;
      else distribution[4].count++;
    }

    return {
      rank,
      total,
      percentile,
      distribution,
    };
  }

  /**
   * Calculate student performance from user ID
   */
  async calculateStudentPerformance(userId: string): Promise<PerformanceSummary | null> {
    // Get student ID from user ID
    const studentResult = await query(
      `SELECT s.id, sr.rotation_id
       FROM students s
       LEFT JOIN student_rotations sr ON s.id = sr.student_id AND sr.status = 'active'
       WHERE s.user_id = $1`,
      [userId]
    );

    if (studentResult.rows.length === 0) {
      throw new Error('Student not found');
    }

    const { id: studentId, rotation_id: rotationId } = studentResult.rows[0];

    if (!rotationId) {
      return null;
    }

    return this.calculateOverallPerformance(studentId, rotationId);
  }

  /**
   * Get student ranking from user ID
   */
  async getStudentRanking(userId: string): Promise<{
    rank: number;
    total: number;
    percentile: number;
    distribution: { range: string; count: number }[];
  } | null> {
    const studentResult = await query(
      `SELECT s.id, sr.rotation_id
       FROM students s
       LEFT JOIN student_rotations sr ON s.id = sr.student_id AND sr.status = 'active'
       WHERE s.user_id = $1`,
      [userId]
    );

    if (studentResult.rows.length === 0 || !studentResult.rows[0].rotation_id) {
      return null;
    }

    const { id: studentId, rotation_id: rotationId } = studentResult.rows[0];
    return this.getComparativeRanking(studentId, rotationId);
  }

  /**
   * Identify weak areas for a student
   */
  async identifyWeakAreas(userId: string): Promise<{
    weakTopics: { topicId: string; topicName: string; accuracy: number }[];
    weakActivities: { type: string; averageScore: number }[];
    attendanceIssues: { type: string; percentage: number }[];
  }> {
    const studentResult = await query(
      `SELECT s.id FROM students s WHERE s.user_id = $1`,
      [userId]
    );

    if (studentResult.rows.length === 0) {
      throw new Error('Student not found');
    }

    const studentId = studentResult.rows[0].id;

    // Weak topics (based on test answers)
    const topicsResult = await query(
      `SELECT 
         t.id as topic_id, t.name as topic_name,
         COUNT(ta.id) as total_answers,
         COUNT(ta.id) FILTER (WHERE ta.is_correct) as correct_answers,
         ROUND(AVG(CASE WHEN ta.is_correct THEN 100 ELSE 0 END), 2) as accuracy
       FROM topics t
       JOIN questions q ON t.id = q.topic_id
       JOIN test_answers ta ON q.id = ta.question_id
       JOIN tests ts ON ta.test_id = ts.id
       WHERE ts.student_id = $1
       GROUP BY t.id, t.name
       HAVING COUNT(ta.id) >= 3
       ORDER BY accuracy ASC
       LIMIT 5`,
      [studentId]
    );

    // Weak activities (participation types with low scores)
    const activitiesResult = await query(
      `SELECT 
         pt.name as type,
         ROUND(AVG(pr.score), 2) as average_score
       FROM participation_types pt
       LEFT JOIN participation_records pr ON pt.id = pr.participation_type_id AND pr.student_id = $1
       WHERE pt.is_active = true
       GROUP BY pt.id, pt.name
       HAVING AVG(pr.score) IS NOT NULL
       ORDER BY average_score ASC
       LIMIT 5`,
      [studentId]
    );

    // Attendance issues
    const attendanceResult = await query(
      `SELECT 
         ats.attendance_type as type,
         ROUND((COUNT(ar.id) FILTER (WHERE ar.status = 'present')::float / 
                NULLIF(COUNT(DISTINCT ats.id), 0)) * 100, 2) as percentage
       FROM attendance_sessions ats
       LEFT JOIN attendance_records ar ON ats.id = ar.session_id AND ar.student_id = $1
       WHERE ats.is_active = true
       GROUP BY ats.attendance_type
       HAVING (COUNT(ar.id) FILTER (WHERE ar.status = 'present')::float / 
               NULLIF(COUNT(DISTINCT ats.id), 0)) * 100 < 80
       ORDER BY percentage ASC`,
      [studentId]
    );

    return {
      weakTopics: topicsResult.rows.map(r => ({
        topicId: r.topic_id,
        topicName: r.topic_name,
        accuracy: parseFloat(r.accuracy) || 0,
      })),
      weakActivities: activitiesResult.rows.map(r => ({
        type: r.type,
        averageScore: parseFloat(r.average_score) || 0,
      })),
      attendanceIssues: attendanceResult.rows.map(r => ({
        type: r.type,
        percentage: parseFloat(r.percentage) || 0,
      })),
    };
  }

  /**
   * Process clearances for an entire rotation
   */
  async processRotationClearances(
    rotationId: string,
    processedBy: string
  ): Promise<{
    processed: number;
    cleared: number;
    notCleared: number;
    errors: string[];
  }> {
    const client = await getClient();
    let processed = 0;
    let cleared = 0;
    let notCleared = 0;
    const errors: string[] = [];

    try {
      await client.query('BEGIN');

      // Get all students in this rotation
      const studentsResult = await client.query(
        `SELECT sr.student_id, sr.id as student_rotation_id
         FROM student_rotations sr
         WHERE sr.rotation_id = $1 AND sr.status = 'active'`,
        [rotationId]
      );

      for (const row of studentsResult.rows) {
        try {
          // Calculate performance
          const performance = await this.calculateOverallPerformance(row.student_id, rotationId);
          
          processed++;

          if (performance.isEligibleForClearance) {
            // Clear the student
            await client.query(
              `UPDATE student_rotations 
               SET status = 'cleared', is_cleared = true, 
                   cleared_at = CURRENT_TIMESTAMP, cleared_by = $1,
                   final_score = $2, updated_at = CURRENT_TIMESTAMP
               WHERE id = $3`,
              [processedBy, performance.overallScore, row.student_rotation_id]
            );

            await client.query(
              `UPDATE students SET clearance_status = 'cleared' WHERE id = $1`,
              [row.student_id]
            );

            cleared++;
          } else {
            notCleared++;
          }
        } catch (err: any) {
          errors.push(`Student ${row.student_id}: ${err.message}`);
        }
      }

      await client.query('COMMIT');
    } catch (error) {
      await client.query('ROLLBACK');
      throw error;
    } finally {
      client.release();
    }

    return { processed, cleared, notCleared, errors };
  }
}

export const performanceService = new PerformanceService();
