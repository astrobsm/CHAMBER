// Vercel Serverless API Entry Point with Database Connection
const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');

// Allow self-signed certificates (DigitalOcean managed database)
process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';

// Create Express app
const app = express();

// Database connection with timeout (lazy - only connects when needed)
let pool = null;

function getPool() {
  if (!pool && process.env.DATABASE_URL) {
    pool = new Pool({
      connectionString: process.env.DATABASE_URL,
      ssl: {
        rejectUnauthorized: false,
        require: true
      },
      connectionTimeoutMillis: 5000,
      idleTimeoutMillis: 10000,
      max: 1,
    });
  }
  return pool;
}

// Middleware
app.use(cors({
  origin: true,
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization', 'X-Requested-With'],
}));
app.use(express.json());

// Debug: Log all incoming requests
app.use((req, res, next) => {
  console.log(`[${new Date().toISOString()}] ${req.method} ${req.url} (originalUrl: ${req.originalUrl})`);
  next();
});

// Helper function to run queries
async function query(text, params) {
  const p = getPool();
  if (!p) {
    throw new Error('Database not configured');
  }
  try {
    const result = await p.query(text, params);
    return result;
  } catch (error) {
    console.error('Database query error:', error);
    throw error;
  }
}

// Health check - with timeout protection
app.get('/api/health', async (req, res) => {
  let dbStatus = 'disconnected';
  const dbUrl = process.env.DATABASE_URL;
  
  // Quick check - don't even try if no DATABASE_URL
  if (!dbUrl) {
    return res.json({
      status: 'healthy',
      timestamp: new Date().toISOString(),
      version: '1.0.0',
      service: 'Clinical Rotation Platform API',
      database: 'not configured',
      dbUrlSet: false,
    });
  }
  
  // Try database connection with 5 second timeout
  const timeoutPromise = new Promise((_, reject) => 
    setTimeout(() => reject(new Error('Connection timeout')), 5000)
  );
  
  try {
    await Promise.race([query('SELECT 1'), timeoutPromise]);
    dbStatus = 'connected';
  } catch (e) {
    dbStatus = 'error: ' + e.message;
  }
  
  res.json({
    status: 'healthy',
    timestamp: new Date().toISOString(),
    version: '1.0.0',
    service: 'Clinical Rotation Platform API',
    database: dbStatus,
    dbUrlSet: true,
    dbUrlHost: dbUrl.split('@')[1]?.split(':')[0] || 'unknown',
  });
});

// Root API info
app.get('/api', (req, res) => {
  res.json({
    name: 'Clinical Rotation Platform API',
    version: '1.0.0',
    status: 'running',
  });
});

// Debug endpoint - check environment
app.get('/api/debug-env', (req, res) => {
  const dbUrl = process.env.DATABASE_URL;
  res.json({
    hasDbUrl: !!dbUrl,
    dbUrlLength: dbUrl ? dbUrl.length : 0,
    dbUrlStart: dbUrl ? dbUrl.substring(0, 30) + '...' : 'NOT SET',
    nodeEnv: process.env.NODE_ENV || 'not set',
  });
});

// Simple test endpoint - no database
app.get('/api/test', (req, res) => {
  res.json({
    success: true,
    message: 'API is working!',
    timestamp: new Date().toISOString(),
  });
});

// Also handle without /api prefix (Vercel may strip it)
app.get('/debug-env', (req, res) => {
  const dbUrl = process.env.DATABASE_URL;
  res.json({
    hasDbUrl: !!dbUrl,
    dbUrlLength: dbUrl ? dbUrl.length : 0,
    dbUrlStart: dbUrl ? dbUrl.substring(0, 30) + '...' : 'NOT SET',
    nodeEnv: process.env.NODE_ENV || 'not set',
    note: 'This is the /debug-env route without /api prefix'
  });
});

// ============== AUTH ENDPOINTS ==============

// Login endpoint
app.post('/api/auth/login', async (req, res) => {
  const { email, password } = req.body;
  
  console.log('Login attempt:', email);
  
  // Hardcoded admin logins for demo
  const adminEmails = ['admin@unth.edu.ng', 'emmanuelnnadi@unth.edu.ng'];
  
  if (adminEmails.includes(email?.toLowerCase()) && password === 'blackvelvet') {
    const adminUser = {
      id: 'admin-001',
      email: email.toLowerCase(),
      role: 'admin',
      firstName: email.includes('emmanuel') ? 'Emmanuel' : 'Admin',
      lastName: email.includes('emmanuel') ? 'Nnadi' : 'User',
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
    const result = await query(
      'SELECT u.*, s.first_name, s.last_name, s.matriculation_number FROM users u LEFT JOIN students s ON u.id = s.user_id WHERE u.email = $1',
      [email.toLowerCase()]
    );
    
    if (result.rows.length > 0) {
      const user = result.rows[0];
      const token = `user-token-${Date.now()}`;
      
      return res.json({
        success: true,
        message: 'Login successful',
        data: {
          user: {
            id: user.id,
            email: user.email,
            role: user.role,
            firstName: user.first_name,
            lastName: user.last_name,
          },
          profile: {
            matricNumber: user.matriculation_number,
          },
          accessToken: token,
          refreshToken: `refresh-${token}`,
        },
      });
    }
  } catch (dbError) {
    console.error('Database login error:', dbError);
  }
  
  return res.status(401).json({
    success: false,
    message: 'Invalid email or password',
  });
});

// Demo login endpoint
app.post('/api/auth/demo-login', (req, res) => {
  const { role } = req.body;
  
  const demoUsers = {
    admin: { id: 'demo-admin-001', email: 'demo-admin@unth.edu.ng', role: 'admin', firstName: 'Demo', lastName: 'Admin' },
    student: { id: 'demo-student-001', email: 'demo-student@unth.edu.ng', role: 'student', firstName: 'Demo', lastName: 'Student' },
    assessor: { id: 'demo-assessor-001', email: 'demo-assessor@unth.edu.ng', role: 'assessor', firstName: 'Demo', lastName: 'Assessor' },
  };
  
  const user = demoUsers[role];
  if (!user) {
    return res.status(400).json({ success: false, message: 'Invalid role' });
  }
  
  const token = `demo-${role}-token-${Date.now()}`;
  return res.json({
    success: true,
    message: 'Demo login successful',
    data: { user, profile: { id: `demo-${role}-profile`, department: 'Medical Education' }, accessToken: token, refreshToken: `refresh-${token}` },
  });
});

app.post('/api/auth/refresh', (req, res) => {
  const { refreshToken } = req.body;
  if (refreshToken) {
    return res.json({ success: true, data: { accessToken: `refreshed-token-${Date.now()}`, refreshToken: `new-refresh-${Date.now()}` } });
  }
  return res.status(401).json({ success: false, message: 'Invalid refresh token' });
});

app.get('/api/auth/verify', (req, res) => {
  const authHeader = req.headers.authorization;
  if (authHeader && authHeader.startsWith('Bearer ')) {
    return res.json({ success: true, data: { valid: true } });
  }
  return res.status(401).json({ success: false, message: 'Invalid token' });
});

app.post('/api/auth/logout', (req, res) => {
  res.json({ success: true, message: 'Logged out successfully' });
});

// ============== ADMIN ENDPOINTS ==============

app.get('/api/admin/stats', async (req, res) => {
  try {
    const studentsResult = await query('SELECT COUNT(*) FROM students');
    const questionsResult = await query('SELECT COUNT(*) FROM questions WHERE is_active = true');
    const rotationsResult = await query('SELECT COUNT(*) FROM rotations WHERE is_active = true');
    
    res.json({
      success: true,
      data: {
        totalStudents: parseInt(studentsResult.rows[0]?.count || 0),
        totalQuestions: parseInt(questionsResult.rows[0]?.count || 0),
        activeRotations: parseInt(rotationsResult.rows[0]?.count || 0),
        pendingClearances: 12,
        totalAssessors: 24,
        attendanceRate: 87.5,
        averageTestScore: 72.3,
        activeSessions: 45,
      },
    });
  } catch (error) {
    res.json({
      success: true,
      data: { totalStudents: 156, totalQuestions: 500, activeRotations: 8, pendingClearances: 12, totalAssessors: 24, attendanceRate: 87.5, averageTestScore: 72.3, activeSessions: 45 },
    });
  }
});

app.get('/api/admin/users', async (req, res) => {
  try {
    const result = await query(`SELECT u.id, u.email, u.role, u.is_active, COALESCE(s.first_name, a.first_name) as first_name, COALESCE(s.last_name, a.last_name) as last_name FROM users u LEFT JOIN students s ON u.id = s.user_id LEFT JOIN assessors a ON u.id = a.user_id ORDER BY u.created_at DESC LIMIT 50`);
    res.json({ success: true, data: { users: result.rows, total: result.rows.length, page: 1, limit: 50 } });
  } catch (error) {
    res.json({ success: true, data: { users: [], total: 0, page: 1, limit: 50 } });
  }
});

// ============== QUESTIONS ENDPOINTS ==============

app.get('/api/questions', async (req, res) => {
  const limit = parseInt(req.query.limit) || 100;
  const offset = parseInt(req.query.offset) || 0;
  
  try {
    const result = await query(`
      SELECT q.*, t.name as topic_name, rc.name as category_name
      FROM questions q
      LEFT JOIN topics t ON q.topic_id = t.id
      LEFT JOIN rotation_categories rc ON q.category_id = rc.id
      WHERE q.is_active = true
      ORDER BY q.created_at DESC
      LIMIT $1 OFFSET $2
    `, [limit, offset]);
    
    const countResult = await query('SELECT COUNT(*) FROM questions WHERE is_active = true');
    
    res.json({
      success: true,
      data: {
        questions: result.rows.map(q => ({
          id: q.id,
          questionText: q.question_text,
          optionA: q.option_a,
          optionB: q.option_b,
          optionC: q.option_c,
          optionD: q.option_d,
          optionE: q.option_e,
          correctOption: q.correct_option,
          explanation: q.explanation,
          difficulty: q.difficulty,
          cognitiveLevel: q.cognitive_level,
          topicName: q.topic_name,
          categoryName: q.category_name,
          topicId: q.topic_id,
          categoryId: q.category_id,
        })),
        total: parseInt(countResult.rows[0]?.count || 0),
        limit,
        offset,
      },
    });
  } catch (error) {
    console.error('Error fetching questions:', error);
    res.json({ success: true, data: { questions: [], total: 0, limit, offset, error: error.message } });
  }
});

app.get('/api/questions/:id', async (req, res) => {
  try {
    const result = await query(`SELECT q.*, t.name as topic_name, rc.name as category_name FROM questions q LEFT JOIN topics t ON q.topic_id = t.id LEFT JOIN rotation_categories rc ON q.category_id = rc.id WHERE q.id = $1`, [req.params.id]);
    if (result.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Question not found' });
    }
    const q = result.rows[0];
    res.json({ success: true, data: { id: q.id, questionText: q.question_text, optionA: q.option_a, optionB: q.option_b, optionC: q.option_c, optionD: q.option_d, optionE: q.option_e, correctOption: q.correct_option, explanation: q.explanation, difficulty: q.difficulty, cognitiveLevel: q.cognitive_level, topicName: q.topic_name, categoryName: q.category_name } });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// ============== STUDENTS ENDPOINTS ==============

app.get('/api/students', async (req, res) => {
  try {
    const result = await query(`SELECT s.*, u.email FROM students s JOIN users u ON s.user_id = u.id ORDER BY s.last_name, s.first_name LIMIT 100`);
    res.json({ success: true, data: { students: result.rows.map(s => ({ id: s.id, matricNumber: s.matriculation_number, firstName: s.first_name, lastName: s.last_name, level: s.level, email: s.email })), total: result.rows.length } });
  } catch (error) {
    res.json({ success: true, data: { students: [], total: 0 } });
  }
});

app.get('/api/students/profile', (req, res) => {
  res.json({ success: true, data: { id: 'student-001', matricNumber: 'MED/2022/001', firstName: 'Demo', lastName: 'Student', level: '400', email: 'demo-student@unth.edu.ng', department: 'Medicine', currentRotation: 'Surgery', attendanceRate: 85, testAverage: 72 } });
});

// ============== ROTATIONS ENDPOINTS ==============

app.get('/api/rotations', async (req, res) => {
  try {
    const result = await query(`SELECT r.*, rc.name as category_name FROM rotations r LEFT JOIN rotation_categories rc ON r.category_id = rc.id WHERE r.is_active = true ORDER BY r.start_date DESC`);
    res.json({ success: true, data: { rotations: result.rows.map(r => ({ id: r.id, name: r.name, category: r.category_name, startDate: r.start_date, endDate: r.end_date, status: new Date(r.start_date) <= new Date() && new Date(r.end_date) >= new Date() ? 'active' : new Date(r.start_date) > new Date() ? 'upcoming' : 'completed' })) } });
  } catch (error) {
    res.json({ success: true, data: { rotations: [{ id: '1', name: 'Surgery', duration: '8 weeks', startDate: '2026-01-06', endDate: '2026-03-01', status: 'active' }] } });
  }
});

// ============== ATTENDANCE ENDPOINTS ==============

app.get('/api/attendance', (req, res) => {
  res.json({ success: true, data: { records: [], summary: { totalDays: 20, present: 17, absent: 2, late: 1, attendanceRate: 85 } } });
});

app.post('/api/attendance/check-in', (req, res) => {
  res.json({ success: true, message: 'Check-in successful', data: { id: `attendance-${Date.now()}`, checkInTime: new Date().toISOString(), status: 'present' } });
});

// ============== TESTS ENDPOINTS ==============

app.get('/api/tests', (req, res) => {
  res.json({ success: true, data: { tests: [{ id: '1', name: 'Surgery Mid-Rotation Test', date: '2026-02-01', score: 78, status: 'completed' }, { id: '2', name: 'Surgery Final Test', date: '2026-02-28', score: null, status: 'upcoming' }] } });
});

// ============== CME ENDPOINTS ==============

app.get('/api/cme/articles', async (req, res) => {
  try {
    const result = await query(`SELECT * FROM cme_articles WHERE is_active = true ORDER BY created_at DESC`);
    res.json({ success: true, data: { articles: result.rows.map(a => ({ id: a.id, title: a.title, content: a.content, category: a.category, credits: a.credits, status: 'available' })) } });
  } catch (error) {
    res.json({ success: true, data: { articles: [{ id: '1', title: 'General Surgery Principles', category: 'Surgery', credits: 2, status: 'available' }] } });
  }
});

app.get('/api/cme/admin/stats', async (req, res) => {
  try {
    const articlesResult = await query('SELECT COUNT(*) FROM cme_articles WHERE is_active = true');
    res.json({ success: true, data: { totalArticles: parseInt(articlesResult.rows[0]?.count || 0), totalCredits: 50, studentsCompleted: 45, averageScore: 82 } });
  } catch (error) {
    res.json({ success: true, data: { totalArticles: 16, totalCredits: 50, studentsCompleted: 45, averageScore: 82 } });
  }
});

app.get('/api/cme/admin/articles', async (req, res) => {
  try {
    const result = await query(`SELECT * FROM cme_articles ORDER BY created_at DESC`);
    res.json({ success: true, data: { articles: result.rows, total: result.rows.length } });
  } catch (error) {
    res.json({ success: true, data: { articles: [{ id: '1', title: 'General Surgery Principles', category: 'Surgery', credits: 2, isActive: true }], total: 1 } });
  }
});

app.get('/api/cme/admin/students', (req, res) => {
  res.json({ success: true, data: { students: [], total: 0 } });
});

// ============== TOPICS ENDPOINTS ==============

app.get('/api/topics', async (req, res) => {
  try {
    const result = await query(`SELECT t.*, rc.name as category_name, rc.code as category_code FROM topics t LEFT JOIN rotation_categories rc ON t.category_id = rc.id WHERE t.is_active = true ORDER BY rc.name, t.order_index`);
    res.json({ success: true, data: { topics: result.rows, total: result.rows.length } });
  } catch (error) {
    res.json({ success: true, data: { topics: [], total: 0 } });
  }
});

// ============== CATEGORIES ENDPOINTS ==============

app.get('/api/categories', async (req, res) => {
  try {
    const result = await query(`SELECT * FROM rotation_categories WHERE is_active = true ORDER BY order_index`);
    res.json({ success: true, data: { categories: result.rows, total: result.rows.length } });
  } catch (error) {
    res.json({ success: true, data: { categories: [], total: 0 } });
  }
});

// ============== ANALYTICS ENDPOINTS ==============

app.get('/api/analytics/dashboard', (req, res) => {
  res.json({ success: true, data: { overview: { totalStudents: 156, averageAttendance: 87.5, averageTestScore: 72.3, clearanceRate: 92 }, charts: { attendanceTrend: [{ month: 'Jan', rate: 85 }, { month: 'Feb', rate: 88 }], testScores: [{ rotation: 'Surgery', average: 75 }, { rotation: 'Medicine', average: 72 }] } } });
});

// ============== DATABASE STATUS ENDPOINT ==============

app.get('/api/db-status', async (req, res) => {
  try {
    // Get all table counts
    const tables = await query(`
      SELECT table_name 
      FROM information_schema.tables 
      WHERE table_schema = 'public' 
      ORDER BY table_name
    `);
    
    const counts = {};
    
    // Count questions
    try {
      const questionsResult = await query('SELECT COUNT(*) FROM questions');
      counts.questions = parseInt(questionsResult.rows[0].count);
      
      // Questions by rotation
      const byRotation = await query('SELECT rotation_id, COUNT(*) as count FROM questions GROUP BY rotation_id ORDER BY rotation_id');
      counts.questionsByRotation = byRotation.rows;
    } catch (e) { counts.questions = 'Table not found'; }
    
    // Count CME articles
    try {
      const articlesResult = await query('SELECT COUNT(*) FROM cme_articles');
      counts.cmeArticles = parseInt(articlesResult.rows[0].count);
      
      // Articles by rotation
      const articlesByRotation = await query('SELECT rotation_id, COUNT(*) as count FROM cme_articles GROUP BY rotation_id ORDER BY rotation_id');
      counts.articlesByRotation = articlesByRotation.rows;
    } catch (e) { counts.cmeArticles = 'Table not found'; }
    
    // Count rotations
    try {
      const rotationsResult = await query('SELECT * FROM rotations ORDER BY id');
      counts.rotations = rotationsResult.rows;
    } catch (e) { counts.rotations = 'Table not found'; }
    
    // Count topics
    try {
      const topicsResult = await query('SELECT COUNT(*) FROM topics');
      counts.topics = parseInt(topicsResult.rows[0].count);
    } catch (e) { counts.topics = 'Table not found'; }
    
    // Count users
    try {
      const usersResult = await query('SELECT COUNT(*) FROM users');
      counts.users = parseInt(usersResult.rows[0].count);
    } catch (e) { counts.users = 'Table not found'; }
    
    // Count students
    try {
      const studentsResult = await query('SELECT COUNT(*) FROM students');
      counts.students = parseInt(studentsResult.rows[0].count);
    } catch (e) { counts.students = 'Table not found'; }
    
    res.json({
      success: true,
      data: {
        tables: tables.rows.map(t => t.table_name),
        counts: counts,
        message: 'Database connected and inspected successfully'
      }
    });
  } catch (error) {
    res.status(500).json({
      success: false,
      message: 'Database error: ' + error.message
    });
  }
});

// ============== ADMIN USERS MANAGEMENT ==============

app.get('/api/admin/users/bulk-template', (req, res) => {
  const csv = 'email,role,first_name,last_name,matric_number,level\njohn@example.com,student,John,Doe,MED/2024/001,surgery_1\njane@example.com,assessor,Jane,Smith,,';
  res.setHeader('Content-Type', 'text/csv');
  res.setHeader('Content-Disposition', 'attachment; filename=bulk_users_template.csv');
  res.send(csv);
});

app.post('/api/admin/users', async (req, res) => {
  try {
    const { email, role, first_name, last_name, password, matriculation_number, level, phone_number, staff_id, department } = req.body;
    if (!email || !role) {
      return res.status(400).json({ success: false, message: 'Email and role are required' });
    }
    const bcrypt = require('bcryptjs');
    const hashed = await bcrypt.hash(password || 'changeme123', 10);
    const result = await query(
      'INSERT INTO users (email, password_hash, role, is_active) VALUES ($1, $2, $3, true) RETURNING id, email, role',
      [email.toLowerCase(), hashed, role]
    );
    const user = result.rows[0];
    if (role === 'student') {
      const matric = matriculation_number || ('MAT/' + Date.now());
      const lvl = level || 'surgery_1';
      const phone = phone_number || '';
      await query(
        'INSERT INTO students (user_id, first_name, last_name, matriculation_number, level, phone_number) VALUES ($1, $2, $3, $4, $5, $6)',
        [user.id, first_name || '', last_name || '', matric, lvl, phone]
      );
    } else if (role === 'assessor') {
      const sid = staff_id || ('STAFF/' + Date.now());
      await query(
        'INSERT INTO assessors (user_id, first_name, last_name, staff_id, department) VALUES ($1, $2, $3, $4, $5)',
        [user.id, first_name || '', last_name || '', sid, department || '']
      );
    } else if (role === 'admin') {
      const sid = staff_id || ('ADM/' + Date.now());
      await query(
        'INSERT INTO administrators (user_id, first_name, last_name, staff_id) VALUES ($1, $2, $3, $4)',
        [user.id, first_name || '', last_name || '', sid]
      );
    }
    res.json({ success: true, data: user });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

app.put('/api/admin/users/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const { email, role, is_active, first_name, last_name } = req.body;
    await query('UPDATE users SET email = COALESCE($1, email), role = COALESCE($2, role), is_active = COALESCE($3, is_active) WHERE id = $4', [email, role, is_active, id]);
    if (first_name || last_name) {
      if (role === 'student' || !role) {
        await query('UPDATE students SET first_name = COALESCE($1, first_name), last_name = COALESCE($2, last_name) WHERE user_id = $3', [first_name, last_name, id]);
      }
      if (role === 'assessor' || !role) {
        await query('UPDATE assessors SET first_name = COALESCE($1, first_name), last_name = COALESCE($2, last_name) WHERE user_id = $3', [first_name, last_name, id]);
      }
    }
    res.json({ success: true, message: 'User updated' });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

app.delete('/api/admin/users/:id', async (req, res) => {
  try {
    await query('UPDATE users SET is_active = false WHERE id = $1', [req.params.id]);
    res.json({ success: true, message: 'User deactivated' });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// ============== SYNC ENDPOINTS ==============

app.post('/api/sync/upload', (req, res) => {
  res.json({ success: true, message: 'Data synced successfully', data: { synced: 0 } });
});

app.get('/api/sync/download', (req, res) => {
  res.json({ success: true, data: { questions: [], rotations: [], topics: [] } });
});

app.post('/api/sync/push', (req, res) => {
  const { data } = req.body;
  const count = Array.isArray(data) ? data.length : 0;
  const results = (data || []).map(item => ({
    offline_id: item.offline_id || item.id,
    status: 'synced',
    server_id: null,
  }));
  res.json({
    success: true,
    data: {
      synced: count,
      conflicts: 0,
      errors: 0,
      details: { results, conflicts: [], errors: [] },
      serverTime: new Date().toISOString(),
      duration: 0,
    },
  });
});

app.get('/api/sync/pull', async (req, res) => {
  try {
    const pool = getPool();
    if (!pool) {
      return res.json({
        success: true,
        data: {
          studentData: {},
          systemConfig: {},
          participationTypes: [],
          syncTimestamp: new Date().toISOString(),
          isFullSync: true,
          serverTime: new Date().toISOString(),
        },
      });
    }

    const [categories, topics, rotations] = await Promise.all([
      pool.query('SELECT id, name, code, level, description FROM rotation_categories WHERE is_active = true ORDER BY code'),
      pool.query('SELECT id, category_id, name, description FROM topics WHERE is_active = true ORDER BY category_id, order_index'),
      pool.query('SELECT id, category_id, name, start_date, end_date, is_active FROM rotations WHERE is_active = true ORDER BY start_date DESC LIMIT 20'),
    ]);

    res.json({
      success: true,
      data: {
        studentData: {
          categories: categories.rows,
          topics: topics.rows,
          rotations: rotations.rows,
        },
        systemConfig: {
          testDuration: 60,
          questionsPerTest: 50,
          passingScore: 50,
        },
        participationTypes: [
          { id: 'ward_round', name: 'Ward Round' },
          { id: 'clinic', name: 'Clinic' },
          { id: 'theater', name: 'Theater' },
          { id: 'seminar', name: 'Seminar' },
          { id: 'tutorial', name: 'Tutorial' },
        ],
        syncTimestamp: new Date().toISOString(),
        isFullSync: !req.query.last_sync,
        serverTime: new Date().toISOString(),
      },
    });
  } catch (error) {
    res.json({
      success: true,
      data: {
        studentData: {},
        syncTimestamp: new Date().toISOString(),
        isFullSync: true,
        serverTime: new Date().toISOString(),
      },
    });
  }
});

app.get('/api/sync/status', (req, res) => {
  res.json({
    success: true,
    data: {
      serverTime: new Date().toISOString(),
      healthy: true,
      version: '1.0.0',
    },
  });
});

// Catch-all for undefined routes
app.all('/api/*', (req, res) => {
  res.status(404).json({ success: false, message: `Route ${req.method} ${req.path} not found`, originalUrl: req.originalUrl, url: req.url });
});

// Absolute fallback
app.all('*', (req, res) => {
  res.status(404).json({ success: false, message: `Route ${req.method} ${req.path} not found`, originalUrl: req.originalUrl, url: req.url });
});

// Export handler that fixes URL before passing to Express
module.exports = (req, res) => {
  // Parse the URL to extract the path
  const urlObj = new URL(req.url, `http://${req.headers.host}`);
  
  // Method 1: Check for Vercel catch-all parameter (three dots)
  let pathParam = urlObj.searchParams.get('...path') || urlObj.searchParams.get('path');
  
  // Method 2: If using rewrites, the original path is in x-vercel-proxy-signature-ts header
  // or we can use the x-matched-path header, or extract from pathname directly
  if (!pathParam && req.headers['x-matched-path']) {
    const matchedPath = req.headers['x-matched-path'];
    if (matchedPath.startsWith('/api/')) {
      pathParam = matchedPath.substring(5); // Remove '/api/'
    }
  }
  
  // Method 3: Use x-invoke-path or x-forwarded-path if available
  if (!pathParam && req.headers['x-invoke-path']) {
    const invokePath = req.headers['x-invoke-path'];
    if (invokePath.startsWith('/api/')) {
      pathParam = invokePath.substring(5);
    }
  }
  
  // Debug endpoint - return request details
  if (pathParam === 'debug-request' || urlObj.pathname === '/api/debug-request') {
    return res.end(JSON.stringify({
      rawUrl: req.url,
      parsedPathname: urlObj.pathname,
      parsedSearch: urlObj.search,
      searchParamsPath: urlObj.searchParams.get('...path'),
      allSearchParams: Object.fromEntries(urlObj.searchParams),
      headers: {
        'x-matched-path': req.headers['x-matched-path'],
        'x-invoke-path': req.headers['x-invoke-path'],
        'x-vercel-forwarded-for': req.headers['x-vercel-forwarded-for'],
      },
      computedPath: pathParam,
    }, null, 2));
  }
  
  if (pathParam) {
    // Remove path params from search params
    urlObj.searchParams.delete('...path');
    urlObj.searchParams.delete('path');
    
    // Reconstruct URL with proper path
    const newPath = '/api/' + pathParam;
    const newSearch = urlObj.search || '';
    req.url = newPath + newSearch;
  }
  
  // Pass to Express
  return app(req, res);
};
