import { Router, Request, Response, NextFunction } from 'express';
import { body, validationResult } from 'express-validator';
import { authenticate } from '../middleware/auth';
import { query as dbQuery, getClient } from '../config/database';
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
// PUSH: Client → Server (upload offline changes)
// ============================================================================

/**
 * POST /api/sync/push
 * Push offline data to server with conflict resolution
 */
router.post(
  '/push',
  authenticate,
  [
    body('data').isArray().withMessage('data must be an array'),
    body('data.*.type').isIn(['attendance', 'test_answer', 'participation', 'cme_progress']),
    body('data.*.payload').isObject(),
    body('data.*.offline_id').isString(),
    body('data.*.timestamp').isISO8601(),
    body('deviceId').optional().isString(),
  ],
  validate,
  async (req: Request, res: Response) => {
    const startTime = Date.now();
    try {
      const { data, deviceId } = req.body;
      const userId = req.user!.userId;
      const results: unknown[] = [];
      const conflicts: unknown[] = [];
      const errors: unknown[] = [];

      const client = await getClient();

      try {
        await client.query('BEGIN');

        // Register/update device if deviceId provided
        if (deviceId) {
          await client.query(
            `INSERT INTO device_registrations (user_id, device_fingerprint, last_seen_at)
             VALUES ($1, $2, NOW())
             ON CONFLICT (user_id, device_fingerprint) DO UPDATE SET last_seen_at = NOW()`,
            [userId, deviceId]
          );
        }

        for (const item of data) {
          try {
            // Idempotency: check for duplicate offline_id
            const existing = await client.query(
              `SELECT id FROM offline_sync_log WHERE offline_id = $1`,
              [item.offline_id]
            );

            if (existing.rows.length > 0) {
              results.push({
                offline_id: item.offline_id,
                status: 'already_synced',
                server_id: existing.rows[0].id,
              });
              continue;
            }

            // Process based on type
            let result;
            switch (item.type) {
              case 'attendance':
                result = await syncAttendance(client, userId, item.payload, item.offline_id, item.timestamp);
                break;
              case 'test_answer':
                result = await syncTestAnswer(client, userId, item.payload, item.offline_id, item.timestamp);
                break;
              case 'participation':
                result = await syncParticipation(client, userId, item.payload, item.offline_id, item.timestamp);
                break;
              case 'cme_progress':
                result = await syncCMEProgress(client, userId, item.payload, item.offline_id, item.timestamp);
                break;
            }

            if (result && 'conflict' in result && result.conflict) {
              conflicts.push({
                offline_id: item.offline_id,
                type: item.type,
                ...result,
              });
            } else if (result) {
              // Log sync success
              await client.query(
                `INSERT INTO offline_sync_log (offline_id, user_id, data_type, synced_at)
                 VALUES ($1, $2, $3, NOW())`,
                [item.offline_id, userId, item.type]
              );
              results.push({
                offline_id: item.offline_id,
                status: 'synced',
                server_id: result.id || null,
                ...result,
              });
            }
          } catch (err: any) {
            logger.error(`Sync error for item ${item.offline_id}:`, err);
            errors.push({
              offline_id: item.offline_id,
              type: item.type,
              error: err.message,
              retryable: !err.message.includes('not found') && !err.message.includes('denied'),
            });
          }
        }

        await client.query('COMMIT');

        const duration = Date.now() - startTime;
        logger.info(`Push sync: ${results.length} synced, ${conflicts.length} conflicts, ${errors.length} errors (${duration}ms)`);

        res.json({
          success: true,
          data: {
            synced: results.length,
            conflicts: conflicts.length,
            errors: errors.length,
            details: { results, conflicts, errors },
            serverTime: new Date().toISOString(),
            duration,
          },
        });
      } catch (error) {
        await client.query('ROLLBACK');
        throw error;
      } finally {
        client.release();
      }
    } catch (error) {
      logger.error('Push sync failed:', error);
      res.status(500).json({ success: false, message: 'Push sync failed' });
    }
  }
);

// ============================================================================
// PULL: Server → Client (download latest data for offline caching)
// ============================================================================

/**
 * GET /api/sync/pull
 * Pull latest server data for offline caching with delta support
 * 
 * Query params:
 *   last_sync  — ISO8601 timestamp of last successful sync
 *   entities   — comma-separated entity types to pull
 *   full       — 'true' forces full sync (ignores last_sync)
 */
router.get('/pull', authenticate, async (req: Request, res: Response) => {
  try {
    const userId = req.user!.userId;
    const userRole = req.user!.role;
    const lastSync = req.query.last_sync as string;
    const requestedEntities = (req.query.entities as string)?.split(',').filter(Boolean) || [];
    const fullSync = req.query.full === 'true';

    const syncTimestamp = new Date().toISOString();
    const deltaFilter = lastSync && !fullSync;

    // Build response based on user role
    const responseData: Record<string, unknown> = {};

    if (userRole === 'student') {
      responseData.studentData = await pullStudentData(userId, deltaFilter ? lastSync : null, requestedEntities);
    } else if (userRole === 'assessor') {
      responseData.assessorData = await pullAssessorData(userId, deltaFilter ? lastSync : null, requestedEntities);
    } else if (userRole === 'admin') {
      responseData.adminData = await pullAdminData(deltaFilter ? lastSync : null, requestedEntities);
    }

    // Common data for all roles
    responseData.systemConfig = await pullSystemConfig(deltaFilter ? lastSync : null);
    responseData.participationTypes = await pullParticipationTypes();

    res.json({
      success: true,
      data: {
        ...responseData,
        syncTimestamp,
        isFullSync: !deltaFilter,
        serverTime: new Date().toISOString(),
      },
    });
  } catch (error) {
    logger.error('Pull sync failed:', error);
    res.status(500).json({ success: false, message: 'Pull sync failed' });
  }
});

// ============================================================================
// SYNC STATUS & MANAGEMENT
// ============================================================================

/**
 * GET /api/sync/status
 * Check sync status with detailed breakdown
 */
router.get('/status', authenticate, async (req: Request, res: Response) => {
  try {
    const userId = req.user!.userId;

    const [lastSyncResult, pendingResult, deviceResult, conflictsResult] = await Promise.all([
      dbQuery(
        `SELECT MAX(synced_at) as last_sync, COUNT(*) as total_synced
         FROM offline_sync_log WHERE user_id = $1`,
        [userId]
      ),
      dbQuery(
        `SELECT sync_status, COUNT(*) as count
         FROM sync_queue WHERE user_id = $1
         GROUP BY sync_status`,
        [userId]
      ),
      dbQuery(
        `SELECT device_fingerprint, device_name, device_type, last_seen_at, is_trusted
         FROM device_registrations WHERE user_id = $1
         ORDER BY last_seen_at DESC`,
        [userId]
      ),
      dbQuery(
        `SELECT COUNT(*) as count FROM sync_queue
         WHERE user_id = $1 AND sync_status = 'conflict'`,
        [userId]
      ),
    ]);

    const pendingBreakdown: Record<string, number> = {};
    pendingResult.rows.forEach((row: any) => {
      pendingBreakdown[row.sync_status] = parseInt(row.count);
    });

    res.json({
      success: true,
      data: {
        lastSync: lastSyncResult.rows[0].last_sync,
        totalSynced: parseInt(lastSyncResult.rows[0].total_synced),
        pending: pendingBreakdown,
        conflicts: parseInt(conflictsResult.rows[0].count),
        devices: deviceResult.rows,
        serverTime: new Date().toISOString(),
      },
    });
  } catch (error) {
    logger.error('Error checking sync status:', error);
    res.status(500).json({ success: false, message: 'Failed to check status' });
  }
});

/**
 * POST /api/sync/resolve-conflicts
 * Resolve sync conflicts manually
 */
router.post(
  '/resolve-conflicts',
  authenticate,
  [
    body('resolutions').isArray(),
    body('resolutions.*.conflict_id').isString(),
    body('resolutions.*.strategy').isIn(['client_wins', 'server_wins', 'merge']),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { resolutions } = req.body;
      const userId = req.user!.userId;
      const resolved: string[] = [];

      const client = await getClient();
      try {
        await client.query('BEGIN');

        for (const resolution of resolutions) {
          const conflict = await client.query(
            `SELECT * FROM sync_queue WHERE id = $1 AND user_id = $2 AND sync_status = 'conflict'`,
            [resolution.conflict_id, userId]
          );

          if (conflict.rows.length === 0) continue;

          const item = conflict.rows[0];

          if (resolution.strategy === 'client_wins') {
            await client.query(
              `UPDATE sync_queue SET sync_status = 'pending',
               conflict_resolution = $1 WHERE id = $2`,
              [JSON.stringify({ strategy: 'client_wins', resolved_at: new Date() }), item.id]
            );
          } else if (resolution.strategy === 'server_wins') {
            await client.query(
              `UPDATE sync_queue SET sync_status = 'synced', processed_at = NOW(),
               conflict_resolution = $1 WHERE id = $2`,
              [JSON.stringify({ strategy: 'server_wins', resolved_at: new Date() }), item.id]
            );
          }

          resolved.push(item.id);
        }

        await client.query('COMMIT');

        res.json({
          success: true,
          data: { resolved: resolved.length, ids: resolved },
        });
      } catch (error) {
        await client.query('ROLLBACK');
        throw error;
      } finally {
        client.release();
      }
    } catch (error) {
      logger.error('Error resolving conflicts:', error);
      res.status(500).json({ success: false, message: 'Failed to resolve conflicts' });
    }
  }
);

/**
 * POST /api/sync/register-device
 * Register a device for sync tracking
 */
router.post(
  '/register-device',
  authenticate,
  [
    body('deviceFingerprint').isString(),
    body('deviceName').optional().isString(),
    body('deviceType').optional().isIn(['mobile', 'tablet', 'desktop']),
    body('browser').optional().isString(),
    body('os').optional().isString(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const userId = req.user!.userId;
      const { deviceFingerprint, deviceName, deviceType, browser, os } = req.body;

      const result = await dbQuery(
        `INSERT INTO device_registrations (user_id, device_fingerprint, device_name, device_type, browser, os, last_seen_at)
         VALUES ($1, $2, $3, $4, $5, $6, NOW())
         ON CONFLICT (user_id, device_fingerprint) DO UPDATE SET
           device_name = COALESCE($3, device_registrations.device_name),
           device_type = COALESCE($4, device_registrations.device_type),
           browser = COALESCE($5, device_registrations.browser),
           os = COALESCE($6, device_registrations.os),
           last_seen_at = NOW()
         RETURNING id, device_fingerprint, is_trusted`,
        [userId, deviceFingerprint, deviceName, deviceType, browser, os]
      );

      res.json({ success: true, data: result.rows[0] });
    } catch (error) {
      logger.error('Error registering device:', error);
      res.status(500).json({ success: false, message: 'Failed to register device' });
    }
  }
);

// ============================================================================
// PUSH HANDLERS
// ============================================================================

async function syncAttendance(client: any, userId: string, payload: any, offlineId: string, clientTimestamp: string) {
  const studentResult = await client.query(
    `SELECT s.id FROM students s WHERE s.user_id = $1`, [userId]
  );
  if (studentResult.rows.length === 0) throw new Error('Student not found');
  const studentId = studentResult.rows[0].id;

  // Conflict detection
  const existing = await client.query(
    `SELECT id, status, check_in_time, updated_at FROM attendance_records
     WHERE session_id = $1 AND student_id = $2`,
    [payload.session_id, studentId]
  );

  if (existing.rows.length > 0) {
    const serverRecord = existing.rows[0];
    const serverTime = new Date(serverRecord.updated_at).getTime();
    const clientTime = new Date(clientTimestamp).getTime();

    // Last-write-wins: client newer → update server
    if (clientTime > serverTime) {
      await client.query(
        `UPDATE attendance_records SET status = $1, check_in_time = $2,
         check_in_gps_latitude = $3, check_in_gps_longitude = $4,
         sync_status = 'synced', offline_id = $5, updated_at = NOW()
         WHERE id = $6`,
        [payload.status, payload.check_in_time, payload.gps_latitude,
         payload.gps_longitude, offlineId, serverRecord.id]
      );
      return { id: serverRecord.id, resolution: 'client_wins' };
    }

    return {
      conflict: true,
      server_record: { id: serverRecord.id, status: serverRecord.status },
      resolution: 'server_wins_newer',
    };
  }

  const result = await client.query(
    `INSERT INTO attendance_records
     (session_id, student_id, status, check_in_time, check_in_gps_latitude,
      check_in_gps_longitude, offline_id, sync_status)
     VALUES ($1, $2, $3, $4, $5, $6, $7, 'synced') RETURNING id`,
    [payload.session_id, studentId, payload.status, payload.check_in_time,
     payload.gps_latitude, payload.gps_longitude, offlineId]
  );
  return { id: result.rows[0].id };
}

async function syncTestAnswer(client: any, userId: string, payload: any, offlineId: string, clientTimestamp: string) {
  const testResult = await client.query(
    `SELECT t.id FROM tests t JOIN students s ON t.student_id = s.id
     WHERE t.id = $1 AND s.user_id = $2`,
    [payload.test_id, userId]
  );
  if (testResult.rows.length === 0) throw new Error('Test not found or access denied');

  const existing = await client.query(
    `SELECT id FROM test_answers WHERE test_id = $1 AND question_id = $2`,
    [payload.test_id, payload.question_id]
  );
  if (existing.rows.length > 0) {
    return { conflict: true, message: 'Answer already submitted', server_id: existing.rows[0].id };
  }

  const questionResult = await client.query(
    `SELECT correct_option FROM questions WHERE id = $1`, [payload.question_id]
  );
  const isCorrect = questionResult.rows[0]?.correct_option === payload.selected_option;

  const result = await client.query(
    `INSERT INTO test_answers
     (test_id, question_id, question_index, selected_option, is_correct, time_spent_seconds, answered_at)
     VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id`,
    [payload.test_id, payload.question_id, payload.question_index || 0,
     payload.selected_option, isCorrect, payload.time_spent_seconds, clientTimestamp]
  );

  await client.query(
    `UPDATE tests SET questions_answered = questions_answered + 1,
     correct_answers = correct_answers + $1, updated_at = NOW() WHERE id = $2`,
    [isCorrect ? 1 : 0, payload.test_id]
  );

  return { id: result.rows[0].id, is_correct: isCorrect };
}

async function syncParticipation(client: any, userId: string, payload: any, offlineId: string, clientTimestamp: string) {
  const assessorResult = await client.query(
    `SELECT id FROM assessors WHERE user_id = $1`, [userId]
  );
  if (assessorResult.rows.length === 0) throw new Error('Not authorized to sync participation records');
  const assessorId = assessorResult.rows[0].id;

  const result = await client.query(
    `INSERT INTO participation_records
     (student_id, participation_type_id, session_date, score, assessor_id,
      feedback, offline_id, sync_status)
     VALUES ($1, $2, $3, $4, $5, $6, $7, 'synced')
     ON CONFLICT DO NOTHING RETURNING id`,
    [payload.student_id, payload.participation_type_id, payload.session_date,
     payload.score, assessorId, payload.feedback, offlineId]
  );
  if (result.rows.length === 0) return { conflict: true, message: 'Record already exists' };
  return { id: result.rows[0].id };
}

async function syncCMEProgress(client: any, userId: string, payload: any, offlineId: string, clientTimestamp: string) {
  const studentResult = await client.query(
    `SELECT s.id FROM students s WHERE s.user_id = $1`, [userId]
  );
  if (studentResult.rows.length === 0) throw new Error('Student not found');
  const studentId = studentResult.rows[0].id;

  const result = await client.query(
    `INSERT INTO cme_completions
     (student_id, cme_content_id, progress_percentage, time_spent_seconds,
      is_completed, points_earned, sync_status, offline_id, started_at)
     VALUES ($1, $2, $3, $4, $5, $6, 'synced', $7, $8)
     ON CONFLICT (student_id, cme_content_id) DO UPDATE SET
       progress_percentage = GREATEST(cme_completions.progress_percentage, $3),
       time_spent_seconds = cme_completions.time_spent_seconds + $4,
       is_completed = cme_completions.is_completed OR $5,
       points_earned = GREATEST(cme_completions.points_earned, $6),
       sync_status = 'synced', updated_at = NOW()
     RETURNING id, progress_percentage, is_completed`,
    [studentId, payload.cme_content_id, payload.progress_percentage || 0,
     payload.time_spent_seconds || 0, payload.is_completed || false,
     payload.points_earned || 0, offlineId, clientTimestamp]
  );
  return { id: result.rows[0].id, progress: result.rows[0].progress_percentage };
}

// ============================================================================
// PULL HANDLERS
// ============================================================================

async function pullStudentData(userId: string, lastSync: string | null, requestedEntities: string[]) {
  const studentResult = await dbQuery(
    `SELECT s.id, s.level, s.current_rotation_id FROM students s WHERE s.user_id = $1`, [userId]
  );
  if (studentResult.rows.length === 0) return null;
  const student = studentResult.rows[0];
  const shouldPull = (e: string) => requestedEntities.length === 0 || requestedEntities.includes(e);
  const data: Record<string, unknown> = { studentId: student.id };

  if (shouldPull('rotation')) {
    const rotation = await dbQuery(
      `SELECT sr.*, r.name as rotation_name, r.start_date, r.end_date,
       rc.name as category_name, rc.code as category_code, rc.level
       FROM student_rotations sr
       JOIN rotations r ON sr.rotation_id = r.id
       JOIN rotation_categories rc ON r.category_id = rc.id
       WHERE sr.student_id = $1 AND sr.status = 'active'`, [student.id]
    );
    data.activeRotation = rotation.rows[0] || null;
  }

  if (shouldPull('attendance')) {
    const params: any[] = [student.id];
    let deltaWhere = '';
    if (lastSync) { deltaWhere = 'AND ar.updated_at > $2'; params.push(lastSync); }
    const attendance = await dbQuery(
      `SELECT ar.*, ats.attendance_type, ats.session_date, ats.location
       FROM attendance_records ar
       JOIN attendance_sessions ats ON ar.session_id = ats.id
       WHERE ar.student_id = $1 ${deltaWhere}
       ORDER BY ats.session_date DESC LIMIT 200`, params
    );
    data.attendanceRecords = attendance.rows;
  }

  if (shouldPull('sessions')) {
    const sessions = await dbQuery(
      `SELECT * FROM attendance_sessions
       WHERE rotation_id = $1 AND session_date >= CURRENT_DATE AND is_active = true
       ORDER BY session_date, start_time LIMIT 30`,
      [student.current_rotation_id]
    );
    data.upcomingSessions = sessions.rows;
  }

  if (shouldPull('tests')) {
    const params: any[] = [student.id];
    let deltaWhere = '';
    if (lastSync) { deltaWhere = 'AND updated_at > $2'; params.push(lastSync); }
    const tests = await dbQuery(
      `SELECT id, rotation_id, test_type, status, total_questions, duration_minutes,
       started_at, completed_at, score, percentage, questions_answered
       FROM tests WHERE student_id = $1 ${deltaWhere}
       ORDER BY created_at DESC`, params
    );
    data.tests = tests.rows;
  }

  if (shouldPull('cme')) {
    const cme = await dbQuery(
      `SELECT cc.id, cc.title, cc.content_type, cc.file_url, cc.is_required, cc.points_value,
       comp.progress_percentage, comp.is_completed, comp.points_earned
       FROM cme_contents cc
       JOIN rotation_categories rc ON cc.category_id = rc.id
       LEFT JOIN cme_completions comp ON cc.id = comp.cme_content_id AND comp.student_id = $1
       WHERE rc.level = $2 AND cc.is_active = true`,
      [student.id, student.level]
    );
    data.cmeContent = cme.rows;
  }

  if (shouldPull('performance')) {
    const params: any[] = [student.id];
    let deltaWhere = '';
    if (lastSync) { deltaWhere = 'AND updated_at > $2'; params.push(lastSync); }
    const perf = await dbQuery(
      `SELECT * FROM performance_summaries WHERE student_id = $1 ${deltaWhere}`, params
    );
    data.performanceSummaries = perf.rows;
  }

  if (shouldPull('notifications')) {
    const notifs = await dbQuery(
      `SELECT * FROM notifications WHERE user_id = $1 AND is_read = false
       ORDER BY created_at DESC LIMIT 50`, [userId]
    );
    data.notifications = notifs.rows;
  }

  return data;
}

async function pullAssessorData(userId: string, lastSync: string | null, requestedEntities: string[]) {
  const assessorResult = await dbQuery(
    `SELECT a.id, a.department, a.unit FROM assessors a WHERE a.user_id = $1`, [userId]
  );
  if (assessorResult.rows.length === 0) return null;
  const shouldPull = (e: string) => requestedEntities.length === 0 || requestedEntities.includes(e);
  const data: Record<string, unknown> = { assessorId: assessorResult.rows[0].id };

  if (shouldPull('rotations')) {
    const rotations = await dbQuery(
      `SELECT r.*, rc.name as category_name, rc.level,
       (SELECT COUNT(*) FROM student_rotations sr WHERE sr.rotation_id = r.id AND sr.status = 'active') as student_count
       FROM rotations r JOIN rotation_categories rc ON r.category_id = rc.id
       WHERE r.is_active = true ORDER BY r.start_date DESC`
    );
    data.activeRotations = rotations.rows;
  }

  if (shouldPull('students')) {
    const students = await dbQuery(
      `SELECT s.id, s.first_name, s.last_name, s.matriculation_number, s.level,
       sr.rotation_id, sr.status as rotation_status
       FROM students s JOIN student_rotations sr ON s.id = sr.student_id
       WHERE sr.status = 'active' ORDER BY s.last_name, s.first_name`
    );
    data.students = students.rows;
  }

  if (shouldPull('sessions')) {
    const sessions = await dbQuery(
      `SELECT ats.*, r.name as rotation_name
       FROM attendance_sessions ats
       JOIN rotations r ON ats.rotation_id = r.id
       WHERE ats.session_date = CURRENT_DATE AND ats.is_active = true
       ORDER BY ats.start_time`
    );
    data.todaySessions = sessions.rows;
  }

  return data;
}

async function pullAdminData(lastSync: string | null, requestedEntities: string[]) {
  const shouldPull = (e: string) => requestedEntities.length === 0 || requestedEntities.includes(e);
  const data: Record<string, unknown> = {};

  if (shouldPull('stats')) {
    const [users, rotations, questions] = await Promise.all([
      dbQuery(`SELECT role, COUNT(*) as count FROM users WHERE is_active = true GROUP BY role`),
      dbQuery(`SELECT COUNT(*) as total, COUNT(CASE WHEN is_active THEN 1 END) as active FROM rotations`),
      dbQuery(`SELECT COUNT(*) as total FROM questions WHERE is_active = true`),
    ]);
    data.stats = {
      users: users.rows,
      rotations: rotations.rows[0],
      questions: parseInt(questions.rows[0].total),
    };
  }

  return data;
}

async function pullSystemConfig(lastSync: string | null) {
  const params: any[] = [];
  let deltaWhere = '';
  if (lastSync) { deltaWhere = 'AND updated_at > $1'; params.push(lastSync); }

  const result = await dbQuery(
    `SELECT config_key, config_value FROM system_config WHERE is_public = true ${deltaWhere}`, params
  );
  const config: Record<string, unknown> = {};
  result.rows.forEach((row: any) => { config[row.config_key] = row.config_value; });
  return config;
}

async function pullParticipationTypes() {
  const result = await dbQuery(`SELECT * FROM participation_types WHERE is_active = true`);
  return result.rows;
}

export default router;
