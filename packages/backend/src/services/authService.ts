import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import { v4 as uuidv4 } from 'uuid';
import { query, getClient } from '../config/database';
import config from '../config/index';
import {
  User,
  Student,
  Assessor,
  Administrator,
  JWTPayload,
  UserRole,
  StudentLevel,
  RegisterStudentRequest,
  LoginRequest,
} from '../types/index';

export class AuthService {
  /**
   * Hash password using bcrypt
   */
  private async hashPassword(password: string): Promise<string> {
    const salt = await bcrypt.genSalt(12);
    return bcrypt.hash(password, salt);
  }

  /**
   * Compare password with hash
   */
  private async comparePassword(password: string, hash: string): Promise<boolean> {
    return bcrypt.compare(password, hash);
  }

  /**
   * Generate JWT access token
   */
  private generateAccessToken(payload: JWTPayload): string {
    return jwt.sign(payload, config.jwt.secret, {
      expiresIn: config.jwt.expiresIn as string,
    } as jwt.SignOptions);
  }

  /**
   * Generate refresh token
   */
  private generateRefreshToken(payload: JWTPayload): string {
    return jwt.sign(payload, config.jwt.refreshSecret, {
      expiresIn: config.jwt.refreshExpiresIn as string,
    } as jwt.SignOptions);
  }

  /**
   * Register a new student
   */
  async registerStudent(data: RegisterStudentRequest): Promise<{
    user: User;
    student: Student;
    accessToken: string;
    refreshToken: string;
  }> {
    const client = await getClient();

    try {
      await client.query('BEGIN');

      // Check if email exists
      const existingUser = await client.query(
        'SELECT id FROM users WHERE email = $1',
        [data.email.toLowerCase()]
      );

      if (existingUser.rows.length > 0) {
        throw new Error('Email already registered');
      }

      // Check if matriculation number exists
      const existingMatric = await client.query(
        'SELECT id FROM students WHERE matriculation_number = $1',
        [data.matriculationNumber]
      );

      if (existingMatric.rows.length > 0) {
        throw new Error('Matriculation number already registered');
      }

      // Create user
      const passwordHash = await this.hashPassword(data.password);
      const userId = uuidv4();

      const userResult = await client.query(
        `INSERT INTO users (id, email, password_hash, role, is_active)
         VALUES ($1, $2, $3, $4, true)
         RETURNING *`,
        [userId, data.email.toLowerCase(), passwordHash, UserRole.STUDENT]
      );

      const user = userResult.rows[0];

      // Create student profile
      const studentId = uuidv4();
      const studentResult = await client.query(
        `INSERT INTO students (
          id, user_id, matriculation_number, first_name, last_name, 
          middle_name, level, phone_number, whatsapp_number
        ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
        RETURNING *`,
        [
          studentId,
          userId,
          data.matriculationNumber,
          data.firstName,
          data.lastName,
          data.middleName || null,
          data.level,
          data.phoneNumber,
          data.whatsappNumber || data.phoneNumber,
        ]
      );

      const student = studentResult.rows[0];

      await client.query('COMMIT');

      // Generate tokens
      const payload: JWTPayload = {
        userId: user.id,
        email: user.email,
        role: user.role,
      };

      const accessToken = this.generateAccessToken(payload);
      const refreshToken = this.generateRefreshToken(payload);

      // Store refresh token
      const tokenHash = await this.hashPassword(refreshToken);
      await query(
        `INSERT INTO refresh_tokens (user_id, token_hash, expires_at)
         VALUES ($1, $2, NOW() + INTERVAL '7 days')`,
        [userId, tokenHash]
      );

      return { user, student, accessToken, refreshToken };
    } catch (error) {
      await client.query('ROLLBACK');
      throw error;
    } finally {
      client.release();
    }
  }

  /**
   * Login user
   */
  async login(data: LoginRequest): Promise<{
    user: any;
    profile: any;
    accessToken: string;
    refreshToken: string;
  }> {
    // Find user by email
    const userResult = await query(
      'SELECT * FROM users WHERE email = $1',
      [data.email.toLowerCase()]
    );

    if (userResult.rows.length === 0) {
      throw new Error('Invalid email or password');
    }

    const user = userResult.rows[0];

    // Check if user is active
    if (!user.is_active) {
      throw new Error('Account is deactivated. Please contact administrator.');
    }

    // Verify password
    const isValid = await this.comparePassword(data.password, user.password_hash);

    if (!isValid) {
      throw new Error('Invalid email or password');
    }

    // Get profile based on role
    let profile = null;

    if (user.role === UserRole.STUDENT) {
      const result = await query(
        'SELECT * FROM students WHERE user_id = $1',
        [user.id]
      );
      profile = result.rows[0];
    } else if (user.role === UserRole.ASSESSOR) {
      const result = await query(
        'SELECT * FROM assessors WHERE user_id = $1',
        [user.id]
      );
      profile = result.rows[0];
    } else if (user.role === UserRole.ADMIN) {
      const result = await query(
        'SELECT * FROM administrators WHERE user_id = $1',
        [user.id]
      );
      profile = result.rows[0];
    }

    // Update last login
    await query(
      'UPDATE users SET last_login = NOW() WHERE id = $1',
      [user.id]
    );

    // Log session
    await query(
      `INSERT INTO session_logs (user_id, ip_address, user_agent, device_fingerprint)
       VALUES ($1, $2, $3, $4)`,
      [user.id, null, null, data.deviceFingerprint]
    );

    // Generate tokens
    const payload: JWTPayload = {
      userId: user.id,
      email: user.email,
      role: user.role,
    };

    const accessToken = this.generateAccessToken(payload);
    const refreshToken = this.generateRefreshToken(payload);

    // Store refresh token
    const tokenHash = await this.hashPassword(refreshToken);
    await query(
      `INSERT INTO refresh_tokens (user_id, token_hash, device_fingerprint, expires_at)
       VALUES ($1, $2, $3, NOW() + INTERVAL '7 days')`,
      [user.id, tokenHash, data.deviceFingerprint]
    );

    // Remove sensitive data
    delete user.password_hash;

    return { user, profile, accessToken, refreshToken };
  }

  /**
   * Refresh access token
   */
  async refreshToken(refreshToken: string): Promise<{
    accessToken: string;
    refreshToken: string;
  }> {
    try {
      // Verify refresh token
      const decoded = jwt.verify(
        refreshToken,
        config.jwt.refreshSecret
      ) as JWTPayload;

      // Check if user exists and is active
      const userResult = await query(
        'SELECT id, email, role, is_active FROM users WHERE id = $1',
        [decoded.userId]
      );

      if (userResult.rows.length === 0 || !userResult.rows[0].is_active) {
        throw new Error('User not found or inactive');
      }

      const user = userResult.rows[0];

      // Generate new tokens
      const payload: JWTPayload = {
        userId: user.id,
        email: user.email,
        role: user.role,
      };

      const newAccessToken = this.generateAccessToken(payload);
      const newRefreshToken = this.generateRefreshToken(payload);

      // Store new refresh token and invalidate old one
      const tokenHash = await this.hashPassword(newRefreshToken);
      await query(
        `INSERT INTO refresh_tokens (user_id, token_hash, expires_at)
         VALUES ($1, $2, NOW() + INTERVAL '7 days')`,
        [user.id, tokenHash]
      );

      return {
        accessToken: newAccessToken,
        refreshToken: newRefreshToken,
      };
    } catch (error) {
      throw new Error('Invalid refresh token');
    }
  }

  /**
   * Logout user - revoke refresh token
   */
  async logout(userId: string, refreshToken?: string): Promise<void> {
    if (refreshToken) {
      // Revoke specific token
      await query(
        `UPDATE refresh_tokens 
         SET is_revoked = true, revoked_at = NOW()
         WHERE user_id = $1 AND is_revoked = false`,
        [userId]
      );
    } else {
      // Revoke all tokens for user
      await query(
        `UPDATE refresh_tokens 
         SET is_revoked = true, revoked_at = NOW()
         WHERE user_id = $1`,
        [userId]
      );
    }

    // Update session log
    await query(
      `UPDATE session_logs 
       SET logout_at = NOW(), is_active = false
       WHERE user_id = $1 AND is_active = true`,
      [userId]
    );
  }

  /**
   * Change password
   */
  async changePassword(
    userId: string,
    currentPassword: string,
    newPassword: string
  ): Promise<void> {
    // Get current password hash
    const result = await query(
      'SELECT password_hash FROM users WHERE id = $1',
      [userId]
    );

    if (result.rows.length === 0) {
      throw new Error('User not found');
    }

    // Verify current password
    const isValid = await this.comparePassword(
      currentPassword,
      result.rows[0].password_hash
    );

    if (!isValid) {
      throw new Error('Current password is incorrect');
    }

    // Update password
    const newHash = await this.hashPassword(newPassword);
    await query(
      'UPDATE users SET password_hash = $1, updated_at = NOW() WHERE id = $2',
      [newHash, userId]
    );

    // Revoke all refresh tokens
    await query(
      `UPDATE refresh_tokens 
       SET is_revoked = true, revoked_at = NOW()
       WHERE user_id = $1`,
      [userId]
    );
  }

  /**
   * Get user profile by ID
   */
  async getUserProfile(userId: string): Promise<{
    user: any;
    profile: any;
  }> {
    const userResult = await query(
      'SELECT id, email, role, is_active, last_login, created_at FROM users WHERE id = $1',
      [userId]
    );

    if (userResult.rows.length === 0) {
      throw new Error('User not found');
    }

    const user = userResult.rows[0];
    let profile = null;

    if (user.role === UserRole.STUDENT) {
      const result = await query(
        `SELECT s.*, sr.rotation_id, r.name as rotation_name, ps.overall_score
         FROM students s
         LEFT JOIN student_rotations sr ON s.id = sr.student_id AND sr.status = 'active'
         LEFT JOIN rotations r ON sr.rotation_id = r.id
         LEFT JOIN performance_summaries ps ON s.id = ps.student_id AND sr.rotation_id = ps.rotation_id
         WHERE s.user_id = $1`,
        [userId]
      );
      profile = result.rows[0];
    } else if (user.role === UserRole.ASSESSOR) {
      const result = await query(
        'SELECT * FROM assessors WHERE user_id = $1',
        [userId]
      );
      profile = result.rows[0];
    } else if (user.role === UserRole.ADMIN) {
      const result = await query(
        'SELECT * FROM administrators WHERE user_id = $1',
        [userId]
      );
      profile = result.rows[0];
    }

    return { user, profile };
  }
}

export const authService = new AuthService();
