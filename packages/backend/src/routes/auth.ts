import { Router, Request, Response } from 'express';
import { body, query as queryValidator } from 'express-validator';
import { authService } from '../services/index.js';
import { handleValidationErrors, asyncHandler, authLimiter, authenticate } from '../middleware/index.js';
import { ApiResponse, StudentLevel } from '../types/index.js';

const router = Router();

/**
 * @route   POST /api/auth/register/student
 * @desc    Register a new student
 * @access  Public
 */
router.post(
  '/register/student',
  authLimiter,
  [
    body('email').isEmail().normalizeEmail().withMessage('Valid email is required'),
    body('password')
      .isLength({ min: 8 })
      .withMessage('Password must be at least 8 characters')
      .matches(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/)
      .withMessage('Password must contain uppercase, lowercase, and number'),
    body('matriculationNumber')
      .trim()
      .notEmpty()
      .withMessage('Matriculation number is required'),
    body('firstName').trim().notEmpty().withMessage('First name is required'),
    body('lastName').trim().notEmpty().withMessage('Last name is required'),
    body('level')
      .isIn(Object.values(StudentLevel))
      .withMessage('Valid level is required'),
    body('phoneNumber')
      .matches(/^\+?[\d\s-]{10,}$/)
      .withMessage('Valid phone number is required'),
  ],
  handleValidationErrors,
  asyncHandler(async (req: Request, res: Response<ApiResponse>) => {
    const result = await authService.registerStudent(req.body);

    res.status(201).json({
      success: true,
      message: 'Registration successful',
      data: {
        user: {
          id: result.user.id,
          email: result.user.email,
          role: result.user.role,
        },
        student: result.student,
        accessToken: result.accessToken,
        refreshToken: result.refreshToken,
      },
    });
  })
);

/**
 * @route   POST /api/auth/login
 * @desc    Login user
 * @access  Public
 */
router.post(
  '/login',
  authLimiter,
  [
    body('email').isEmail().normalizeEmail().withMessage('Valid email is required'),
    body('password').notEmpty().withMessage('Password is required'),
  ],
  handleValidationErrors,
  async (req: Request, res: Response<ApiResponse>) => {
    try {
      const { email, password, deviceFingerprint } = req.body;

      console.log('Login attempt with email:', email);

      // Hardcoded admin login for demo/development (case-insensitive email)
      if (email.toLowerCase() === 'emmanuelnnadi@unth.edu.ng' && password === 'blackvelvet') {
        const adminUser = {
          id: 'admin-001',
          email: 'emmanuelnnadi@unth.edu.ng',
          role: 'admin',
          firstName: 'Emmanuel',
          lastName: 'Nnadi',
        };
        const token = `admin-token-${Date.now()}`;
        
        return res.json({
          success: true,
          message: 'Login successful',
          data: {
            user: adminUser,
            profile: {
              id: 'admin-profile-001',
              department: 'Medical Education',
              accessLevel: 'full',
            },
            accessToken: token,
            refreshToken: `refresh-${token}`,
          },
        });
      }

      // Try database login
      try {
        const result = await authService.login({
          email,
          password,
          deviceFingerprint,
        });

        return res.json({
          success: true,
          message: 'Login successful',
          data: {
            user: result.user,
            profile: result.profile,
            accessToken: result.accessToken,
            refreshToken: result.refreshToken,
          },
        });
      } catch (dbError) {
        // Database not available - return error
        return res.status(401).json({
          success: false,
          message: 'Invalid email or password',
        });
      }
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: 'Login failed. Please try again.',
      });
    }
  }
);

/**
 * @route   POST /api/auth/refresh
 * @desc    Refresh access token
 * @access  Public
 */
router.post(
  '/refresh',
  [body('refreshToken').notEmpty().withMessage('Refresh token is required')],
  handleValidationErrors,
  asyncHandler(async (req: Request, res: Response<ApiResponse>) => {
    const { refreshToken } = req.body;

    const tokens = await authService.refreshToken(refreshToken);

    res.json({
      success: true,
      data: tokens,
    });
  })
);

/**
 * @route   GET /api/auth/verify
 * @desc    Verify token and get current user
 * @access  Private
 */
router.get(
  '/verify',
  authenticate,
  async (req: Request, res: Response<ApiResponse>) => {
    try {
      // If we get here, the token is valid (authenticate middleware passed)
      res.json({
        success: true,
        data: {
          user: req.user,
          valid: true,
        },
      });
    } catch {
      res.status(401).json({
        success: false,
        error: 'Token verification failed',
      });
    }
  }
);

/**
 * @route   POST /api/auth/logout
 * @desc    Logout user
 * @access  Private
 */
router.post(
  '/logout',
  authenticate,
  asyncHandler(async (req: Request, res: Response<ApiResponse>) => {
    await authService.logout(req.user!.userId, req.body.refreshToken);

    res.json({
      success: true,
      message: 'Logged out successfully',
    });
  })
);

/**
 * @route   GET /api/auth/me
 * @desc    Get current user profile
 * @access  Private
 */
router.get(
  '/me',
  authenticate,
  asyncHandler(async (req: Request, res: Response<ApiResponse>) => {
    const result = await authService.getUserProfile(req.user!.userId);

    res.json({
      success: true,
      data: result,
    });
  })
);

/**
 * @route   POST /api/auth/change-password
 * @desc    Change password
 * @access  Private
 */
router.post(
  '/change-password',
  authenticate,
  [
    body('currentPassword').notEmpty().withMessage('Current password is required'),
    body('newPassword')
      .isLength({ min: 8 })
      .withMessage('New password must be at least 8 characters')
      .matches(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/)
      .withMessage('Password must contain uppercase, lowercase, and number'),
  ],
  handleValidationErrors,
  asyncHandler(async (req: Request, res: Response<ApiResponse>) => {
    const { currentPassword, newPassword } = req.body;

    await authService.changePassword(req.user!.userId, currentPassword, newPassword);

    res.json({
      success: true,
      message: 'Password changed successfully',
    });
  })
);

/**
 * @route   POST /api/auth/demo-login
 * @desc    Demo login for testing without database
 * @access  Public
 */
router.post(
  '/demo-login',
  [
    body('role').isIn(['student', 'assessor', 'admin']).withMessage('Valid role is required'),
  ],
  handleValidationErrors,
  (req: Request, res: Response<ApiResponse>) => {
    const { role } = req.body;

    const demoUsers: Record<string, any> = {
      student: {
        id: 'demo-student-001',
        email: 'student@unth.edu.ng',
        role: 'student',
        firstName: 'John',
        lastName: 'Okonkwo',
        profile: {
          id: 'demo-student-profile-001',
          matriculationNumber: 'MED/2022/001',
          level: 'Surgery II',
          currentRotation: 'Orthopedic Surgery',
          attendanceRate: 85,
          testAverage: 76,
          clearanceStatus: 'cleared',
        },
      },
      assessor: {
        id: 'demo-assessor-001',
        email: 'assessor@unth.edu.ng',
        role: 'assessor',
        firstName: 'Dr. Adaeze',
        lastName: 'Nnamdi',
        profile: {
          id: 'demo-assessor-profile-001',
          department: 'General Surgery',
          specialization: 'Consultant Surgeon',
          studentsAssigned: 24,
        },
      },
      admin: {
        id: 'demo-admin-001',
        email: 'admin@unth.edu.ng',
        role: 'admin',
        firstName: 'System',
        lastName: 'Administrator',
        profile: {
          id: 'demo-admin-profile-001',
          department: 'Medical Education',
          accessLevel: 'full',
        },
      },
    };

    const user = demoUsers[role];
    const token = `demo-token-${role}-${Date.now()}`;

    res.json({
      success: true,
      message: 'Demo login successful',
      data: {
        user: {
          id: user.id,
          email: user.email,
          role: user.role,
          firstName: user.firstName,
          lastName: user.lastName,
        },
        profile: user.profile,
        accessToken: token,
        refreshToken: `demo-refresh-${role}-${Date.now()}`,
        isDemo: true,
      },
    });
  }
);

export default router;
