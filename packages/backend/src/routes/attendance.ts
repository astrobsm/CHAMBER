import { Router, Request, Response, NextFunction } from 'express';
import { body, param, query, validationResult } from 'express-validator';
import { authenticate, authorize } from '../middleware/auth.js';
import { AttendanceService } from '../services/attendanceService.js';
import { UserRole, AttendanceType } from '../types/index.js';
import { logger } from '../utils/logger.js';

const router = Router();
const attendanceService = new AttendanceService();

// Validation middleware
const validate = (req: Request, res: Response, next: NextFunction) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ success: false, errors: errors.array() });
  }
  next();
};

/**
 * POST /api/attendance/sessions
 * Create a new attendance session (Assessor/Admin)
 */
router.post(
  '/sessions',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [
    body('rotation_id').isUUID(),
    body('attendance_type').isIn(Object.values(AttendanceType)),
    body('session_date').isDate(),
    body('start_time').matches(/^([01]\d|2[0-3]):([0-5]\d)$/),
    body('end_time').matches(/^([01]\d|2[0-3]):([0-5]\d)$/),
    body('location').optional().isString().isLength({ max: 200 }),
    body('gps_latitude').optional().isFloat({ min: -90, max: 90 }),
    body('gps_longitude').optional().isFloat({ min: -180, max: 180 }),
    body('gps_radius_meters').optional().isInt({ min: 50, max: 5000 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const session = await attendanceService.createSessionFromRoute({
        ...req.body,
        created_by: req.user!.userId,
      });

      res.status(201).json({ success: true, data: session });
    } catch (error) {
      logger.error('Error creating attendance session:', error);
      res.status(500).json({ success: false, message: 'Failed to create session' });
    }
  }
);

/**
 * GET /api/attendance/sessions/:id/qr
 * Generate QR code for attendance session
 */
router.get(
  '/sessions/:id/qr',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const qrData = await attendanceService.generateQRCode(req.params.id);
      res.json({ success: true, data: qrData });
    } catch (error) {
      logger.error('Error generating QR code:', error);
      res.status(500).json({ success: false, message: 'Failed to generate QR code' });
    }
  }
);

/**
 * POST /api/attendance/check-in
 * Student checks in using QR code
 */
router.post(
  '/check-in',
  authenticate,
  authorize([UserRole.STUDENT]),
  [
    body('qr_token').isString().notEmpty(),
    body('gps_latitude').optional().isFloat({ min: -90, max: 90 }),
    body('gps_longitude').optional().isFloat({ min: -180, max: 180 }),
    body('device_fingerprint').optional().isString(),
    body('offline_id').optional().isString(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await attendanceService.checkIn({
        userId: req.user!.userId,
        ...req.body,
      });

      res.json({ success: true, data: result });
    } catch (error: any) {
      logger.error('Error checking in:', error);
      res.status(400).json({ success: false, message: error.message || 'Check-in failed' });
    }
  }
);

/**
 * POST /api/attendance/mark
 * Assessor manually marks attendance
 */
router.post(
  '/mark',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [
    body('session_id').isUUID(),
    body('student_id').isUUID(),
    body('status').isIn(['present', 'absent', 'excused', 'late']),
    body('notes').optional().isString().isLength({ max: 500 }),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const result = await attendanceService.markAttendanceManual({
        ...req.body,
        marked_by: req.user!.userId,
      });

      res.json({ success: true, data: result });
    } catch (error: any) {
      logger.error('Error marking attendance:', error);
      res.status(400).json({ success: false, message: error.message || 'Failed to mark attendance' });
    }
  }
);

/**
 * GET /api/attendance/my-records
 * Get current student's attendance records
 */
router.get(
  '/my-records',
  authenticate,
  authorize([UserRole.STUDENT]),
  [
    query('rotation_id').optional().isUUID(),
    query('type').optional().isIn(Object.values(AttendanceType)),
    query('from_date').optional().isDate(),
    query('to_date').optional().isDate(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      // First get the student ID from user ID
      const studentResult = await require('../config/database').query(
        'SELECT id FROM students WHERE user_id = $1',
        [req.user!.userId]
      );
      
      if (studentResult.rows.length === 0) {
        return res.status(404).json({ success: false, message: 'Student not found' });
      }
      
      const studentId = studentResult.rows[0].id;
      const rotationId = req.query.rotation_id as string | undefined;
      
      const records = await attendanceService.getStudentAttendance(
        studentId,
        rotationId
      );

      res.json({ success: true, data: records });
    } catch (error) {
      logger.error('Error fetching attendance records:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch records' });
    }
  }
);

/**
 * GET /api/attendance/summary
 * Get attendance summary for student
 */
router.get(
  '/summary',
  authenticate,
  authorize([UserRole.STUDENT]),
  async (req: Request, res: Response) => {
    try {
      const summary = await attendanceService.getAttendanceSummary(req.user!.userId);
      res.json({ success: true, data: summary });
    } catch (error) {
      logger.error('Error fetching attendance summary:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch summary' });
    }
  }
);

/**
 * GET /api/attendance/sessions
 * List attendance sessions (Assessor/Admin)
 */
router.get(
  '/sessions',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [
    query('rotation_id').optional().isUUID(),
    query('date').optional().isDate(),
    query('type').optional().isIn(Object.values(AttendanceType)),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const sessions = await attendanceService.listSessions(req.query as Record<string, string>);
      res.json({ success: true, data: sessions });
    } catch (error) {
      logger.error('Error listing sessions:', error);
      res.status(500).json({ success: false, message: 'Failed to list sessions' });
    }
  }
);

/**
 * GET /api/attendance/sessions/:id/records
 * Get attendance records for a session
 */
router.get(
  '/sessions/:id/records',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const records = await attendanceService.getSessionRecords(req.params.id);
      res.json({ success: true, data: records });
    } catch (error) {
      logger.error('Error fetching session records:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch records' });
    }
  }
);

/**
 * GET /api/attendance/by-date
 * Get attendance records by date (Assessor/Admin)
 */
router.get(
  '/by-date',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [
    query('date').isDate(),
    query('rotation_id').optional().isUUID(),
  ],
  validate,
  async (req: Request, res: Response) => {
    try {
      const { date, rotation_id } = req.query;
      const records = await attendanceService.getAttendanceByDate(
        date as string,
        rotation_id as string | undefined
      );
      res.json({ success: true, data: { records } });
    } catch (error) {
      logger.error('Error fetching attendance by date:', error);
      res.status(500).json({ success: false, message: 'Failed to fetch records' });
    }
  }
);

/**
 * PUT /api/attendance/records/:id/verify
 * Verify an attendance record
 */
router.put(
  '/records/:id/verify',
  authenticate,
  authorize([UserRole.ASSESSOR, UserRole.ADMIN]),
  [param('id').isUUID()],
  validate,
  async (req: Request, res: Response) => {
    try {
      const record = await attendanceService.verifyRecord(req.params.id, req.user!.userId);
      res.json({ success: true, data: record });
    } catch (error) {
      logger.error('Error verifying record:', error);
      res.status(500).json({ success: false, message: 'Failed to verify record' });
    }
  }
);

export default router;
