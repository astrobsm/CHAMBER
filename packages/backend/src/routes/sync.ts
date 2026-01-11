import { Router, Request, Response, NextFunction } from 'express';
import { body, validationResult } from 'express-validator';
import { authenticate } from '../middleware/auth';
import { query as dbQuery, getClient } from '../config/database';
import { logger } from '../utils/logger';
import { validateIntegrityHash, generateOfflineId } from '../utils/helpers';

const router = Router();

const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * POST /api/sync/push
 * Push offline data to server
 */
router.post(
  '/push',
  authenticate,
  [
    body('data').isArray(),
    body('data.*.type').isIn(['attendance', 'test_answer', 'participation']),
    body('data.*.payload').isObject(),
    body('data.*.offline_id').isString(),
    body('data.*.integrity_hash').isString(),
    body('data.*.timestamp').isISO8601(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { data } = req.body;
      const userId = req.user!.userId;
      const results: unknown[] = [];
      const conflicts: unknown[] = [];
      const errors: unknown[] = [];
      
      const client = await getClient();
      
      try {
        await client.query('BEGIN');
        
        for (const item of data) {
          try {
            // Validate integrity hash
            if (!validateIntegrityHash(item.payload, item.integrity_hash)) {
              errors.push({
                offline_id: item.offline_id,
                error: 'Integrity check failed',
              });
              continue;
            }
            
            // Check for duplicate offline_id
            const existing = await client.query(
              `SELECT id FROM offline_sync_log WHERE offline_id = $1`,
              [item.offline_id]
            );
            
            if (existing.rows.length > 0) {
              // Already synced
              results.push({ offline_id: item.offline_id, status: 'already_synced' });
              continue;
            }
            
            // Process based on type
            let result;
            switch (item.type) {
              case 'attendance':
                result = await syncAttendance(client, userId, item.payload, item.offline_id);
                break;
              case 'test_answer':
                result = await syncTestAnswer(client, userId, item.payload, item.offline_id);
                break;
              case 'participation':
                result = await syncParticipation(client, userId, item.payload, item.offline_id);
                break;
            }
            
            if (result && 'conflict' in result && result.conflict) {
              conflicts.push({ offline_id: item.offline_id, ...result });
            } else if (result) {
              results.push({ offline_id: item.offline_id, status: 'synced', ...result });
            }
            
            // Log sync
            await client.query(
              `INSERT INTO offline_sync_log (offline_id, user_id, data_type, synced_at)
               VALUES ($1, $2, $3, CURRENT_TIMESTAMP)`,
              [item.offline_id, userId, item.type]
            );
          } catch (err: any) {
            errors.push({ offline_id: item.offline_id, error: err.message });
          }
        }
        
        await client.query('COMMIT');
        
        res.json({
          success: true,
          data: {
            synced: results.length,
            conflicts: conflicts.length,
            errors: errors.length,
            details: { results, conflicts, errors },
          },
        });
      } catch (error) {
        await client.query('ROLLBACK');
        throw error;
      } finally {
        client.release();
      }
    } catch (error) {
      logger.error('Error syncing data:', error);
      res.status(500).json({ success: false, message: 'Sync failed' });
    }
  }
);

/**
 * GET /api/sync/pull
 * Pull latest data for offline caching
 */
router.get('/pull', authenticate, async (req: Request, res: Response) => {
  try {
    const userId = req.user!.userId;
    const lastSync = req.query.last_sync as string;
    
    // Get student info
    const studentResult = await dbQuery(
      `SELECT s.id, s.level FROM students s WHERE s.user_id = $1`,
      [userId]
    );
    
    if (studentResult.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Student not found' });
    }
    
    const student = studentResult.rows[0];
    let whereClause = '';
    const params: unknown[] = [student.id];
    
    if (lastSync) {
      whereClause = 'AND updated_at > $2';
      params.push(lastSync);
    }
    
    // Get active rotation
    const rotationResult = await dbQuery(
      `SELECT sr.*, r.*, rc.name as category_name
       FROM student_rotations sr
       JOIN rotations r ON sr.rotation_id = r.id
       JOIN rotation_categories rc ON r.category_id = rc.id
       WHERE sr.student_id = $1 AND sr.status = 'active'`,
      [student.id]
    );
    
    // Get upcoming attendance sessions
    const sessionsResult = await dbQuery(
      `SELECT * FROM attendance_sessions
       WHERE rotation_id = $1 AND session_date >= CURRENT_DATE
       ORDER BY session_date, start_time`,
      [rotationResult.rows[0]?.rotation_id]
    );
    
    // Get CME content for student's level
    const cmeResult = await dbQuery(
      `SELECT c.id, c.title, c.content_type, c.file_url
       FROM cme_contents c
       JOIN rotation_categories rc ON c.category_id = rc.id
       WHERE rc.level = $1 AND c.is_active = true ${whereClause}`,
      [student.level, ...(lastSync ? [lastSync] : [])]
    );
    
    // Get participation types
    const participationTypes = await dbQuery(
      `SELECT * FROM participation_types WHERE is_active = true`
    );
    
    res.json({
      success: true,
      data: {
        activeRotation: rotationResult.rows[0] || null,
        upcomingSessions: sessionsResult.rows,
        cmeContent: cmeResult.rows,
        participationTypes: participationTypes.rows,
        syncTimestamp: new Date().toISOString(),
      },
    });
  } catch (error) {
    logger.error('Error pulling sync data:', error);
    res.status(500).json({ success: false, message: 'Pull failed' });
  }
});

/**
 * GET /api/sync/status
 * Check sync status
 */
router.get('/status', authenticate, async (req: Request, res: Response) => {
  try {
    const lastSync = await dbQuery(
      `SELECT MAX(synced_at) as last_sync, COUNT(*) as total_synced
       FROM offline_sync_log
       WHERE user_id = $1`,
      [req.user!.userId]
    );
    
    const pending = await dbQuery(
      `SELECT COUNT(*) as pending
       FROM attendance_records
       WHERE sync_status = 'pending'`
    );
    
    res.json({
      success: true,
      data: {
        lastSync: lastSync.rows[0].last_sync,
        totalSynced: parseInt(lastSync.rows[0].total_synced),
        pendingCount: parseInt(pending.rows[0].pending),
        serverTime: new Date().toISOString(),
      },
    });
  } catch (error) {
    logger.error('Error checking sync status:', error);
    res.status(500).json({ success: false, message: 'Failed to check status' });
  }
});

// Helper functions for syncing different data types
async function syncAttendance(client: any, userId: string, payload: any, offlineId: string) {
  // Get student ID
  const studentResult = await client.query(
    `SELECT s.id FROM students s WHERE s.user_id = $1`,
    [userId]
  );
  
  if (studentResult.rows.length === 0) {
    throw new Error('Student not found');
  }
  
  const studentId = studentResult.rows[0].id;
  
  // Check for existing record
  const existing = await client.query(
    `SELECT id, status FROM attendance_records
     WHERE session_id = $1 AND student_id = $2`,
    [payload.session_id, studentId]
  );
  
  if (existing.rows.length > 0) {
    // Conflict - record already exists
    return {
      conflict: true,
      existing: existing.rows[0],
      resolution: 'Server record preserved',
    };
  }
  
  // Insert new record
  const result = await client.query(
    `INSERT INTO attendance_records 
     (session_id, student_id, status, check_in_time, check_in_gps_latitude, 
      check_in_gps_longitude, offline_id, sync_status)
     VALUES ($1, $2, $3, $4, $5, $6, $7, 'synced')
     RETURNING id`,
    [
      payload.session_id,
      studentId,
      payload.status,
      payload.check_in_time,
      payload.gps_latitude,
      payload.gps_longitude,
      offlineId,
    ]
  );
  
  return { id: result.rows[0].id };
}

async function syncTestAnswer(client: any, userId: string, payload: any, offlineId: string) {
  // Verify test belongs to user
  const testResult = await client.query(
    `SELECT t.id FROM tests t
     JOIN students s ON t.student_id = s.id
     WHERE t.id = $1 AND s.user_id = $2`,
    [payload.test_id, userId]
  );
  
  if (testResult.rows.length === 0) {
    throw new Error('Test not found or access denied');
  }
  
  // Check for existing answer
  const existing = await client.query(
    `SELECT id FROM test_answers WHERE test_id = $1 AND question_id = $2`,
    [payload.test_id, payload.question_id]
  );
  
  if (existing.rows.length > 0) {
    return {
      conflict: true,
      message: 'Answer already submitted',
    };
  }
  
  // Get correct answer
  const questionResult = await client.query(
    `SELECT correct_option FROM questions WHERE id = $1`,
    [payload.question_id]
  );
  
  const isCorrect = questionResult.rows[0]?.correct_option === payload.selected_option;
  
  // Insert answer
  const result = await client.query(
    `INSERT INTO test_answers 
     (test_id, question_id, selected_option, is_correct, time_spent_seconds, offline_id)
     VALUES ($1, $2, $3, $4, $5, $6)
     RETURNING id`,
    [
      payload.test_id,
      payload.question_id,
      payload.selected_option,
      isCorrect,
      payload.time_spent_seconds,
      offlineId,
    ]
  );
  
  return { id: result.rows[0].id, is_correct: isCorrect };
}

async function syncParticipation(client: any, userId: string, payload: any, offlineId: string) {
  // Only assessors can sync participation records
  const assessorResult = await client.query(
    `SELECT id FROM assessors WHERE user_id = $1`,
    [userId]
  );
  
  if (assessorResult.rows.length === 0) {
    throw new Error('Not authorized to sync participation records');
  }
  
  const assessorId = assessorResult.rows[0].id;
  
  // Insert participation record
  const result = await client.query(
    `INSERT INTO participation_records 
     (student_id, participation_type_id, session_date, score, assessor_id, 
      feedback, offline_id, sync_status)
     VALUES ($1, $2, $3, $4, $5, $6, $7, 'synced')
     RETURNING id`,
    [
      payload.student_id,
      payload.participation_type_id,
      payload.session_date,
      payload.score,
      assessorId,
      payload.feedback,
      offlineId,
    ]
  );
  
  return { id: result.rows[0].id };
}

export default router;
