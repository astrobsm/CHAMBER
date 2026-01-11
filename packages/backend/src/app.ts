import express, { Application, Request, Response, NextFunction } from 'express';
import cors from 'cors';
import helmet from 'helmet';
import compression from 'compression';
import config from './config/index.js';
import { errorHandler, notFoundHandler } from './middleware/errorHandler.js';
import { rateLimiter } from './middleware/rateLimiter.js';
import { requestLogger } from './middleware/requestLogger.js';

// Import routes
import authRoutes from './routes/auth.js';
import studentRoutes from './routes/students.js';
import attendanceRoutes from './routes/attendance.js';
import participationRoutes from './routes/participation.js';
import testRoutes from './routes/tests.js';
import questionRoutes from './routes/questions.js';
import rotationRoutes from './routes/rotations.js';
import cmeRoutes from './routes/cme.js';
import studyRoutes from './routes/study.js';
import analyticsRoutes from './routes/analytics.js';
import adminRoutes from './routes/admin.js';
import syncRoutes from './routes/sync.js';

const app: Application = express();

// Security middleware
app.use(helmet({
  contentSecurityPolicy: {
    directives: {
      defaultSrc: ["'self'"],
      styleSrc: ["'self'", "'unsafe-inline'"],
      scriptSrc: ["'self'"],
      imgSrc: ["'self'", "data:", "https:"],
    },
  },
}));

// CORS configuration
app.use(cors({
  origin: config.cors.origin,
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization', 'X-Requested-With', 'X-Device-Fingerprint'],
}));

// Body parsing
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));

// Compression
app.use(compression());

// Request logging
app.use(requestLogger);

// Rate limiting
app.use('/api/', rateLimiter);

// Health check endpoint
app.get('/health', (req: Request, res: Response) => {
  res.json({
    status: 'healthy',
    timestamp: new Date().toISOString(),
    version: '1.0.0',
    service: 'Clinical Rotation Platform API',
  });
});

app.get('/api/health', (req: Request, res: Response) => {
  res.json({
    status: 'healthy',
    timestamp: new Date().toISOString(),
    version: '1.0.0',
    service: 'Clinical Rotation Platform API',
    database: 'pending', // Will be updated once DB is connected
  });
});

// API routes
app.use('/api/auth', authRoutes);
app.use('/api/students', studentRoutes);
app.use('/api/attendance', attendanceRoutes);
app.use('/api/participation', participationRoutes);
app.use('/api/tests', testRoutes);
app.use('/api/questions', questionRoutes);
app.use('/api/rotations', rotationRoutes);
app.use('/api/cme', cmeRoutes);
app.use('/api/study', studyRoutes);
app.use('/api/analytics', analyticsRoutes);
app.use('/api/admin', adminRoutes);
app.use('/api/sync', syncRoutes);

// API documentation info
app.get('/api', (req: Request, res: Response) => {
  res.json({
    name: 'Clinical Rotation Platform API',
    version: '1.0.0',
    description: 'University of Nigeria Teaching Hospital, Ituku-Ozalla',
    documentation: '/api/docs',
    endpoints: {
      auth: '/api/auth',
      students: '/api/students',
      attendance: '/api/attendance',
      participation: '/api/participation',
      tests: '/api/tests',
      questions: '/api/questions',
      rotations: '/api/rotations',
      cme: '/api/cme',
      study: '/api/study',
      analytics: '/api/analytics',
      admin: '/api/admin',
      sync: '/api/sync',
    },
  });
});

// 404 handler
app.use(notFoundHandler);

// Error handler
app.use(errorHandler);

export default app;
