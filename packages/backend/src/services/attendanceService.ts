import { v4 as uuidv4 } from 'uuid';
import QRCode from 'qrcode';
import { query, getClient } from '../config/database.js';
import config from '../config/index.js';
import {
  AttendanceSession,
  AttendanceRecord,
  AttendanceType,
  AttendanceStatus,
  CreateAttendanceSessionRequest,
  MarkAttendanceRequest,
} from '../types/index.js';

export class AttendanceService {
  /**
   * Create a new attendance session with QR code
   */
  async createSession(
    data: CreateAttendanceSessionRequest,
    createdBy: string
  ): Promise<AttendanceSession & { qrCodeDataUrl: string }> {
    const sessionId = uuidv4();
    const qrToken = this.generateQRToken();
    const qrExpiry = new Date(
      Date.now() + config.qrCode.validityMinutes * 60 * 1000
    );

    const result = await query(
      `INSERT INTO attendance_sessions (
        id, rotation_id, attendance_type, session_date, start_time, end_time,
        location, gps_latitude, gps_longitude, gps_radius_meters,
        qr_code_token, qr_code_expires_at, created_by
      ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
      RETURNING *`,
      [
        sessionId,
        data.rotationId,
        data.attendanceType,
        data.sessionDate,
        data.startTime,
        data.endTime,
        data.location,
        data.gpsLatitude,
        data.gpsLongitude,
        data.gpsRadiusMeters || config.gps.radiusMeters,
        qrToken,
        qrExpiry,
        createdBy,
      ]
    );

    const session = result.rows[0];

    // Generate QR code data URL
    const qrData = JSON.stringify({
      sessionId: session.id,
      token: qrToken,
      expiresAt: qrExpiry.toISOString(),
      type: data.attendanceType,
    });

    const qrCodeDataUrl = await QRCode.toDataURL(qrData, {
      width: 300,
      margin: 2,
      color: {
        dark: '#006B3F', // UNTH Green
        light: '#FFFFFF',
      },
    });

    return { ...session, qrCodeDataUrl };
  }

  /**
   * Generate unique QR token
   */
  private generateQRToken(): string {
    const timestamp = Date.now().toString(36);
    const random = Math.random().toString(36).substring(2, 15);
    return `${timestamp}-${random}-${uuidv4().split('-')[0]}`;
  }

  /**
   * Regenerate QR code for existing session
   */
  async regenerateQRCode(sessionId: string): Promise<{
    qrToken: string;
    qrCodeDataUrl: string;
    expiresAt: Date;
  }> {
    const qrToken = this.generateQRToken();
    const qrExpiry = new Date(
      Date.now() + config.qrCode.validityMinutes * 60 * 1000
    );

    const result = await query(
      `UPDATE attendance_sessions 
       SET qr_code_token = $1, qr_code_expires_at = $2, updated_at = NOW()
       WHERE id = $3
       RETURNING *`,
      [qrToken, qrExpiry, sessionId]
    );

    if (result.rows.length === 0) {
      throw new Error('Session not found');
    }

    const session = result.rows[0];

    const qrData = JSON.stringify({
      sessionId: session.id,
      token: qrToken,
      expiresAt: qrExpiry.toISOString(),
      type: session.attendance_type,
    });

    const qrCodeDataUrl = await QRCode.toDataURL(qrData, {
      width: 300,
      margin: 2,
      color: {
        dark: '#006B3F',
        light: '#FFFFFF',
      },
    });

    return { qrToken, qrCodeDataUrl, expiresAt: qrExpiry };
  }

  /**
   * Mark attendance for a student
   */
  async markAttendance(
    studentId: string,
    data: MarkAttendanceRequest
  ): Promise<AttendanceRecord> {
    const client = await getClient();

    try {
      await client.query('BEGIN');

      // Verify session exists and is active
      const sessionResult = await client.query(
        `SELECT * FROM attendance_sessions WHERE id = $1 AND is_active = true`,
        [data.sessionId]
      );

      if (sessionResult.rows.length === 0) {
        throw new Error('Session not found or inactive');
      }

      const session = sessionResult.rows[0];

      // Check if already marked
      const existingRecord = await client.query(
        `SELECT id FROM attendance_records 
         WHERE session_id = $1 AND student_id = $2`,
        [data.sessionId, studentId]
      );

      if (existingRecord.rows.length > 0) {
        throw new Error('Attendance already marked for this session');
      }

      // Validate QR code if provided
      if (data.qrCodeToken) {
        if (session.qr_code_token !== data.qrCodeToken) {
          throw new Error('Invalid QR code');
        }

        if (new Date(session.qr_code_expires_at) < new Date()) {
          throw new Error('QR code has expired');
        }
      }

      // Validate GPS if required
      let isWithinRadius = true;
      if (session.gps_latitude && session.gps_longitude && data.gpsLatitude && data.gpsLongitude) {
        const distance = this.calculateDistance(
          session.gps_latitude,
          session.gps_longitude,
          data.gpsLatitude,
          data.gpsLongitude
        );

        isWithinRadius = distance <= session.gps_radius_meters;
      }

      // Get student's active rotation
      const rotationResult = await client.query(
        `SELECT id FROM student_rotations 
         WHERE student_id = $1 AND rotation_id = $2 AND status = 'active'`,
        [studentId, session.rotation_id]
      );

      const studentRotationId = rotationResult.rows[0]?.id;

      // Determine status (late if past start time + 15 minutes)
      const now = new Date();
      const sessionStart = new Date(`${session.session_date}T${session.start_time}`);
      const lateThreshold = new Date(sessionStart.getTime() + 15 * 60 * 1000);
      const status = now > lateThreshold ? AttendanceStatus.LATE : AttendanceStatus.PRESENT;

      // Create attendance record
      const recordId = uuidv4();
      const recordResult = await client.query(
        `INSERT INTO attendance_records (
          id, session_id, student_id, student_rotation_id, status,
          check_in_time, check_in_gps_latitude, check_in_gps_longitude,
          qr_code_used, device_fingerprint, is_verified, offline_id
        ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
        RETURNING *`,
        [
          recordId,
          data.sessionId,
          studentId,
          studentRotationId,
          status,
          now,
          data.gpsLatitude,
          data.gpsLongitude,
          data.qrCodeToken,
          data.deviceFingerprint,
          isWithinRadius,
          data.offlineId,
        ]
      );

      await client.query('COMMIT');

      // Trigger performance recalculation
      this.updateAttendanceScore(studentId, session.rotation_id).catch(console.error);

      return recordResult.rows[0];
    } catch (error) {
      await client.query('ROLLBACK');
      throw error;
    } finally {
      client.release();
    }
  }

  /**
   * Mark attendance by assessor (manual marking)
   */
  async markAttendanceByAssessor(
    sessionId: string,
    studentId: string,
    assessorId: string,
    status: AttendanceStatus,
    notes?: string
  ): Promise<AttendanceRecord> {
    // Check if record exists
    const existingResult = await query(
      `SELECT * FROM attendance_records WHERE session_id = $1 AND student_id = $2`,
      [sessionId, studentId]
    );

    if (existingResult.rows.length > 0) {
      // Update existing record
      const result = await query(
        `UPDATE attendance_records 
         SET status = $1, marked_by_assessor = $2, notes = $3, 
             is_verified = true, verified_by = $2, verified_at = NOW(), updated_at = NOW()
         WHERE session_id = $4 AND student_id = $5
         RETURNING *`,
        [status, assessorId, notes, sessionId, studentId]
      );
      return result.rows[0];
    }

    // Get session details
    const sessionResult = await query(
      `SELECT * FROM attendance_sessions WHERE id = $1`,
      [sessionId]
    );

    if (sessionResult.rows.length === 0) {
      throw new Error('Session not found');
    }

    const session = sessionResult.rows[0];

    // Get student rotation
    const rotationResult = await query(
      `SELECT id FROM student_rotations 
       WHERE student_id = $1 AND rotation_id = $2 AND status = 'active'`,
      [studentId, session.rotation_id]
    );

    // Create new record
    const recordId = uuidv4();
    const result = await query(
      `INSERT INTO attendance_records (
        id, session_id, student_id, student_rotation_id, status,
        check_in_time, marked_by_assessor, is_verified, verified_by, verified_at, notes
      ) VALUES ($1, $2, $3, $4, $5, NOW(), $6, true, $6, NOW(), $7)
      RETURNING *`,
      [
        recordId,
        sessionId,
        studentId,
        rotationResult.rows[0]?.id,
        status,
        assessorId,
        notes,
      ]
    );

    // Update attendance score
    this.updateAttendanceScore(studentId, session.rotation_id).catch(console.error);

    return result.rows[0];
  }

  /**
   * Calculate distance between two GPS coordinates (Haversine formula)
   */
  private calculateDistance(
    lat1: number,
    lon1: number,
    lat2: number,
    lon2: number
  ): number {
    const R = 6371e3; // Earth's radius in meters
    const φ1 = (lat1 * Math.PI) / 180;
    const φ2 = (lat2 * Math.PI) / 180;
    const Δφ = ((lat2 - lat1) * Math.PI) / 180;
    const Δλ = ((lon2 - lon1) * Math.PI) / 180;

    const a =
      Math.sin(Δφ / 2) * Math.sin(Δφ / 2) +
      Math.cos(φ1) * Math.cos(φ2) * Math.sin(Δλ / 2) * Math.sin(Δλ / 2);
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

    return R * c; // Distance in meters
  }

  /**
   * Update attendance score for a student
   */
  private async updateAttendanceScore(
    studentId: string,
    rotationId: string
  ): Promise<void> {
    // Get attendance summary by type
    const summaryResult = await query(
      `SELECT 
         ats.attendance_type,
         COUNT(*) as total_sessions,
         COUNT(CASE WHEN ar.status IN ('present', 'late') THEN 1 END) as present_count
       FROM attendance_sessions ats
       LEFT JOIN attendance_records ar ON ats.id = ar.session_id AND ar.student_id = $1
       WHERE ats.rotation_id = $2 AND ats.is_active = true
       GROUP BY ats.attendance_type`,
      [studentId, rotationId]
    );

    // Calculate scores
    const scores: Record<string, { score: number; sessions: number; present: number }> = {};

    for (const row of summaryResult.rows) {
      const percentage = row.total_sessions > 0
        ? (row.present_count / row.total_sessions) * 100
        : 0;

      scores[row.attendance_type] = {
        score: percentage,
        sessions: parseInt(row.total_sessions),
        present: parseInt(row.present_count),
      };
    }

    // Get rotation weights
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

    // Calculate weighted total
    const clinicScore = scores.clinic?.score || 0;
    const theatreScore = scores.theatre?.score || 0;
    const wardScore = scores.ward_rounds?.score || 0;

    const totalScore =
      (clinicScore * weights.attendance_weight_clinic +
        theatreScore * weights.attendance_weight_theatre +
        wardScore * weights.attendance_weight_ward) / 100;

    // Get student rotation ID
    const srResult = await query(
      `SELECT id FROM student_rotations WHERE student_id = $1 AND rotation_id = $2`,
      [studentId, rotationId]
    );

    if (srResult.rows.length === 0) return;

    const studentRotationId = srResult.rows[0].id;

    // Update or insert performance summary
    await query(
      `INSERT INTO performance_summaries (
        id, student_id, student_rotation_id, rotation_id,
        attendance_clinic_score, attendance_clinic_sessions, attendance_clinic_present,
        attendance_theatre_score, attendance_theatre_sessions, attendance_theatre_present,
        attendance_ward_score, attendance_ward_sessions, attendance_ward_present,
        attendance_total_score, last_calculated_at
      ) VALUES (
        $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, NOW()
      )
      ON CONFLICT (student_id, rotation_id) DO UPDATE SET
        attendance_clinic_score = $5,
        attendance_clinic_sessions = $6,
        attendance_clinic_present = $7,
        attendance_theatre_score = $8,
        attendance_theatre_sessions = $9,
        attendance_theatre_present = $10,
        attendance_ward_score = $11,
        attendance_ward_sessions = $12,
        attendance_ward_present = $13,
        attendance_total_score = $14,
        last_calculated_at = NOW(),
        updated_at = NOW()`,
      [
        uuidv4(),
        studentId,
        studentRotationId,
        rotationId,
        clinicScore,
        scores.clinic?.sessions || 0,
        scores.clinic?.present || 0,
        theatreScore,
        scores.theatre?.sessions || 0,
        scores.theatre?.present || 0,
        wardScore,
        scores.ward_rounds?.sessions || 0,
        scores.ward_rounds?.present || 0,
        totalScore,
      ]
    );
  }

  /**
   * Get attendance records for a student
   */
  async getStudentAttendance(
    studentId: string,
    rotationId?: string
  ): Promise<any[]> {
    let queryText = `
      SELECT ar.*, ats.attendance_type, ats.session_date, ats.start_time, 
             ats.end_time, ats.location, r.name as rotation_name
      FROM attendance_records ar
      JOIN attendance_sessions ats ON ar.session_id = ats.id
      JOIN rotations r ON ats.rotation_id = r.id
      WHERE ar.student_id = $1
    `;

    const params: any[] = [studentId];

    if (rotationId) {
      queryText += ' AND ats.rotation_id = $2';
      params.push(rotationId);
    }

    queryText += ' ORDER BY ats.session_date DESC, ats.start_time DESC';

    const result = await query(queryText, params);
    return result.rows;
  }

  /**
   * Get attendance sessions for a rotation
   */
  async getRotationSessions(rotationId: string): Promise<AttendanceSession[]> {
    const result = await query(
      `SELECT * FROM attendance_sessions 
       WHERE rotation_id = $1 AND is_active = true
       ORDER BY session_date DESC, start_time DESC`,
      [rotationId]
    );

    return result.rows;
  }

  /**
   * Get session attendance list
   */
  async getSessionAttendance(sessionId: string): Promise<any[]> {
    const result = await query(
      `SELECT ar.*, s.matriculation_number, s.first_name, s.last_name
       FROM attendance_records ar
       JOIN students s ON ar.student_id = s.id
       WHERE ar.session_id = $1
       ORDER BY s.last_name, s.first_name`,
      [sessionId]
    );

    return result.rows;
  }

  /**
   * Create attendance session (for routes) - wrapper method
   */
  async createSessionFromRoute(data: any): Promise<any> {
    return this.createSession(data, data.created_by);
  }

  /**
   * Generate QR code for a session
   */
  async generateQRCode(sessionId: string): Promise<{
    qrToken: string;
    qrCodeDataUrl: string;
    expiresAt: Date;
  }> {
    return this.regenerateQRCode(sessionId);
  }

  /**
   * Student check-in via QR code
   */
  async checkIn(data: {
    userId: string;
    qr_token: string;
    gps_latitude?: number;
    gps_longitude?: number;
    device_fingerprint?: string;
    offline_id?: string;
  }): Promise<any> {
    // Get student ID from user ID
    const studentResult = await query(
      `SELECT id FROM students WHERE user_id = $1`,
      [data.userId]
    );

    if (studentResult.rows.length === 0) {
      throw new Error('Student not found');
    }

    const studentId = studentResult.rows[0].id;

    // Validate QR token and get session
    const sessionResult = await query(
      `SELECT * FROM attendance_sessions 
       WHERE qr_code_token = $1 AND is_active = true`,
      [data.qr_token]
    );

    if (sessionResult.rows.length === 0) {
      throw new Error('Invalid QR code');
    }

    const session = sessionResult.rows[0];

    // Check if QR code has expired
    if (new Date(session.qr_code_expires_at) < new Date()) {
      throw new Error('QR code has expired');
    }

    // Mark attendance
    return this.markAttendance(studentId, {
      sessionId: session.id,
      qrCodeToken: data.qr_token,
      gpsLatitude: data.gps_latitude,
      gpsLongitude: data.gps_longitude,
      deviceFingerprint: data.device_fingerprint,
      offlineId: data.offline_id,
    });
  }

  /**
   * Manual attendance marking by assessor
   */
  async markAttendanceManual(data: {
    session_id: string;
    student_id: string;
    status: string;
    notes?: string;
    marked_by: string;
  }): Promise<any> {
    // Get assessor ID
    const assessorResult = await query(
      `SELECT id FROM assessors WHERE user_id = $1`,
      [data.marked_by]
    );

    const assessorId = assessorResult.rows[0]?.id;

    const result = await query(
      `INSERT INTO attendance_records 
       (session_id, student_id, status, marked_by_assessor, notes, check_in_time, is_verified)
       VALUES ($1, $2, $3, $4, $5, CURRENT_TIMESTAMP, true)
       ON CONFLICT (session_id, student_id) 
       DO UPDATE SET status = $3, marked_by_assessor = $4, notes = $5, 
                     updated_at = CURRENT_TIMESTAMP, is_verified = true
       RETURNING *`,
      [data.session_id, data.student_id, data.status, assessorId, data.notes]
    );

    return result.rows[0];
  }

  /**
   * Get student attendance with filters (from userId)
   */
  async getStudentAttendanceByUserId(
    userId: string,
    filters: Record<string, string>
  ): Promise<any[]> {
    const studentResult = await query(
      `SELECT id FROM students WHERE user_id = $1`,
      [userId]
    );

    if (studentResult.rows.length === 0) {
      return [];
    }

    return this.getStudentAttendance(studentResult.rows[0].id, filters.rotation_id);
  }

  /**
   * Get attendance summary for a student
   */
  async getAttendanceSummary(userId: string): Promise<any> {
    const studentResult = await query(
      `SELECT s.id, sr.rotation_id
       FROM students s
       LEFT JOIN student_rotations sr ON s.id = sr.student_id AND sr.status = 'active'
       WHERE s.user_id = $1`,
      [userId]
    );

    if (studentResult.rows.length === 0) {
      return null;
    }

    const { id: studentId, rotation_id: rotationId } = studentResult.rows[0];

    const result = await query(
      `SELECT 
         ats.attendance_type,
         COUNT(DISTINCT ats.id) as total_sessions,
         COUNT(ar.id) FILTER (WHERE ar.status = 'present') as present,
         COUNT(ar.id) FILTER (WHERE ar.status = 'late') as late,
         COUNT(ar.id) FILTER (WHERE ar.status = 'absent') as absent,
         COUNT(ar.id) FILTER (WHERE ar.status = 'excused') as excused
       FROM attendance_sessions ats
       LEFT JOIN attendance_records ar ON ats.id = ar.session_id AND ar.student_id = $1
       WHERE ats.rotation_id = $2 AND ats.is_active = true
       GROUP BY ats.attendance_type`,
      [studentId, rotationId]
    );

    return result.rows;
  }

  /**
   * List attendance sessions with filters
   */
  async listSessions(filters: Record<string, string>): Promise<any[]> {
    let whereClause = 'WHERE is_active = true';
    const params: unknown[] = [];
    let paramIndex = 1;

    if (filters.rotation_id) {
      whereClause += ` AND rotation_id = $${paramIndex++}`;
      params.push(filters.rotation_id);
    }

    if (filters.date) {
      whereClause += ` AND session_date = $${paramIndex++}`;
      params.push(filters.date);
    }

    if (filters.type) {
      whereClause += ` AND attendance_type = $${paramIndex++}`;
      params.push(filters.type);
    }

    const result = await query(
      `SELECT ats.*, r.name as rotation_name,
              (SELECT COUNT(*) FROM attendance_records ar WHERE ar.session_id = ats.id) as record_count
       FROM attendance_sessions ats
       JOIN rotations r ON ats.rotation_id = r.id
       ${whereClause}
       ORDER BY session_date DESC, start_time DESC`,
      params
    );

    return result.rows;
  }

  /**
   * Get session records
   */
  async getSessionRecords(sessionId: string): Promise<any[]> {
    return this.getSessionAttendance(sessionId);
  }

  /**
   * Get attendance records by date
   */
  async getAttendanceByDate(date: string, rotationId?: string): Promise<any[]> {
    let sql = `
      SELECT ar.*, s.first_name, s.last_name, s.matriculation_number,
             CONCAT(s.first_name, ' ', s.last_name) as student_name,
             s.level as student_level,
             ats.attendance_type, ats.location
      FROM attendance_records ar
      JOIN attendance_sessions ats ON ar.session_id = ats.id
      JOIN students s ON ar.student_id = s.id
      WHERE ats.session_date = $1
    `;
    const params: any[] = [date];
    
    if (rotationId) {
      sql += ` AND ats.rotation_id = $2`;
      params.push(rotationId);
    }
    
    sql += ` ORDER BY s.last_name, s.first_name`;
    
    const result = await query(sql, params);
    return result.rows;
  }

  /**
   * Verify an attendance record
   */
  async verifyRecord(recordId: string, verifiedBy: string): Promise<any> {
    const result = await query(
      `UPDATE attendance_records 
       SET is_verified = true, verified_by = $1, verified_at = CURRENT_TIMESTAMP,
           updated_at = CURRENT_TIMESTAMP
       WHERE id = $2
       RETURNING *`,
      [verifiedBy, recordId]
    );

    if (result.rows.length === 0) {
      throw new Error('Record not found');
    }

    return result.rows[0];
  }
}

export const attendanceService = new AttendanceService();
