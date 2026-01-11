import rateLimit from 'express-rate-limit';
import config from '../config/index';

/**
 * General API rate limiter
 */
export const apiLimiter = rateLimit({
  windowMs: config.rateLimit.windowMs,
  max: config.rateLimit.maxRequests,
  message: {
    success: false,
    error: 'Too many requests, please try again later.',
  },
  standardHeaders: true,
  legacyHeaders: false,
});

/**
 * Auth endpoints rate limiter (stricter)
 */
export const authLimiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 50, // 50 attempts in development
  message: {
    success: false,
    error: 'Too many login attempts, please try again after 15 minutes.',
  },
  standardHeaders: true,
  legacyHeaders: false,
});

/**
 * Test submission rate limiter
 */
export const testLimiter = rateLimit({
  windowMs: 1000, // 1 second
  max: 2, // 2 requests per second
  message: {
    success: false,
    error: 'Please slow down your submissions.',
  },
  standardHeaders: true,
  legacyHeaders: false,
});

/**
 * QR code generation rate limiter
 */
export const qrLimiter = rateLimit({
  windowMs: 60 * 1000, // 1 minute
  max: 10, // 10 QR codes per minute
  message: {
    success: false,
    error: 'Too many QR code requests.',
  },
  standardHeaders: true,
  legacyHeaders: false,
});

// Default export for general API rate limiting
export const rateLimiter = apiLimiter;
