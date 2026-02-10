import dotenv from 'dotenv';
import path from 'path';

// Load environment variables
dotenv.config({ path: path.resolve(__dirname, '../../.env') });

export const config = {
  // Server
  nodeEnv: process.env.NODE_ENV || 'development',
  port: parseInt(process.env.PORT || '3001', 10),
  host: process.env.HOST || 'localhost',

  // Database
  database: {
    url: process.env.DATABASE_URL,
    host: process.env.DB_HOST || 'localhost',
    port: parseInt(process.env.DB_PORT || '5432', 10),
    name: process.env.DB_NAME || 'clinical_rotation',
    user: process.env.DB_USER || 'postgres',
    password: process.env.DB_PASSWORD || '',
    ssl: process.env.DB_SSL === 'true',
    caCert: process.env.DB_CA_CERT || '',
  },

  // JWT
  jwt: {
    secret: process.env.JWT_SECRET || 'your-secret-key',
    refreshSecret: process.env.JWT_REFRESH_SECRET || 'your-refresh-secret',
    expiresIn: process.env.JWT_EXPIRES_IN || '15m',
    refreshExpiresIn: process.env.JWT_REFRESH_EXPIRES_IN || '7d',
  },

  // Encryption
  encryption: {
    key: process.env.ENCRYPTION_KEY || 'your-32-character-encryption-key',
  },

  // WhatsApp
  whatsapp: {
    apiUrl: process.env.WHATSAPP_API_URL,
    apiKey: process.env.WHATSAPP_API_KEY,
  },

  // Email/SMTP
  smtp: {
    host: process.env.SMTP_HOST,
    port: parseInt(process.env.SMTP_PORT || '587', 10),
    user: process.env.SMTP_USER,
    pass: process.env.SMTP_PASS,
  },

  // File Upload
  upload: {
    maxFileSize: parseInt(process.env.MAX_FILE_SIZE || '10485760', 10),
    path: process.env.UPLOAD_PATH || './uploads',
  },

  // QR Code
  qrCode: {
    validityMinutes: parseInt(process.env.QR_CODE_VALIDITY_MINUTES || '15', 10),
  },

  // GPS
  gps: {
    radiusMeters: parseInt(process.env.GPS_RADIUS_METERS || '500', 10),
  },

  // Test Engine
  testEngine: {
    durationMinutes: parseInt(process.env.TEST_DURATION_MINUTES || '10', 10),
    questionsCount: parseInt(process.env.TEST_QUESTIONS_COUNT || '50', 10),
    maxTabSwitches: parseInt(process.env.MAX_TAB_SWITCHES || '3', 10),
    suspiciousThreshold: parseInt(process.env.SUSPICIOUS_ACTIVITY_THRESHOLD || '5', 10),
  },

  // Clearance
  clearance: {
    thresholdPercentage: parseInt(process.env.CLEARANCE_THRESHOLD_PERCENTAGE || '75', 10),
  },

  // CORS
  cors: {
    frontendUrl: process.env.FRONTEND_URL || 'http://localhost:5173',
    origin: process.env.CORS_ORIGIN?.split(',') || ['http://localhost:5173', 'http://localhost:3000'],
  },

  // Rate Limiting
  rateLimit: {
    windowMs: parseInt(process.env.RATE_LIMIT_WINDOW_MS || '900000', 10),
    maxRequests: parseInt(process.env.RATE_LIMIT_MAX_REQUESTS || '100', 10),
  },
};

export default config;
