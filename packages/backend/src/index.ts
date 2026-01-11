import http from 'http';
import app from './app.js';
import config from './config/index.js';
import { initializeDatabase } from './config/database.js';
import { initializeWebSocket } from './websocket/index.js';
import { logger } from './utils/logger.js';

const server = http.createServer(app);

// Initialize WebSocket for real-time features
initializeWebSocket(server);

async function startServer() {
  try {
    // Try to initialize database connection
    await initializeDatabase();
    logger.info('✅ Database connection established');
  } catch (error) {
    logger.warn('⚠️  Database connection failed - running in limited mode');
    logger.warn('   Please ensure PostgreSQL is running and configured correctly');
    logger.warn('   The API will start but database operations will fail');
  }

  // Start the server regardless of database status
  server.listen(config.port, () => {
    logger.info(`🏥 Clinical Rotation Platform API running on port ${config.port}`);
    logger.info(`   Environment: ${config.nodeEnv}`);
    logger.info(`   API Base: http://localhost:${config.port}/api`);
    logger.info(`   Health Check: http://localhost:${config.port}/api/health`);
  });
}

// Graceful shutdown
process.on('SIGTERM', () => {
  logger.info('SIGTERM received. Shutting down gracefully...');
  server.close(() => {
    logger.info('Server closed');
    process.exit(0);
  });
});

process.on('SIGINT', () => {
  logger.info('SIGINT received. Shutting down gracefully...');
  server.close(() => {
    logger.info('Server closed');
    process.exit(0);
  });
});

startServer();
