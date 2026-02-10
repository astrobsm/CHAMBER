import { Pool, PoolConfig } from 'pg';
import fs from 'fs';
import path from 'path';
import config from './index';

// Load CA certificate for SSL connections (DigitalOcean Managed DB)
function getSslConfig(): false | { rejectUnauthorized: boolean; ca?: string } {
  if (!config.database.ssl) return false;

  // DigitalOcean Managed Databases use self-signed certificate chains.
  // We set rejectUnauthorized: false to allow the connection, and
  // optionally attach the CA cert for additional trust context.
  const sslConfig: { rejectUnauthorized: boolean; ca?: string } = {
    rejectUnauthorized: false,
  };

  // Try to load the CA certificate from multiple locations
  const certPaths = [
    config.database.caCert,
    path.resolve(__dirname, 'ca-certificate.crt'),
    path.resolve(process.cwd(), 'src/config/ca-certificate.crt'),
    path.resolve(process.cwd(), 'ca-certificate.crt'),
  ].filter(Boolean) as string[];

  for (const certPath of certPaths) {
    try {
      const resolvedPath = path.isAbsolute(certPath) ? certPath : path.resolve(process.cwd(), certPath);
      if (fs.existsSync(resolvedPath)) {
        sslConfig.ca = fs.readFileSync(resolvedPath, 'utf-8');
        console.log(`✅ Loaded CA certificate from: ${resolvedPath}`);
        break;
      }
    } catch (err) {
      // Continue to next path
    }
  }

  if (!sslConfig.ca) {
    console.warn('⚠️  No CA certificate found — connecting with SSL (unverified)');
  }

  return sslConfig;
}

const sslConfig = getSslConfig();

const poolConfig: PoolConfig = config.database.url
  ? {
      connectionString: config.database.url,
      ssl: sslConfig,
    }
  : {
      host: config.database.host,
      port: config.database.port,
      database: config.database.name,
      user: config.database.user,
      password: config.database.password,
      ssl: sslConfig,
    };

export const pool = new Pool({
  ...poolConfig,
  max: 20,
  idleTimeoutMillis: 30000,
  connectionTimeoutMillis: 10000,
});

// Set search_path to use the CRP schema namespace first, then public
pool.on('connect', (client: any) => {
  client.query("SET search_path TO crp, public");
  console.log('📦 Database connected (search_path: crp, public)');
});

pool.on('error', (err) => {
  console.error('❌ Unexpected database error:', err);
  process.exit(-1);
});

export const query = async (text: string, params?: any[]) => {
  const start = Date.now();
  const result = await pool.query(text, params);
  const duration = Date.now() - start;
  
  if (config.nodeEnv === 'development') {
    console.log('Executed query', { text: text.substring(0, 50), duration, rows: result.rowCount });
  }
  
  return result;
};

export const getClient = async () => {
  const client = await pool.connect();
  return client;
};

// Initialize database connection
export const initializeDatabase = async () => {
  try {
    const client = await pool.connect();
    await client.query('SELECT NOW()');
    client.release();
    console.log('✅ Database initialized successfully');
    return true;
  } catch (error) {
    console.error('❌ Failed to initialize database:', error);
    throw error;
  }
};

// Close pool on shutdown
export const closeDatabase = async () => {
  await pool.end();
  console.log('📦 Database connection pool closed');
};

export default { pool, query, getClient, initializeDatabase, closeDatabase };
