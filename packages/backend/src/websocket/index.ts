import { Server as HttpServer } from 'http';
import { Server, Socket } from 'socket.io';
import jwt from 'jsonwebtoken';
import config from '../config/index.js';
import { logger } from '../utils/logger.js';
import { JWTPayload } from '../types/index.js';

let io: Server;

interface AuthenticatedSocket extends Socket {
  userId?: string;
  userRole?: string;
}

export function initializeWebSocket(server: HttpServer): Server {
  io = new Server(server, {
    cors: {
      origin: config.cors.origin,
      credentials: true,
    },
    pingTimeout: 60000,
    pingInterval: 25000,
  });

  // Authentication middleware
  io.use((socket: AuthenticatedSocket, next) => {
    const token = socket.handshake.auth.token || socket.handshake.headers.authorization?.split(' ')[1];

    if (!token) {
      return next(new Error('Authentication required'));
    }

    try {
      const decoded = jwt.verify(token, config.jwt.secret) as JWTPayload;
      socket.userId = decoded.userId;
      socket.userRole = decoded.role;
      next();
    } catch (error) {
      next(new Error('Invalid token'));
    }
  });

  io.on('connection', (socket: AuthenticatedSocket) => {
    logger.info(`WebSocket connected: ${socket.id} (User: ${socket.userId})`);

    // Join user-specific room
    if (socket.userId) {
      socket.join(`user:${socket.userId}`);
    }

    // Join role-specific room
    if (socket.userRole) {
      socket.join(`role:${socket.userRole}`);
    }

    // Handle room subscriptions
    socket.on('subscribe:rotation', (rotationId: string) => {
      socket.join(`rotation:${rotationId}`);
      logger.debug(`Socket ${socket.id} subscribed to rotation ${rotationId}`);
    });

    socket.on('unsubscribe:rotation', (rotationId: string) => {
      socket.leave(`rotation:${rotationId}`);
    });

    socket.on('subscribe:test', (testId: string) => {
      socket.join(`test:${testId}`);
    });

    // Handle disconnection
    socket.on('disconnect', (reason) => {
      logger.info(`WebSocket disconnected: ${socket.id} (Reason: ${reason})`);
    });

    // Handle errors
    socket.on('error', (error) => {
      logger.error(`WebSocket error: ${socket.id}`, error);
    });
  });

  logger.info('WebSocket server initialized');
  return io;
}

export function getIO(): Server {
  if (!io) {
    throw new Error('WebSocket server not initialized');
  }
  return io;
}

// Emit events to specific targets
export const emitEvents = {
  // Emit to a specific user
  toUser(userId: string, event: string, data: unknown): void {
    io?.to(`user:${userId}`).emit(event, data);
  },

  // Emit to all users with a specific role
  toRole(role: string, event: string, data: unknown): void {
    io?.to(`role:${role}`).emit(event, data);
  },

  // Emit to all users in a rotation
  toRotation(rotationId: string, event: string, data: unknown): void {
    io?.to(`rotation:${rotationId}`).emit(event, data);
  },

  // Emit to all connected users
  broadcast(event: string, data: unknown): void {
    io?.emit(event, data);
  },

  // Emit test update (score, status)
  testUpdate(studentId: string, testId: string, data: unknown): void {
    io?.to(`user:${studentId}`).emit('test:update', { testId, ...data as object });
  },

  // Emit attendance update
  attendanceUpdate(rotationId: string, data: unknown): void {
    io?.to(`rotation:${rotationId}`).emit('attendance:update', data);
  },

  // Emit score update
  scoreUpdate(studentId: string, data: unknown): void {
    io?.to(`user:${studentId}`).emit('score:update', data);
  },

  // Emit clearance status change
  clearanceUpdate(studentId: string, data: unknown): void {
    io?.to(`user:${studentId}`).emit('clearance:update', data);
  },
};
