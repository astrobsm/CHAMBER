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
  
  if (!email || !password) {
    return res.status(400).json({ success: false, message: 'Email and password are required' });
  }
  
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
    const bcrypt = require('bcryptjs');
    const result = await query(
      `SELECT u.*, 
        COALESCE(s.first_name, a.first_name, adm.first_name) as first_name, 
        COALESCE(s.last_name, a.last_name, adm.last_name) as last_name, 
        s.matriculation_number 
      FROM users u 
      LEFT JOIN students s ON u.id = s.user_id 
      LEFT JOIN assessors a ON u.id = a.user_id 
      LEFT JOIN administrators adm ON u.id = adm.user_id 
      WHERE LOWER(u.email) = LOWER($1)`,
      [email]
    );
    
    if (result.rows.length > 0) {
      const user = result.rows[0];
      const passwordMatch = await bcrypt.compare(password, user.password_hash);
      
      if (!passwordMatch) {
        return res.status(401).json({ success: false, message: 'Invalid email or password' });
      }
      
      const token = `user-token-${Date.now()}-${Math.random().toString(36).substr(2, 9)}`;
      
      return res.json({
        success: true,
        message: 'Login successful',
        data: {
          user: {
            id: user.id,
            email: user.email,
            role: user.role,
            firstName: user.first_name || '',
            lastName: user.last_name || '',
          },
          profile: {
            matricNumber: user.matriculation_number || null,
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

// Register endpoint
app.post('/api/auth/register', async (req, res) => {
  try {
    const { firstName, lastName, email, password, matricNumber, level, phoneNumber } = req.body;
    
    if (!email || !password || !firstName || !lastName) {
      return res.status(400).json({ success: false, message: 'First name, last name, email, and password are required' });
    }
    
    // Check if user already exists
    const existingUser = await query('SELECT id FROM users WHERE LOWER(email) = LOWER($1)', [email]);
    if (existingUser.rows.length > 0) {
      return res.status(409).json({ success: false, message: 'An account with this email already exists' });
    }
    
    const bcrypt = require('bcryptjs');
    const hashedPassword = await bcrypt.hash(password, 10);
    
    // Create user
    const userResult = await query(
      'INSERT INTO users (email, password_hash, role, is_active) VALUES (LOWER($1), $2, $3, true) RETURNING id, email, role',
      [email, hashedPassword, 'student']
    );
    const user = userResult.rows[0];
    
    // Create student profile
    const matric = matricNumber || ('MAT/' + Date.now());
    const studentLevel = level || 'surgery_1';
    await query(
      'INSERT INTO students (user_id, first_name, last_name, matriculation_number, level, phone_number) VALUES ($1, $2, $3, $4, $5, $6)',
      [user.id, firstName, lastName, matric, studentLevel, phoneNumber || '']
    );
    
    const token = `user-token-${Date.now()}-${Math.random().toString(36).substr(2, 9)}`;
    
    res.json({
      success: true,
      message: 'Registration successful',
      data: {
        user: {
          id: user.id,
          email: user.email,
          role: user.role,
          firstName,
          lastName,
        },
        profile: {
          matricNumber: matric,
        },
        accessToken: token,
        refreshToken: `refresh-${token}`,
      },
    });
  } catch (error) {
    console.error('Registration error:', error);
    if (error.message && error.message.includes('duplicate key')) {
      return res.status(409).json({ success: false, message: 'An account with this email already exists' });
    }
    res.status(500).json({ success: false, message: 'Registration failed. Please try again.' });
  }
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

// Forgot password - resets to temp password
app.post('/api/auth/forgot-password', async (req, res) => {
  try {
    const { email } = req.body;
    if (!email) {
      return res.status(400).json({ success: false, message: 'Email is required' });
    }
    const userResult = await query('SELECT id, email FROM users WHERE LOWER(email) = LOWER($1)', [email]);
    if (userResult.rows.length === 0) {
      // Don't reveal whether email exists - always show success
      return res.json({ success: true, message: 'If an account with that email exists, the password has been reset. Please contact your administrator for the new temporary password.' });
    }
    const bcrypt = require('bcryptjs');
    const chars = 'ABCDEFGHJKMNPQRSTUVWXYZabcdefghjkmnpqrstuvwxyz23456789';
    let tempPassword = '';
    for (let i = 0; i < 8; i++) tempPassword += chars.charAt(Math.floor(Math.random() * chars.length));
    const hashed = await bcrypt.hash(tempPassword, 10);
    await query('UPDATE users SET password_hash = $1, updated_at = NOW() WHERE id = $2', [hashed, userResult.rows[0].id]);
    res.json({
      success: true,
      message: 'Your password has been reset.',
      temporary_password: tempPassword
    });
  } catch (error) {
    console.error('Forgot password error:', error);
    res.status(500).json({ success: false, message: 'Failed to reset password. Please try again.' });
  }
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
    const result = await query(`SELECT u.id, u.email, u.role, u.is_active, COALESCE(s.first_name, a.first_name) as first_name, COALESCE(s.last_name, a.last_name) as last_name, s.phone_number FROM users u LEFT JOIN students s ON u.id = s.user_id LEFT JOIN assessors a ON u.id = a.user_id ORDER BY u.created_at DESC LIMIT 50`);
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

// Student dashboard
app.get('/api/students/dashboard', async (req, res) => {
  try {
    // Get actual student rotation enrollments (not just rotation definitions)
    let totalRotations = 0, completedRotations = 0, overallAttendance = 0, overallScore = 0;
    let currentRotation = null;

    try {
      const srResult = await query(
        `SELECT sr.*, r.name as rotation_name, r.start_date as r_start, r.end_date as r_end,
                r.duration_weeks, rc.name as department
         FROM student_rotations sr
         JOIN rotations r ON sr.rotation_id = r.id
         LEFT JOIN rotation_categories rc ON r.category_id = rc.id
         ORDER BY sr.start_date DESC`
      );
      totalRotations = srResult.rows.length;
      completedRotations = srResult.rows.filter(r => r.is_cleared || r.status === 'cleared').length;

      // Find active rotation
      const now = new Date();
      const active = srResult.rows.find(r => r.status === 'active');
      if (active) {
        const start = new Date(active.start_date);
        const end = new Date(active.end_date);
        const totalDays = Math.max((end - start) / (1000 * 60 * 60 * 24), 1);
        const elapsed = Math.max((now - start) / (1000 * 60 * 60 * 24), 0);
        const progress = Math.min(Math.round((elapsed / totalDays) * 100), 100);
        const daysRemaining = Math.max(Math.ceil((end - now) / (1000 * 60 * 60 * 24)), 0);
        currentRotation = {
          id: active.rotation_id,
          name: active.rotation_name,
          department: active.department || 'Surgery',
          progress,
          daysRemaining,
          attendanceRate: 0,
          averageScore: parseFloat(active.final_score) || 0,
        };
      }

      // Compute real averages from cleared rotations
      const cleared = srResult.rows.filter(r => r.final_score);
      if (cleared.length > 0) {
        overallScore = Math.round(cleared.reduce((sum, r) => sum + parseFloat(r.final_score), 0) / cleared.length);
      }
    } catch (e) { /* student_rotations table may not exist yet */ }

    // Get CME credits earned (from real user progress, not just article count)
    let cmePoints = 0;
    try {
      const cmeResult = await query(`SELECT COALESCE(SUM(credits_earned), 0) as total FROM user_study_progress WHERE credits_earned > 0`);
      cmePoints = parseInt(cmeResult.rows[0]?.total || '0');
    } catch (e) { /* table may not exist */ }

    res.json({
      success: true,
      data: {
        currentRotation,
        stats: {
          totalRotations,
          completedRotations,
          upcomingTests: 0,
          cmePoints,
          overallAttendance,
          overallScore,
        },
        weeklyProgress: [],
        upcomingTests: [],
        recentActivity: [],
        clearanceStatus: {
          isCleared: false,
          percentage: 0,
          requirements: [
            { name: 'Attendance', met: false, current: overallAttendance, required: 75 },
            { name: 'Tests Completed', met: false, current: 0, required: 5 },
            { name: 'CME Credits', met: cmePoints >= 10, current: cmePoints, required: 10 },
            { name: 'Clinical Hours', met: false, current: 0, required: 100 },
          ],
        },
      },
    });
  } catch (error) {
    console.error('Dashboard error:', error);
    res.json({
      success: true,
      data: {
        currentRotation: null,
        stats: { totalRotations: 0, completedRotations: 0, upcomingTests: 0, cmePoints: 0, overallAttendance: 0, overallScore: 0 },
        weeklyProgress: [],
        upcomingTests: [],
        recentActivity: [],
        clearanceStatus: { isCleared: false, percentage: 0, requirements: [] },
      },
    });
  }
});

// ============== ROTATIONS ENDPOINTS ==============

// Student's rotations
app.get('/api/rotations/my', async (req, res) => {
  try {
    // Query actual student_rotations enrollment table - only shows real enrollments
    const result = await query(
      `SELECT sr.*, r.name as rotation_name, r.description, r.start_date as r_start, r.end_date as r_end,
              r.duration_weeks, rc.name as department,
              COALESCE(sr.final_score, 0) as avg_score
       FROM student_rotations sr
       JOIN rotations r ON sr.rotation_id = r.id
       LEFT JOIN rotation_categories rc ON r.category_id = rc.id
       ORDER BY sr.start_date DESC`
    );
    const now = new Date();
    const rotations = result.rows.map(sr => {
      const start = new Date(sr.start_date);
      const end = new Date(sr.end_date);
      const durationWeeks = sr.duration_weeks || Math.round((end - start) / (7 * 24 * 60 * 60 * 1000));
      const status = sr.status === 'cleared' ? 'completed' : sr.status === 'active' ? 'in_progress' : 'enrolled';
      return {
        id: sr.id,
        rotationId: sr.rotation_id,
        studentId: sr.student_id,
        enrolledAt: sr.created_at,
        status,
        attendanceRate: 0,
        averageScore: parseFloat(sr.avg_score) || 0,
        isCleared: sr.is_cleared || false,
        clearanceDate: sr.cleared_at || null,
        rotation: {
          id: sr.rotation_id,
          name: sr.rotation_name,
          description: sr.description || '',
          department: sr.department || 'Surgery',
          durationWeeks,
          startDate: sr.r_start || sr.start_date,
          endDate: sr.r_end || sr.end_date,
          level: 'Surgery I',
          isActive: true,
          totalStudents: 0,
          maxStudents: 30,
        },
        progress: status === 'completed' ? 100 : status === 'in_progress' ? Math.min(Math.round(((now - start) / (end - start)) * 100), 100) : 0,
      };
    });
    res.json({ success: true, data: rotations });
  } catch (error) {
    console.error('Rotations my error:', error);
    res.json({ success: true, data: [] });
  }
});

app.get('/api/rotations', async (req, res) => {
  try {
    const result = await query(`SELECT r.*, rc.name as category_name FROM rotations r LEFT JOIN rotation_categories rc ON r.category_id = rc.id WHERE r.is_active = true ORDER BY r.start_date DESC`);
    res.json({ success: true, data: { rotations: result.rows.map(r => {
      const now = new Date();
      const start = new Date(r.start_date);
      const end = new Date(r.end_date);
      const status = start <= now && end >= now ? 'active' : start > now ? 'upcoming' : 'completed';
      return {
        id: r.id,
        name: r.name,
        description: r.description || '',
        category: r.category_name,
        category_id: r.category_id,
        level: r.level || '',
        duration_weeks: r.duration_weeks || Math.round((end - start) / (7 * 24 * 60 * 60 * 1000)),
        start_date: r.start_date,
        end_date: r.end_date,
        startDate: r.start_date,
        endDate: r.end_date,
        is_active: r.is_active,
        status,
        assessor_id: r.assessor_id || null,
        assessor_name: r.assessor_name || null,
        student_count: r.student_count || 0,
        requirements: {
          min_attendance: r.min_attendance || 75,
          min_tests: r.min_tests || 75,
          min_participation: r.min_participation || 75,
        },
      };
    }) } });
  } catch (error) {
    res.json({ success: true, data: { rotations: [{ id: '1', name: 'Surgery', duration: '8 weeks', startDate: '2026-01-06', endDate: '2026-03-01', status: 'active', requirements: { min_attendance: 75, min_tests: 75, min_participation: 75 } }] } });
  }
});

// Get rotation categories
app.get('/api/rotations/categories', async (req, res) => {
  try {
    const result = await query('SELECT id, name, description FROM rotation_categories ORDER BY name');
    res.json({ success: true, data: result.rows });
  } catch (error) {
    res.json({ success: true, data: [] });
  }
});

// Get single rotation by ID
app.get('/api/rotations/:id', async (req, res) => {
  try {
    const result = await query(`SELECT r.*, rc.name as category_name FROM rotations r LEFT JOIN rotation_categories rc ON r.category_id = rc.id WHERE r.id = $1`, [req.params.id]);
    if (result.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Rotation not found' });
    }
    const r = result.rows[0];
    const now = new Date();
    const start = new Date(r.start_date);
    const end = new Date(r.end_date);
    const status = start <= now && end >= now ? 'active' : start > now ? 'upcoming' : 'completed';
    res.json({ success: true, data: {
      id: r.id, name: r.name, description: r.description || '', category: r.category_name, category_id: r.category_id,
      level: r.level || '', duration_weeks: r.duration_weeks || Math.round((end - start) / (7 * 24 * 60 * 60 * 1000)),
      start_date: r.start_date, end_date: r.end_date, startDate: r.start_date, endDate: r.end_date,
      is_active: r.is_active, status, assessor_id: r.assessor_id || null, assessor_name: r.assessor_name || null,
      student_count: r.student_count || 0,
      requirements: { min_attendance: r.min_attendance || 75, min_tests: r.min_tests || 75, min_participation: r.min_participation || 75 },
    } });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Create rotation
app.post('/api/rotations', async (req, res) => {
  try {
    const { name, category_id, start_date, end_date } = req.body;
    if (!name || !start_date || !end_date) {
      return res.status(400).json({ success: false, message: 'Name, start_date, and end_date are required' });
    }
    // Use first category if not provided
    let catId = category_id;
    if (!catId) {
      const catResult = await query('SELECT id FROM rotation_categories LIMIT 1');
      catId = catResult.rows[0]?.id;
      if (!catId) return res.status(400).json({ success: false, message: 'No rotation categories exist. Create one first.' });
    }
    const result = await query(
      'INSERT INTO rotations (name, category_id, start_date, end_date) VALUES ($1, $2, $3, $4) RETURNING *',
      [name, catId, start_date, end_date]
    );
    res.json({ success: true, data: result.rows[0] });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Update rotation
app.put('/api/rotations/:id', async (req, res) => {
  try {
    const { name, category_id, start_date, end_date, is_active } = req.body;
    const result = await query(
      'UPDATE rotations SET name = COALESCE($1, name), category_id = COALESCE($2, category_id), start_date = COALESCE($3, start_date), end_date = COALESCE($4, end_date), is_active = COALESCE($5, is_active), updated_at = NOW() WHERE id = $6 RETURNING *',
      [name, category_id, start_date, end_date, is_active, req.params.id]
    );
    if (result.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Rotation not found' });
    }
    res.json({ success: true, data: result.rows[0] });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Delete rotation
app.delete('/api/rotations/:id', async (req, res) => {
  try {
    await query('UPDATE rotations SET is_active = false WHERE id = $1', [req.params.id]);
    res.json({ success: true, message: 'Rotation deactivated' });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
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

app.get('/api/tests', async (req, res) => {
  try {
    const result = await query(
      `SELECT t.*, rc.name as category_name FROM tests t 
       LEFT JOIN rotation_categories rc ON t.category_id = rc.id 
       WHERE t.is_active = true ORDER BY t.scheduled_at DESC LIMIT 20`
    );
    res.json({ success: true, data: result.rows.map(t => ({
      id: t.id,
      title: t.title || t.name,
      name: t.name || t.title,
      description: t.description || '',
      category: t.category_name,
      scheduledAt: t.scheduled_at,
      duration: t.duration_minutes || 60,
      maxAttempts: t.max_attempts || 1,
      isActive: t.is_active,
      questionCount: t.question_count || 50,
    })) });
  } catch (error) {
    // Return empty array instead of object to avoid .map errors
    res.json({ success: true, data: [] });
  }
});

app.get('/api/tests/my-attempts', async (req, res) => {
  try {
    const result = await query(
      `SELECT ta.*, t.title as test_title, t.name as test_name 
       FROM test_attempts ta 
       LEFT JOIN tests t ON ta.test_id = t.id 
       ORDER BY ta.started_at DESC LIMIT 20`
    );
    res.json({ success: true, data: result.rows.map(a => ({
      id: a.id,
      testId: a.test_id,
      testTitle: a.test_title || a.test_name,
      score: a.score,
      totalQuestions: a.total_questions,
      correctAnswers: a.correct_answers,
      startedAt: a.started_at,
      completedAt: a.completed_at,
      status: a.status || 'completed',
    })) });
  } catch (error) {
    // Return empty array on error
    res.json({ success: true, data: [] });
  }
});

// ============== STUDY MODULE ENDPOINTS ==============

// Get all study articles with summary stats
app.get('/api/study/articles', async (req, res) => {
  try {
    const result = await query(`
      SELECT a.id, a.title, a.subtitle, a.authors, a.cme_credits, a.estimated_reading_minutes,
             a.difficulty_level, a.is_published,
             rc.name as topic_name,
             COALESCE(qcount.cnt, 0) as question_count
      FROM cme_articles a
      LEFT JOIN rotation_categories rc ON a.category_id = rc.id
      LEFT JOIN (
        SELECT article_id, COUNT(*) as cnt FROM article_self_assessments GROUP BY article_id
      ) qcount ON qcount.article_id = a.id
      WHERE a.is_published = true
      ORDER BY rc.name, a.title
    `);

    const articles = result.rows.map(a => ({
      ...a,
      difficulty_level: a.difficulty_level || 'medium',
      topic_name: a.topic_name || 'General',
      question_count: parseInt(a.question_count) || 0,
      cme_credits: parseFloat(a.cme_credits) || 1,
      started: false,
      completed: false,
      reading_progress: 0,
      assessment_score: 0,
    }));

    const totalCredits = articles.reduce((sum, a) => sum + a.cme_credits, 0);

    res.json({
      success: true,
      data: {
        articles,
        summary: {
          totalArticles: articles.length,
          completedArticles: 0,
          earnedCredits: 0,
          totalCredits,
          progressPercent: 0,
        }
      }
    });
  } catch (error) {
    console.error('Study articles error:', error.message);
    res.json({ success: true, data: { articles: [], summary: { totalArticles: 0, completedArticles: 0, earnedCredits: 0, totalCredits: 0, progressPercent: 0 } } });
  }
});

// Get overall study progress
app.get('/api/study/progress', async (req, res) => {
  try {
    res.json({
      success: true,
      data: {
        summary: {
          total_time_seconds: 0,
          articles_started: 0,
          articles_completed: 0,
          total_credits_earned: 0,
        }
      }
    });
  } catch (error) {
    res.json({ success: true, data: { summary: { total_time_seconds: 0, articles_started: 0, articles_completed: 0, total_credits_earned: 0 } } });
  }
});

// Get single article with sections and references
app.get('/api/study/articles/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const articleResult = await query(
      `SELECT a.*, rc.name as topic_name FROM cme_articles a
       LEFT JOIN rotation_categories rc ON a.category_id = rc.id
       WHERE a.id = $1`, [id]
    );
    if (articleResult.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Article not found' });
    }
    const article = articleResult.rows[0];
    article.topic_name = article.topic_name || 'General';

    const sectionsResult = await query(
      `SELECT id, section_type, title, content, section_order FROM article_sections WHERE article_id = $1 ORDER BY section_order`, [id]
    );

    const referencesResult = await query(
      `SELECT id, reference_number, citation, doi, url FROM article_references WHERE article_id = $1 ORDER BY reference_number`, [id]
    );

    res.json({
      success: true,
      data: {
        article,
        sections: sectionsResult.rows,
        references: referencesResult.rows,
        progress: null,
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Update article progress
app.post('/api/study/articles/:id/progress', async (req, res) => {
  try {
    const { progress_percent } = req.body;
    res.json({ success: true, data: { article_id: req.params.id, progress_percent } });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Get assessment questions for an article
app.get('/api/study/articles/:id/assessment', async (req, res) => {
  try {
    const { id } = req.params;
    const result = await query(
      `SELECT id, question_text, option_a, option_b, option_c, option_d, option_e
       FROM article_self_assessments WHERE article_id = $1 ORDER BY id`, [id]
    );
    res.json({ success: true, data: { questions: result.rows } });
  } catch (error) {
    res.json({ success: true, data: { questions: [] } });
  }
});

// Submit assessment answers
app.post('/api/study/articles/:id/assessment/submit', async (req, res) => {
  try {
    const { id } = req.params;
    const { answers } = req.body;

    // Get correct answers
    const questionsResult = await query(
      `SELECT id, correct_option, explanation FROM article_self_assessments WHERE article_id = $1`, [id]
    );

    const questionMap = {};
    questionsResult.rows.forEach(q => { questionMap[q.id] = q; });

    let correctCount = 0;
    const results = (answers || []).map(a => {
      const q = questionMap[a.question_id];
      const isCorrect = q && q.correct_option === a.selected_option;
      if (isCorrect) correctCount++;
      return {
        question_id: a.question_id,
        selected_option: a.selected_option,
        correct_option: q?.correct_option || '',
        is_correct: !!isCorrect,
        explanation: q?.explanation || '',
      };
    });

    const totalQuestions = answers?.length || 0;
    const score = totalQuestions > 0 ? (correctCount / totalQuestions) * 100 : 0;
    const passed = score >= 70;

    // Get CME credits for this article
    let cmeCreditsEarned = 0;
    if (passed) {
      const articleResult = await query(`SELECT cme_credits FROM cme_articles WHERE id = $1`, [id]);
      cmeCreditsEarned = parseFloat(articleResult.rows[0]?.cme_credits || 0);
    }

    res.json({
      success: true,
      data: {
        score,
        correctCount,
        totalQuestions,
        passed,
        cmeCreditsEarned,
        results,
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// ============== CME ENDPOINTS ==============

app.get('/api/cme/articles', async (req, res) => {
  try {
    const result = await query(`
      SELECT a.*, rc.name as category_name
      FROM cme_articles a
      LEFT JOIN rotation_categories rc ON a.category_id = rc.id
      WHERE a.is_published = true
      ORDER BY a.created_at DESC
    `);
    res.json({ success: true, data: result.rows });
  } catch (error) {
    console.error('CME articles error:', error.message);
    res.json({ success: true, data: [] });
  }
});

app.get('/api/cme/admin/stats', async (req, res) => {
  try {
    const articlesResult = await query('SELECT COUNT(*) FROM cme_articles WHERE is_published = true');
    const totalArticles = parseInt(articlesResult.rows[0]?.count || 0);

    // Get study progress stats
    let totalStudentsEngaged = 0, totalCompletions = 0, totalCreditsAwarded = 0, avgScore = 0, totalStudyHours = 0, sessions24h = 0, sessions7d = 0;
    try {
      const engaged = await query('SELECT COUNT(DISTINCT student_id) FROM user_study_progress');
      totalStudentsEngaged = parseInt(engaged.rows[0]?.count || 0);
      const completions = await query('SELECT COUNT(*) FROM user_study_progress WHERE is_fully_completed = true');
      totalCompletions = parseInt(completions.rows[0]?.count || 0);
      const credits = await query('SELECT COALESCE(SUM(cme_credits_earned), 0) as total FROM user_study_progress');
      totalCreditsAwarded = parseFloat(credits.rows[0]?.total || 0);
      const score = await query('SELECT COALESCE(AVG(assessment_score), 0) as avg FROM user_study_progress WHERE assessment_completed = true');
      avgScore = parseFloat(score.rows[0]?.avg || 0);
      const hours = await query('SELECT COALESCE(SUM(time_spent_seconds), 0) as total FROM user_study_progress');
      totalStudyHours = parseFloat(hours.rows[0]?.total || 0) / 3600;
      const s24 = await query("SELECT COUNT(*) FROM study_session_logs WHERE session_start > NOW() - INTERVAL '24 hours'");
      sessions24h = parseInt(s24.rows[0]?.count || 0);
      const s7d = await query("SELECT COUNT(*) FROM study_session_logs WHERE session_start > NOW() - INTERVAL '7 days'");
      sessions7d = parseInt(s7d.rows[0]?.count || 0);
    } catch (e) { /* progress tables may be empty */ }

    res.json({
      success: true,
      data: {
        total_articles: totalArticles,
        total_students_engaged: totalStudentsEngaged,
        total_completions: totalCompletions,
        total_credits_awarded: totalCreditsAwarded,
        avg_assessment_score: avgScore,
        total_study_hours: totalStudyHours,
        sessions_last_24h: sessions24h,
        sessions_last_7days: sessions7d,
      }
    });
  } catch (error) {
    console.error('CME stats error:', error.message);
    res.json({ success: true, data: { total_articles: 0, total_students_engaged: 0, total_completions: 0, total_credits_awarded: 0, avg_assessment_score: 0, total_study_hours: 0, sessions_last_24h: 0, sessions_last_7days: 0 } });
  }
});

app.get('/api/cme/admin/articles', async (req, res) => {
  try {
    const result = await query(`
      SELECT a.id, a.title, a.subtitle, a.cme_credits, a.estimated_reading_minutes,
             a.is_published, a.difficulty_level as level, a.created_at,
             rc.name as category_name,
             COALESCE(stats.total_readers, 0) as total_readers,
             COALESCE(stats.completed_readers, 0) as completed_readers,
             COALESCE(stats.avg_score, 0) as avg_assessment_score,
             COALESCE(stats.total_time, 0) as total_study_time_seconds,
             COALESCE(qcount.cnt, 0) as total_questions
      FROM cme_articles a
      LEFT JOIN rotation_categories rc ON a.category_id = rc.id
      LEFT JOIN (
        SELECT article_id,
               COUNT(DISTINCT student_id) as total_readers,
               COUNT(DISTINCT CASE WHEN is_fully_completed THEN student_id END) as completed_readers,
               AVG(CASE WHEN assessment_completed THEN assessment_score END) as avg_score,
               SUM(time_spent_seconds) as total_time
        FROM user_study_progress GROUP BY article_id
      ) stats ON stats.article_id = a.id
      LEFT JOIN (
        SELECT article_id, COUNT(*) as cnt FROM article_self_assessments GROUP BY article_id
      ) qcount ON qcount.article_id = a.id
      ORDER BY a.created_at DESC
    `);
    res.json({ success: true, data: result.rows });
  } catch (error) {
    console.error('CME admin articles error:', error.message);
    res.json({ success: true, data: [] });
  }
});

app.get('/api/cme/admin/articles/:articleId/progress', async (req, res) => {
  try {
    const { articleId } = req.params;
    const result = await query(`
      SELECT usp.*, s.matriculation_number, s.first_name, s.last_name, s.level,
             u.email
      FROM user_study_progress usp
      JOIN students s ON usp.student_id = s.id
      JOIN users u ON s.user_id = u.id
      WHERE usp.article_id = $1
      ORDER BY usp.last_accessed_at DESC NULLS LAST
    `, [articleId]);
    res.json({ success: true, data: result.rows });
  } catch (error) {
    console.error('Article progress error:', error.message);
    res.json({ success: true, data: [] });
  }
});

app.get('/api/cme/admin/students', async (req, res) => {
  try {
    const result = await query(`
      SELECT s.id as student_id, s.matriculation_number, s.first_name, s.last_name,
             u.email, s.level,
             COUNT(DISTINCT usp.article_id) FILTER (WHERE usp.started_at IS NOT NULL) as articles_started,
             COUNT(DISTINCT usp.article_id) FILTER (WHERE usp.is_fully_completed) as articles_completed,
             COALESCE(SUM(usp.cme_credits_earned), 0) as total_credits,
             COALESCE(AVG(usp.assessment_score) FILTER (WHERE usp.assessment_completed), 0) as avg_assessment_score,
             COALESCE(SUM(usp.time_spent_seconds), 0) as total_study_seconds,
             MAX(usp.last_accessed_at) as last_study_activity
      FROM students s
      JOIN users u ON s.user_id = u.id
      LEFT JOIN user_study_progress usp ON usp.student_id = s.id
      GROUP BY s.id, s.matriculation_number, s.first_name, s.last_name, u.email, s.level
      ORDER BY s.last_name, s.first_name
    `);
    res.json({ success: true, data: result.rows });
  } catch (error) {
    console.error('CME students error:', error.message);
    res.json({ success: true, data: [] });
  }
});

app.get('/api/cme/admin/students/:studentId/progress', async (req, res) => {
  try {
    const { studentId } = req.params;
    const result = await query(`
      SELECT usp.*, a.title as article_title, a.cme_credits,
             rc.name as category_name, t.name as topic_name
      FROM user_study_progress usp
      JOIN cme_articles a ON usp.article_id = a.id
      LEFT JOIN rotation_categories rc ON a.category_id = rc.id
      WHERE usp.student_id = $1
      ORDER BY usp.last_accessed_at DESC NULLS LAST
    `, [studentId]);
    res.json({ success: true, data: result.rows });
  } catch (error) {
    console.error('Student progress error:', error.message);
    res.json({ success: true, data: [] });
  }
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
  // Return CSV template for bulk user upload
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
    const tempPassword = password || 'changeme123';
    const hashed = await bcrypt.hash(tempPassword, 10);
    const result = await query(
      'INSERT INTO users (email, password_hash, role, is_active) VALUES ($1, $2, $3, true) RETURNING id, email, role',
      [email.toLowerCase(), hashed, role]
    );
    const user = result.rows[0];
    const phone = phone_number || '';
    if (role === 'student') {
      const matric = matriculation_number || ('MAT/' + Date.now());
      const lvl = level || 'surgery_1';
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
    res.json({ success: true, temporary_password: tempPassword, data: { ...user, first_name: first_name || '', last_name: last_name || '', phone_number: phone } });
  } catch (error) {
    if (error.message && error.message.includes('duplicate key')) {
      return res.status(409).json({ success: false, message: 'A user with this email already exists' });
    }
    if (error.message && error.message.includes('violates')) {
      return res.status(400).json({ success: false, message: error.message });
    }
    res.status(500).json({ success: false, message: error.message });
  }
});

app.put('/api/admin/users/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const { email, role, is_active, first_name, last_name } = req.body;
    await query('UPDATE users SET email = COALESCE($1, email), role = COALESCE($2, role), is_active = COALESCE($3, is_active) WHERE id = $4', [email, role, is_active, id]);
    // Update profile if name provided
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

// Reset user password
app.post('/api/admin/users/:id/reset-password', async (req, res) => {
  try {
    const bcrypt = require('bcryptjs');
    const chars = 'ABCDEFGHJKMNPQRSTUVWXYZabcdefghjkmnpqrstuvwxyz23456789';
    let tempPassword = '';
    for (let i = 0; i < 8; i++) tempPassword += chars.charAt(Math.floor(Math.random() * chars.length));
    const hashed = await bcrypt.hash(tempPassword, 10);
    const result = await query('UPDATE users SET password_hash = $1, updated_at = NOW() WHERE id = $2 RETURNING id, email', [hashed, req.params.id]);
    if (result.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'User not found' });
    }
    // Try to get the user's name and phone from students or assessors table
    let userProfile = { first_name: '', last_name: '', phone_number: '' };
    try {
      const studentResult = await query('SELECT first_name, last_name, phone_number FROM students WHERE user_id = $1', [req.params.id]);
      if (studentResult.rows.length > 0) { userProfile = studentResult.rows[0]; }
      else {
        const assessorResult = await query('SELECT first_name, last_name FROM assessors WHERE user_id = $1', [req.params.id]);
        if (assessorResult.rows.length > 0) { userProfile = { ...assessorResult.rows[0], phone_number: '' }; }
      }
    } catch (e) { /* ignore - profile is optional */ }
    res.json({ success: true, message: 'Password reset successfully', temporary_password: tempPassword, data: { ...result.rows[0], ...userProfile } });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// ============== SYNC ENDPOINTS ==

app.post('/api/sync/upload', (req, res) => {
  res.json({ success: true, message: 'Data synced successfully', data: { synced: 0 } });
});

app.get('/api/sync/download', (req, res) => {
  res.json({ success: true, data: { questions: [], rotations: [], topics: [] } });
});

// POST /api/sync/push — receive offline changes from client
app.post('/api/sync/push', (req, res) => {
  const { data } = req.body;
  const count = Array.isArray(data) ? data.length : 0;
  // Return success for all items (simplified — full implementation in backend/src/routes/sync.ts)
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

// GET /api/sync/pull — send data to client for offline caching
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

    // Fetch categories, topics, and rotation data for offline use
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

// GET /api/sync/status — return sync health
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
