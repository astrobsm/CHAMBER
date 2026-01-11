import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
import config from '../config/index.js';
import { query } from '../config/database.js';
import { JWTPayload, UserRole, ApiResponse } from '../types/index.js';

// Extend Express Request type
declare global {
  namespace Express {
    interface Request {
      user?: JWTPayload;
    }
  }
}

/**
 * Authentication middleware - verifies JWT token
 */
export const authenticate = async (
  req: Request,
  res: Response<ApiResponse>,
  next: NextFunction
): Promise<void> => {
  try {
    const authHeader = req.headers.authorization;

    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      res.status(401).json({
        success: false,
        error: 'No token provided. Authorization denied.',
      });
      return;
    }

    const token = authHeader.split(' ')[1];

    // Check for hardcoded admin token (for demo/development)
    if (token.startsWith('admin-token-')) {
      req.user = {
        userId: 'admin-001',
        email: 'emmanuelnnadi@unth.edu.ng',
        role: UserRole.ADMIN,
      };
      next();
      return;
    }

    try {
      const decoded = jwt.verify(token, config.jwt.secret) as JWTPayload;

      // Verify user still exists and is active
      const result = await query(
        'SELECT id, email, role, is_active FROM users WHERE id = $1',
        [decoded.userId]
      );

      if (result.rows.length === 0) {
        res.status(401).json({
          success: false,
          error: 'User not found. Authorization denied.',
        });
        return;
      }

      const user = result.rows[0];

      if (!user.is_active) {
        res.status(401).json({
          success: false,
          error: 'Account is deactivated. Please contact administrator.',
        });
        return;
      }

      req.user = {
        userId: user.id,
        email: user.email,
        role: user.role,
      };

      next();
    } catch (jwtError) {
      if (jwtError instanceof jwt.TokenExpiredError) {
        res.status(401).json({
          success: false,
          error: 'Token expired. Please refresh your token.',
        });
        return;
      }

      res.status(401).json({
        success: false,
        error: 'Invalid token. Authorization denied.',
      });
      return;
    }
  } catch (error) {
    console.error('Authentication error:', error);
    res.status(500).json({
      success: false,
      error: 'Server error during authentication.',
    });
  }
};

/**
 * Authorization middleware - checks user roles
 */
export const authorize = (allowedRolesOrRole: UserRole | UserRole[]) => {
  const allowedRoles = Array.isArray(allowedRolesOrRole) ? allowedRolesOrRole : [allowedRolesOrRole];
  
  return (req: Request, res: Response<ApiResponse>, next: NextFunction): void => {
    if (!req.user) {
      res.status(401).json({
        success: false,
        error: 'Not authenticated.',
      });
      return;
    }

    if (!allowedRoles.includes(req.user.role as UserRole)) {
      res.status(403).json({
        success: false,
        error: 'Access denied. Insufficient permissions.',
      });
      return;
    }

    next();
  };
};

/**
 * Optional authentication - doesn't fail if no token
 */
export const optionalAuth = async (
  req: Request,
  res: Response,
  next: NextFunction
): Promise<void> => {
  try {
    const authHeader = req.headers.authorization;

    if (authHeader && authHeader.startsWith('Bearer ')) {
      const token = authHeader.split(' ')[1];

      try {
        const decoded = jwt.verify(token, config.jwt.secret) as JWTPayload;
        req.user = decoded;
      } catch (error) {
        // Token invalid, continue without user
      }
    }

    next();
  } catch (error) {
    next();
  }
};

/**
 * Student-only middleware
 */
export const studentOnly = authorize(UserRole.STUDENT);

/**
 * Assessor-only middleware
 */
export const assessorOnly = authorize(UserRole.ASSESSOR);

/**
 * Admin-only middleware
 */
export const adminOnly = authorize(UserRole.ADMIN);

/**
 * Assessor or Admin middleware
 */
export const assessorOrAdmin = authorize([UserRole.ASSESSOR, UserRole.ADMIN]);

/**
 * Any authenticated user middleware
 */
export const anyAuthenticated = authorize([UserRole.STUDENT, UserRole.ASSESSOR, UserRole.ADMIN]);
