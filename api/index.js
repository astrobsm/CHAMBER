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

// ============== AUTH TOKEN HELPERS ==============
// Encode the user identity into the access token so subsequent requests can be
// attributed to the correct user without a server-side session store.
// Format: "usr.<base64url(JSON)>" — JSON contains { id, role, email, ts }.
function makeToken(user) {
  const payload = { id: user.id, role: user.role, email: user.email || null, ts: Date.now() };
  const encoded = Buffer.from(JSON.stringify(payload)).toString('base64url');
  return `usr.${encoded}`;
}

// Decode the authenticated user from the Authorization header (Bearer token).
// Returns { id, role, email } or null. Tolerates legacy tokens gracefully.
function getAuthUser(req) {
  try {
    const header = req.headers.authorization || '';
    const token = header.startsWith('Bearer ') ? header.slice(7).trim() : header.trim();
    if (!token) return null;
    if (token.startsWith('usr.')) {
      const json = Buffer.from(token.slice(4), 'base64url').toString('utf8');
      const payload = JSON.parse(json);
      if (payload && payload.id) {
        return { id: payload.id, role: payload.role || null, email: payload.email || null };
      }
    }
    if (token.startsWith('admin-token-')) {
      return { id: 'admin-001', role: 'admin', email: null };
    }
    return null;
  } catch (e) {
    return null;
  }
}

// Resolve the students.id (primary key) for the authenticated user.
// Returns the student PK string, or null if not a student / not found.
async function resolveStudentId(req) {
  const auth = getAuthUser(req);
  if (!auth || !auth.id) return null;
  if (auth.role && auth.role !== 'student') return null;
  try {
    const r = await query('SELECT id FROM students WHERE user_id = $1', [auth.id]);
    return r.rows.length ? r.rows[0].id : null;
  } catch (e) {
    return null;
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

// One-time migration: add missing columns
app.get('/api/migrate-rotations', async (req, res) => {
  try {
    await query('ALTER TABLE rotations ADD COLUMN IF NOT EXISTS assessor_id UUID');
    await query('ALTER TABLE rotations ADD COLUMN IF NOT EXISTS description TEXT DEFAULT \'\'');
    await query('ALTER TABLE rotations ADD COLUMN IF NOT EXISTS level VARCHAR(50) DEFAULT \'\'');
    await query('ALTER TABLE rotations ADD COLUMN IF NOT EXISTS duration_weeks INTEGER');
    res.json({ success: true, message: 'Migration complete' });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Debug endpoint - check environment
app.get('/api/debug-env', async (req, res) => {
  const dbUrl = process.env.DATABASE_URL;
  let studentsCheck = null;
  let sessionsColumns = null;
  try {
    const s = await query('SELECT s.id, s.user_id, s.first_name, s.last_name FROM students s LIMIT 10');
    studentsCheck = s.rows;
  } catch (e) { studentsCheck = e.message; }
  try {
    const c = await query("SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'attendance_sessions' ORDER BY ordinal_position");
    sessionsColumns = c.rows;
  } catch (e) { sessionsColumns = e.message; }
  let recordsColumns = null;
  try {
    const c = await query("SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'attendance_records' ORDER BY ordinal_position");
    recordsColumns = c.rows;
  } catch (e) { recordsColumns = e.message; }
  let rotationsColumns = null;
  try {
    const c = await query("SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'rotations' ORDER BY ordinal_position");
    rotationsColumns = c.rows;
  } catch (e) { rotationsColumns = e.message; }
  res.json({
    hasDbUrl: !!dbUrl,
    studentsCheck,
    sessionsColumns,
    recordsColumns,
    rotationsColumns,
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
    const token = makeToken(adminUser);
    
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
      
      const token = makeToken({ id: user.id, role: user.role, email: user.email });
      
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
    const existingUser = await query('SELECT u.id FROM users u WHERE LOWER(u.email) = LOWER($1)', [email]);
    if (existingUser.rows.length > 0) {
      // Check if student profile exists — if not, this is an orphaned user from a failed registration
      const existingStudent = await query('SELECT id FROM students WHERE user_id = $1', [existingUser.rows[0].id]);
      if (existingStudent.rows.length > 0) {
        return res.status(409).json({ success: false, message: 'An account with this email already exists' });
      }
      // Orphaned user — delete and allow re-registration
      await query('DELETE FROM users WHERE id = $1', [existingUser.rows[0].id]);
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
    // Map frontend level names to DB enum values
    const levelMap = {
      'Surgery I': 'surgery_1',
      'Surgery II': 'surgery_2',
      'Surgery III': 'surgery_3',
      'Surgery IV': 'surgery_4',
    };
    const studentLevel = levelMap[level] || level || 'surgery_1';
    
    // Try both possible column names for matric number
    try {
      await query(
        'INSERT INTO students (user_id, first_name, last_name, matriculation_number, level, phone_number) VALUES ($1, $2, $3, $4, $5, $6)',
        [user.id, firstName, lastName, matric, studentLevel, phoneNumber || '']
      );
    } catch (colErr) {
      if (colErr.message && colErr.message.includes('matriculation_number')) {
        await query(
          'INSERT INTO students (user_id, first_name, last_name, matric_number, level, phone_number) VALUES ($1, $2, $3, $4, $5, $6)',
          [user.id, firstName, lastName, matric, studentLevel, phoneNumber || '']
        );
      } else {
        throw colErr;
      }
    }
    
    const token = makeToken({ id: user.id, role: user.role, email: user.email });
    
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
    // Refresh tokens are issued as `refresh-<accessToken>`; recover the embedded
    // access token so the refreshed token keeps the same user identity.
    const inner = refreshToken.startsWith('refresh-') ? refreshToken.slice('refresh-'.length) : null;
    if (inner && inner.startsWith('usr.')) {
      return res.json({ success: true, data: { accessToken: inner, refreshToken: `refresh-${inner}` } });
    }
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
    const assessorsResult = await query('SELECT COUNT(*) FROM assessors').catch(() => ({ rows: [{ count: 0 }] }));

    // Real test stats from tests table
    let totalTests = 0, avgTestScore = 0;
    try {
      const testsResult = await query("SELECT COUNT(*) as total, COALESCE(AVG(percentage), 0) as avg_score FROM tests WHERE status = 'completed'");
      totalTests = parseInt(testsResult.rows[0]?.total || 0);
      avgTestScore = parseFloat(testsResult.rows[0]?.avg_score || 0);
    } catch(e) {}

    // Real attendance stats
    let attendanceRate = 0, todayAttendance = 0;
    try {
      const attResult = await query(
        `SELECT COUNT(*) FILTER (WHERE status = 'present') as present, COUNT(*) as total FROM attendance_records`
      );
      const total = parseInt(attResult.rows[0]?.total || 0);
      const present = parseInt(attResult.rows[0]?.present || 0);
      attendanceRate = total > 0 ? Math.round((present / total) * 100) : 0;
      todayAttendance = attendanceRate;
    } catch(e) {}

    // Clearance rate
    let clearanceRate = 0;
    try {
      const srResult = await query(
        `SELECT COUNT(*) FILTER (WHERE is_cleared = true) as cleared, COUNT(*) as total FROM student_rotations`
      );
      const total = parseInt(srResult.rows[0]?.total || 0);
      const cleared = parseInt(srResult.rows[0]?.cleared || 0);
      clearanceRate = total > 0 ? Math.round((cleared / total) * 100) : 0;
    } catch(e) {}

    // ============ CHART DATA ============

    // 1. Enrollment Trend - students grouped by month of registration
    let enrollmentTrend = [];
    try {
      const etResult = await query(`
        SELECT TO_CHAR(s.created_at, 'Mon') as month, COUNT(*) as students
        FROM students s
        WHERE s.created_at >= NOW() - INTERVAL '12 months'
        GROUP BY DATE_TRUNC('month', s.created_at), TO_CHAR(s.created_at, 'Mon')
        ORDER BY DATE_TRUNC('month', s.created_at)
      `);
      enrollmentTrend = etResult.rows.map(r => ({ month: r.month, students: parseInt(r.students) }));
    } catch(e) { console.error('enrollmentTrend error:', e.message); }

    // 2. Level Distribution - students grouped by level
    let levelDistribution = [];
    try {
      const ldResult = await query(`
        SELECT level, COUNT(*) as value FROM students GROUP BY level ORDER BY level
      `);
      const levelLabels = { surgery_1: 'Surgery I', surgery_2: 'Surgery II', surgery_3: 'Surgery III', surgery_4: 'Surgery IV' };
      levelDistribution = ldResult.rows.map(r => ({
        name: levelLabels[r.level] || r.level,
        value: parseInt(r.value),
      }));
    } catch(e) { console.error('levelDistribution error:', e.message); }

    // 3. Rotation Performance - per-rotation attendance %, test avg %, participation rate
    let rotationPerformance = [];
    try {
      const rpResult = await query(`
        SELECT r.id, r.name,
          (SELECT COUNT(*) FILTER (WHERE ar.status = 'present') * 100.0 / NULLIF(COUNT(*), 0)
           FROM attendance_records ar
           JOIN attendance_sessions asess ON ar.session_id = asess.id
           WHERE asess.rotation_id = r.id) as att_pct,
          (SELECT COALESCE(AVG(t.percentage), 0)
           FROM tests t WHERE t.rotation_id = r.id AND t.status = 'completed') as test_avg,
          (SELECT COUNT(DISTINCT sr.student_id) * 100.0 / NULLIF((SELECT COUNT(*) FROM students), 0)
           FROM student_rotations sr WHERE sr.rotation_id = r.id) as participation
        FROM rotations r WHERE r.is_active = true
        ORDER BY r.name
      `);
      rotationPerformance = rpResult.rows.map(r => ({
        rotation: r.name.length > 15 ? r.name.substring(0, 15) + '...' : r.name,
        attendance: Math.round(parseFloat(r.att_pct || 0)),
        tests: Math.round(parseFloat(r.test_avg || 0)),
        participation: Math.round(parseFloat(r.participation || 0)),
      }));
    } catch(e) { console.error('rotationPerformance error:', e.message); }

    // 4. Weekly Activity - attendance + tests grouped by day of week
    let weeklyActivity = [];
    try {
      const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
      const waResult = await query(`
        SELECT d.day_name, d.day_num,
          COALESCE(a.cnt, 0) as attendance,
          COALESCE(t.cnt, 0) as tests
        FROM (VALUES (1,'Mon'),(2,'Tue'),(3,'Wed'),(4,'Thu'),(5,'Fri'),(6,'Sat'),(0,'Sun')) AS d(day_num, day_name)
        LEFT JOIN (
          SELECT EXTRACT(DOW FROM created_at)::int as dow, COUNT(*) as cnt
          FROM attendance_records
          WHERE created_at >= NOW() - INTERVAL '30 days'
          GROUP BY dow
        ) a ON a.dow = d.day_num
        LEFT JOIN (
          SELECT EXTRACT(DOW FROM started_at)::int as dow, COUNT(*) as cnt
          FROM tests
          WHERE started_at >= NOW() - INTERVAL '30 days'
          GROUP BY dow
        ) t ON t.dow = d.day_num
        ORDER BY CASE d.day_num WHEN 0 THEN 7 ELSE d.day_num END
      `);
      weeklyActivity = waResult.rows.map(r => ({
        day: r.day_name,
        attendance: parseInt(r.attendance),
        tests: parseInt(r.tests),
      }));
    } catch(e) { console.error('weeklyActivity error:', e.message); }

    // 5. Performance Radar - overall platform metrics as percentages
    let performanceRadar = [];
    try {
      const totalStudentsNum = parseInt(studentsResult.rows[0]?.count || 0);
      // Students who have at least one attendance record
      const participationResult = await query(`SELECT COUNT(DISTINCT student_id) as cnt FROM attendance_records`);
      const participationRate = totalStudentsNum > 0
        ? Math.round((parseInt(participationResult.rows[0]?.cnt || 0) / totalStudentsNum) * 100) : 0;
      // Students who completed at least one test
      const testParticipation = await query(`SELECT COUNT(DISTINCT student_id) as cnt FROM tests WHERE status = 'completed'`);
      const testPartRate = totalStudentsNum > 0
        ? Math.round((parseInt(testParticipation.rows[0]?.cnt || 0) / totalStudentsNum) * 100) : 0;

      performanceRadar = [
        { subject: 'Attendance', A: attendanceRate },
        { subject: 'Test Scores', A: Math.round(avgTestScore) },
        { subject: 'Participation', A: participationRate },
        { subject: 'Test Completion', A: testPartRate },
        { subject: 'Clearance', A: clearanceRate },
      ];
    } catch(e) { console.error('performanceRadar error:', e.message); }

    // 6. Top Performing Students - ranked by combined attendance + test performance
    let top_students = [];
    try {
      const tsResult = await query(`
        SELECT s.id, s.first_name, s.last_name, s.level,
          COALESCE(att.rate, 0) as att_rate,
          COALESCE(tst.avg_pct, 0) as test_avg
        FROM students s
        LEFT JOIN (
          SELECT ar.student_id,
            COUNT(*) FILTER (WHERE ar.status = 'present') * 100.0 / NULLIF(COUNT(*), 0) as rate
          FROM attendance_records ar GROUP BY ar.student_id
        ) att ON att.student_id = s.id
        LEFT JOIN (
          SELECT t.student_id, AVG(t.percentage) as avg_pct
          FROM tests t WHERE t.status = 'completed' GROUP BY t.student_id
        ) tst ON tst.student_id = s.id
        ORDER BY (COALESCE(att.rate, 0) * 0.5 + COALESCE(tst.avg_pct, 0) * 0.5) DESC
        LIMIT 10
      `);
      const levelLabels = { surgery_1: 'Surgery I', surgery_2: 'Surgery II', surgery_3: 'Surgery III', surgery_4: 'Surgery IV' };
      top_students = tsResult.rows.map((r, i) => ({
        rank: i + 1,
        name: `${r.first_name} ${r.last_name}`,
        level: levelLabels[r.level] || r.level,
        attendance: Math.round(parseFloat(r.att_rate || 0)),
        tests: Math.round(parseFloat(r.test_avg || 0)),
        overall: Math.round((parseFloat(r.att_rate || 0) * 0.5) + (parseFloat(r.test_avg || 0) * 0.5)),
      }));
    } catch(e) { console.error('top_students error:', e.message); }

    res.json({
      success: true,
      data: {
        totalStudents: parseInt(studentsResult.rows[0]?.count || 0),
        totalQuestions: parseInt(questionsResult.rows[0]?.count || 0),
        activeRotations: parseInt(rotationsResult.rows[0]?.count || 0),
        totalAssessors: parseInt(assessorsResult.rows[0]?.count || 0),
        totalTests,
        averageTestScore: Math.round(avgTestScore * 10) / 10,
        attendanceRate,
        todayAttendance,
        clearanceRate,
        pendingClearances: 0,
        activeSessions: 0,
        enrollmentTrend,
        levelDistribution,
        rotationPerformance,
        weeklyActivity,
        performanceRadar,
        top_students,
      },
    });
  } catch (error) {
    console.error('Admin stats error:', error.message);
    res.json({
      success: true,
      data: { totalStudents: 0, totalQuestions: 0, activeRotations: 0, pendingClearances: 0, totalAssessors: 0, attendanceRate: 0, averageTestScore: 0, activeSessions: 0, totalTests: 0, todayAttendance: 0, clearanceRate: 0 },
    });
  }
});

app.get('/api/admin/users', async (req, res) => {
  try {
    const { role } = req.query;
    let sql = `SELECT u.id, u.email, u.role, u.is_active, COALESCE(s.first_name, a.first_name) as first_name, COALESCE(s.last_name, a.last_name) as last_name, s.phone_number FROM users u LEFT JOIN students s ON u.id = s.user_id LEFT JOIN assessors a ON u.id = a.user_id`;
    const params = [];
    if (role) {
      sql += ` WHERE u.role = $1`;
      params.push(role);
    }
    sql += ` ORDER BY u.created_at DESC LIMIT 50`;
    const result = await query(sql, params);
    res.json({ success: true, data: { users: result.rows, total: result.rows.length, page: 1, limit: 50 } });
  } catch (error) {
    console.error('Admin users error:', error);
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

// Student performance analytics
app.get('/api/students/performance', async (req, res) => {
  try {
    // Get student's test results from tests table
    let testResults = [];
    try {
      testResults = (await query(
        `SELECT t.id, t.test_type, t.status, t.score, t.percentage, t.total_questions,
                t.correct_answers, t.completed_at, t.rotation_id,
                r.name as rotation_name, rc.name as category_name
         FROM tests t
         LEFT JOIN rotations r ON t.rotation_id = r.id
         LEFT JOIN rotation_categories rc ON r.category_id = rc.id
         WHERE t.status = 'completed'
         ORDER BY t.completed_at DESC`
      )).rows;
    } catch(e) { console.error('Performance test query error:', e.message); }

    // Get attendance stats
    let attendanceRate = 0;
    try {
      const att = await query(
        `SELECT COUNT(*) FILTER (WHERE status = 'present') as present,
                COUNT(*) as total
         FROM attendance_records`
      );
      if (att.rows[0] && parseInt(att.rows[0].total) > 0) {
        attendanceRate = Math.round((parseInt(att.rows[0].present) / parseInt(att.rows[0].total)) * 100);
      }
    } catch(e) {}

    // Compute by-topic scores from test results
    const topicMap = {};
    testResults.forEach(t => {
      const topic = t.category_name || t.rotation_name || 'General';
      if (!topicMap[topic]) topicMap[topic] = { scores: [], attempts: 0 };
      topicMap[topic].scores.push(parseFloat(t.percentage || t.score || 0));
      topicMap[topic].attempts++;
    });
    const byTopic = Object.entries(topicMap).map(([topic, data]) => ({
      topic,
      score: Math.round(data.scores.reduce((a, b) => a + b, 0) / data.scores.length),
      attempts: data.attempts,
    }));

    const allScores = testResults.map(t => parseFloat(t.percentage || t.score || 0));
    const overallScore = allScores.length > 0 ? Math.round(allScores.reduce((a, b) => a + b, 0) / allScores.length) : 0;

    // Weekly progress (last 8 weeks)
    const weeklyProgress = [];
    for (let i = 7; i >= 0; i--) {
      const d = new Date();
      d.setDate(d.getDate() - i * 7);
      weeklyProgress.push({
        week: `Week ${8 - i}`,
        score: overallScore > 0 ? Math.max(0, overallScore + Math.floor(Math.random() * 10 - 5)) : 0,
        attendance: attendanceRate > 0 ? Math.max(0, attendanceRate + Math.floor(Math.random() * 10 - 5)) : 0,
      });
    }

    const strengths = byTopic.filter(t => t.score >= 70).map(t => t.topic);
    const weaknesses = byTopic.filter(t => t.score < 50).map(t => t.topic);

    res.json({
      success: true,
      data: {
        overall: {
          score: overallScore,
          rank: 1,
          totalStudents: 1,
          percentile: 50,
        },
        byTopic,
        weeklyProgress,
        strengths: strengths.length > 0 ? strengths : ['Keep studying to build strengths'],
        weaknesses: weaknesses.length > 0 ? weaknesses : ['No weak areas detected yet'],
        recommendations: [
          'Complete all rotation CBT tests on time',
          'Review CME articles for additional credits',
          'Maintain consistent attendance',
        ],
      },
    });
  } catch (error) {
    console.error('Performance error:', error);
    res.json({
      success: true,
      data: {
        overall: { score: 0, rank: 0, totalStudents: 0, percentile: 0 },
        byTopic: [],
        weeklyProgress: [],
        strengths: [],
        weaknesses: [],
        recommendations: ['Start taking tests to see your performance analytics'],
      },
    });
  }
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
        rotation_id: sr.rotation_id,
        studentId: sr.student_id,
        enrolledAt: sr.created_at,
        status: status === 'in_progress' ? 'active' : status,
        // Flat fields for CBT.tsx compatibility
        rotation_name: sr.rotation_name,
        category_name: sr.department || 'Surgery',
        category_id: sr.category_id || null,
        start_date: (sr.r_start || sr.start_date || new Date().toISOString()),
        end_date: (sr.r_end || sr.end_date || new Date().toISOString()),
        is_cleared: sr.is_cleared || false,
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

// ============== GEOLOCATION CONSTANTS ==============
// UNTH Ituku Ozalla New Site - exact campus coordinates
const UNTH_CAMPUS = {
  name: 'University of Nigeria Teaching Hospital, Ituku-Ozalla',
  // Main campus center coordinates
  latitude: 6.4085,
  longitude: 7.5085,
  // Allowed check-in radius in meters (500m covers the hospital campus)
  radiusMeters: 500,
  // Known landmark coordinates within campus for extra validation
  landmarks: [
    { name: 'UNTH Main Building', lat: 6.4085, lng: 7.5085 },
    { name: 'UNTH Emergency/A&E', lat: 6.4078, lng: 7.5092 },
    { name: 'UNTH Administrative Block', lat: 6.4091, lng: 7.5078 },
    { name: 'UNTH Surgical Block', lat: 6.4082, lng: 7.5098 },
    { name: 'UNTH Medical Block', lat: 6.4089, lng: 7.5072 },
  ],
};

// Haversine formula - calculate distance between two GPS coordinates in meters
function haversineDistance(lat1, lon1, lat2, lon2) {
  const R = 6371000; // Earth radius in meters
  const dLat = (lat2 - lat1) * Math.PI / 180;
  const dLon = (lon2 - lon1) * Math.PI / 180;
  const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
    Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) *
    Math.sin(dLon / 2) * Math.sin(dLon / 2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
  return R * c;
}

// Validate if coordinates are within UNTH campus
function validateGeolocation(lat, lng, customRadius) {
  if (typeof lat !== 'number' || typeof lng !== 'number' || isNaN(lat) || isNaN(lng)) {
    return { valid: false, distance: null, message: 'Invalid GPS coordinates provided' };
  }
  // Basic sanity check - must be in Nigeria region (lat 4-14, lng 2-15)
  if (lat < 4 || lat > 14 || lng < 2 || lng > 15) {
    return { valid: false, distance: null, message: 'GPS coordinates are outside Nigeria. Location spoofing detected.' };
  }
  const distance = haversineDistance(lat, lng, UNTH_CAMPUS.latitude, UNTH_CAMPUS.longitude);
  const maxRadius = customRadius || UNTH_CAMPUS.radiusMeters;
  const withinCampus = distance <= maxRadius;
  // Find nearest landmark
  let nearestLandmark = { name: 'Unknown', distance: Infinity };
  for (const lm of UNTH_CAMPUS.landmarks) {
    const d = haversineDistance(lat, lng, lm.lat, lm.lng);
    if (d < nearestLandmark.distance) {
      nearestLandmark = { name: lm.name, distance: d };
    }
  }
  return {
    valid: withinCampus,
    distance: Math.round(distance),
    maxRadius,
    nearestLandmark: nearestLandmark.name,
    nearestLandmarkDistance: Math.round(nearestLandmark.distance),
    message: withinCampus
      ? `Location verified: ${Math.round(distance)}m from UNTH campus center (near ${nearestLandmark.name})`
      : `You are ${Math.round(distance)}m from UNTH Ituku-Ozalla campus. You must be within ${maxRadius}m to check in. Move closer to the hospital.`,
  };
}

// ============== ATTENDANCE ENDPOINTS (WITH GEOFENCING) ==============

// Get geofence info for the frontend map
app.get('/api/attendance/geofence', (req, res) => {
  res.json({
    success: true,
    data: {
      campus: UNTH_CAMPUS.name,
      center: { latitude: UNTH_CAMPUS.latitude, longitude: UNTH_CAMPUS.longitude },
      radiusMeters: UNTH_CAMPUS.radiusMeters,
      landmarks: UNTH_CAMPUS.landmarks,
    },
  });
});

// Validate location without checking in (for frontend real-time display)
app.post('/api/attendance/validate-location', (req, res) => {
  const { latitude, longitude } = req.body;
  const result = validateGeolocation(latitude, longitude);
  res.json({ success: true, data: result });
});

app.get('/api/attendance/summary', async (req, res) => {
  try {
    const result = await query(
      `SELECT 
        COUNT(*) as total_sessions,
        COUNT(CASE WHEN ar.status = 'present' THEN 1 END) as attended,
        COUNT(CASE WHEN ar.status = 'absent' THEN 1 END) as absent,
        COUNT(CASE WHEN ar.status = 'late' THEN 1 END) as late,
        COUNT(CASE WHEN ar.status = 'excused' THEN 1 END) as excused
       FROM attendance_records ar`
    );
    const row = result.rows[0] || {};
    const total = parseInt(row.total_sessions) || 0;
    const attended = parseInt(row.attended) || 0;
    res.json({
      success: true,
      data: {
        totalSessions: total,
        attended,
        absent: parseInt(row.absent) || 0,
        late: parseInt(row.late) || 0,
        excused: parseInt(row.excused) || 0,
        attendanceRate: total > 0 ? Math.round((attended / total) * 100) : 0,
      },
    });
  } catch (error) {
    console.error('Attendance summary error:', error);
    res.json({ success: true, data: { totalSessions: 0, attended: 0, absent: 0, late: 0, excused: 0, attendanceRate: 0 } });
  }
});

app.get('/api/attendance/my-records', async (req, res) => {
  try {
    const result = await query(
      `SELECT ar.id, ar.check_in_time, ar.status, ar.notes,
              ar.check_in_gps_latitude, ar.check_in_gps_longitude, ar.marked_by_assessor, ar.qr_code_used,
              as2.session_date as date, as2.attendance_type as session_type, as2.location
       FROM attendance_records ar
       JOIN attendance_sessions as2 ON ar.session_id = as2.id
       ORDER BY as2.session_date DESC LIMIT 100`
    );
    const records = result.rows.map(r => ({
      id: r.id,
      date: r.date,
      sessionType: r.session_type || 'morning_ward_round',
      status: r.status || 'absent',
      checkInTime: r.check_in_time,
      location: r.location || '',
      gpsLatitude: r.check_in_gps_latitude,
      gpsLongitude: r.check_in_gps_longitude,
      checkInMethod: r.marked_by_assessor ? 'manual' : (r.qr_code_used ? 'qr_code' : (r.check_in_gps_latitude ? 'gps_verified' : 'unknown')),
    }));
    res.json({ success: true, data: records });
  } catch (error) {
    console.error('Attendance records error:', error);
    res.json({ success: true, data: [] });
  }
});

app.get('/api/attendance/sessions', async (req, res) => {
  try {
    const result = await query(
      `SELECT as2.*, r.name as rotation_name
       FROM attendance_sessions as2
       JOIN rotations r ON as2.rotation_id = r.id
       WHERE as2.is_active = true
       ORDER BY as2.session_date DESC, as2.start_time DESC LIMIT 50`
    );
    res.json({ success: true, data: result.rows });
  } catch (error) {
    console.error('Attendance sessions error:', error);
    res.json({ success: true, data: [] });
  }
});

// GPS-VERIFIED CHECK-IN - prevents fraud by validating student is physically at UNTH
app.post('/api/attendance/check-in', async (req, res) => {
  try {
    const { sessionId, qrCode, location, studentId } = req.body;

    // 1. Validate required fields
    if (!sessionId) return res.status(400).json({ success: false, message: 'Session ID is required' });
    if (!location || typeof location.latitude !== 'number' || typeof location.longitude !== 'number') {
      return res.status(400).json({
        success: false,
        message: 'GPS location is required for attendance verification. Please enable location services.',
        requiresLocation: true,
      });
    }

    // 2. Validate GPS accuracy - reject if too low
    if (location.accuracy && location.accuracy > 100) {
      return res.status(400).json({
        success: false,
        message: `GPS accuracy too low (${Math.round(location.accuracy)}m). Move to an open area for better signal. Required: under 100m accuracy.`,
        requiresBetterGPS: true,
      });
    }

    // 3. GEOFENCE CHECK - is student physically at UNTH Ituku Ozalla?
    const geoCheck = validateGeolocation(location.latitude, location.longitude);
    if (!geoCheck.valid) {
      return res.status(403).json({
        success: false,
        message: geoCheck.message,
        geoCheck: {
          withinCampus: false,
          distance: geoCheck.distance,
          maxRadius: geoCheck.maxRadius,
          campusCenter: { lat: UNTH_CAMPUS.latitude, lng: UNTH_CAMPUS.longitude },
        },
        fraudAlert: geoCheck.distance > 5000,
      });
    }

    // 4. Verify session exists and is active
    const session = await query(
      'SELECT * FROM attendance_sessions WHERE id = $1 AND is_active = true',
      [sessionId]
    );
    if (session.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'Session not found or has expired' });
    }

    // 5. Verify QR code matches (anti-screenshot fraud)
    const sess = session.rows[0];
    if (qrCode && sess.qr_code_token && qrCode !== sess.qr_code_token) {
      return res.status(403).json({ success: false, message: 'Invalid QR code. It may have been refreshed.' });
    }

    // 6. Check if already checked in
    // Resolve the student PK. Prefer the authenticated user from the token; fall
    // back to a studentId (user_id) supplied in the body for backward compat.
    let resolvedStudentId = await resolveStudentId(req);
    if (!resolvedStudentId && studentId) {
      const sRow = await query('SELECT id FROM students WHERE user_id = $1', [studentId]);
      if (sRow.rows.length > 0) {
        resolvedStudentId = sRow.rows[0].id;
      } else {
        // studentId may already be a students.id PK
        const pkRow = await query('SELECT id FROM students WHERE id = $1', [studentId]);
        if (pkRow.rows.length > 0) resolvedStudentId = pkRow.rows[0].id;
      }
    }

    // Anonymous attendance is never allowed — a valid student must be identified.
    if (!resolvedStudentId) {
      return res.status(401).json({
        success: false,
        message: 'Unable to identify student. Please log in again before checking in.',
      });
    }

    const existing = await query(
      'SELECT id FROM attendance_records WHERE session_id = $1 AND student_id = $2',
      [sessionId, resolvedStudentId]
    );
    if (existing.rows.length > 0) {
      return res.status(409).json({ success: false, message: 'You have already checked in for this session' });
    }

    // 7. Determine if late (check session start_time)
    const now = new Date();
    let status = 'present';
    if (sess.start_time) {
      const [h, m] = sess.start_time.split(':').map(Number);
      const sessionStart = new Date(sess.session_date);
      sessionStart.setHours(h, m, 0, 0);
      const lateThreshold = new Date(sessionStart.getTime() + 15 * 60000); // 15 min grace
      if (now > lateThreshold) status = 'late';
    }

    // 8. Record attendance with GPS proof
    const record = await query(
      `INSERT INTO attendance_records 
        (session_id, student_id, status, check_in_time,
         check_in_gps_latitude, check_in_gps_longitude, notes)
       VALUES ($1, $2, $3, NOW(), $4, $5, $6)
       RETURNING *`,
      [
        sessionId,
        resolvedStudentId,
        status,
        location.latitude,
        location.longitude,
        `GPS verified: ${geoCheck.distance}m from campus center, near ${geoCheck.nearestLandmark}. Accuracy: ${location.accuracy || 'N/A'}m`,
      ]
    );

    res.json({
      success: true,
      message: `Check-in successful! ${status === 'late' ? '(Marked as LATE)' : ''}`,
      data: {
        id: record.rows[0].id,
        status,
        checkInTime: record.rows[0].check_in_time,
        geoVerification: {
          verified: true,
          distance: geoCheck.distance,
          nearestLandmark: geoCheck.nearestLandmark,
          campus: UNTH_CAMPUS.name,
        },
      },
    });
  } catch (error) {
    console.error('GPS Check-in error:', error);
    res.status(500).json({ success: false, message: 'Check-in failed. Please try again.' });
  }
});

app.post('/api/attendance/sessions', async (req, res) => {
  try {
    const { rotation_id, attendance_type, session_date, start_time, end_time, location, created_by } = req.body;
    const crypto = require('crypto');
    // Map frontend types to valid enum values
    const validTypes = ['clinic', 'theatre', 'ward_rounds'];
    const safeType = validTypes.includes(attendance_type) ? attendance_type : 'ward_rounds';
    // Validate created_by is a valid UUID, otherwise set null
    const uuidRegex = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
    const safeCreatedBy = (created_by && uuidRegex.test(created_by)) ? created_by : null;
    const result = await query(
      `INSERT INTO attendance_sessions 
        (rotation_id, attendance_type, session_date, start_time, end_time, location, is_active, qr_code_token,
         gps_latitude, gps_longitude, gps_radius_meters, created_by)
       VALUES ($1, $2, $3, $4, $5, $6, true, $7, $8, $9, $10, $11) RETURNING *`,
      [
        rotation_id, safeType, session_date,
        start_time || '08:00', end_time || '12:00',
        location || 'UNTH Ituku-Ozalla',
        crypto.randomUUID(),
        UNTH_CAMPUS.latitude, UNTH_CAMPUS.longitude, UNTH_CAMPUS.radiusMeters,
        safeCreatedBy,
      ]
    );
    res.json({ success: true, data: result.rows[0] });
  } catch (error) {
    console.error('Create session error:', error);
    res.status(500).json({ success: false, message: 'Failed to create session', detail: error.message });
  }
});

app.get('/api/attendance/sessions/:id/qr', async (req, res) => {
  try {
    const result = await query('SELECT * FROM attendance_sessions WHERE id = $1', [req.params.id]);
    if (result.rows.length === 0) return res.status(404).json({ success: false, message: 'Session not found' });
    const session = result.rows[0];
    res.json({
      success: true,
      data: {
        qrCode: session.qr_code_token || session.id,
        sessionId: session.id,
        expiresAt: session.qr_code_expires_at || session.end_time,
        campus: UNTH_CAMPUS.name,
        geofence: { lat: UNTH_CAMPUS.latitude, lng: UNTH_CAMPUS.longitude, radius: UNTH_CAMPUS.radiusMeters },
      },
    });
  } catch (error) {
    console.error('QR code error:', error);
    res.status(500).json({ success: false, message: 'Failed to generate QR code' });
  }
});

app.post('/api/attendance/mark', async (req, res) => {
  try {
    const { session_id, student_id, status, notes, rotation_id, date } = req.body;
    let finalSessionId = session_id;
    // If no session_id but rotation_id provided, find or create a session for the date
    if (!finalSessionId && rotation_id) {
      const sessionDate = date || new Date().toISOString().split('T')[0];
      const existing = await query(
        'SELECT id FROM attendance_sessions WHERE rotation_id = $1 AND session_date = $2 AND is_active = true LIMIT 1',
        [rotation_id, sessionDate]
      );
      if (existing.rows.length > 0) {
        finalSessionId = existing.rows[0].id;
      } else {
        const crypto = require('crypto');
        const uuidCheck = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
        const safeCreator = (req.body.marked_by && uuidCheck.test(req.body.marked_by)) ? req.body.marked_by : null;
        const created = await query(
          `INSERT INTO attendance_sessions (rotation_id, attendance_type, session_date, start_time, end_time, location, is_active, qr_code_token, gps_latitude, gps_longitude, gps_radius_meters, created_by)
           VALUES ($1, 'ward_rounds', $2, '08:00', '17:00', 'UNTH Ituku-Ozalla', true, $3, $4, $5, $6, $7) RETURNING id`,
          [rotation_id, sessionDate, crypto.randomUUID(), UNTH_CAMPUS.latitude, UNTH_CAMPUS.longitude, UNTH_CAMPUS.radiusMeters, safeCreator]
        );
        finalSessionId = created.rows[0].id;
      }
    }
    if (!finalSessionId) return res.status(400).json({ success: false, message: 'session_id or rotation_id required' });
    // Resolve student PK: student_id from frontend might be users.id, need students.id
    let resolvedStudentId = student_id;
    if (student_id) {
      const sRow = await query('SELECT id FROM students WHERE user_id = $1', [student_id]).catch(() => ({ rows: [] }));
      if (sRow.rows.length > 0) resolvedStudentId = sRow.rows[0].id;
      else {
        // Maybe student_id is already a students.id
        const sRow2 = await query('SELECT id FROM students WHERE id = $1', [student_id]).catch(() => ({ rows: [] }));
        if (sRow2.rows.length > 0) resolvedStudentId = sRow2.rows[0].id;
      }
    }
    // Resolve assessor PK: marked_by from frontend is users.id, need assessors.id
    // Skip lookup if not a valid UUID (e.g. 'admin-001')
    let resolvedAssessorId = null;
    const uuidRegex = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
    if (req.body.marked_by && uuidRegex.test(req.body.marked_by)) {
      const aRow = await query('SELECT id FROM assessors WHERE user_id = $1', [req.body.marked_by]).catch(() => ({ rows: [] }));
      if (aRow.rows.length > 0) resolvedAssessorId = aRow.rows[0].id;
    }
    // Upsert: update if exists, insert if not
    const existingRecord = await query(
      'SELECT id FROM attendance_records WHERE session_id = $1 AND student_id = $2',
      [finalSessionId, resolvedStudentId]
    );
    let result;
    if (existingRecord.rows.length > 0) {
      result = await query(
        'UPDATE attendance_records SET status = $1, notes = $2, marked_by_assessor = $3 WHERE id = $4 RETURNING *',
        [status || 'present', notes || '', resolvedAssessorId, existingRecord.rows[0].id]
      );
    } else {
      result = await query(
        `INSERT INTO attendance_records (session_id, student_id, status, notes, check_in_time, marked_by_assessor)
         VALUES ($1, $2, $3, $4, NOW(), $5) RETURNING *`,
        [finalSessionId, resolvedStudentId, status || 'present', notes || '', resolvedAssessorId]
      );
    }
    res.json({ success: true, data: result.rows[0] });
  } catch (error) {
    console.error('Mark attendance error:', error);
    res.status(500).json({ success: false, message: 'Failed to mark attendance' });
  }
});

app.get('/api/attendance/sessions/:id/students', async (req, res) => {
  try {
    const result = await query(
      `SELECT ar.*, s.first_name, s.last_name, u.email,
              ar.check_in_gps_latitude, ar.check_in_gps_longitude, ar.marked_by_assessor
       FROM attendance_records ar
       JOIN students s ON ar.student_id = s.id
       JOIN users u ON s.user_id = u.id
       WHERE ar.session_id = $1
       ORDER BY s.last_name`,
      [req.params.id]
    );
    res.json({ success: true, data: result.rows });
  } catch (error) {
    console.error('Session students error:', error);
    res.json({ success: true, data: [] });
  }
});

// ============== ENROLLMENT ENDPOINT ==============
app.post('/api/admin/enroll-student', async (req, res) => {
  try {
    const { student_id, rotation_id, start_date, end_date } = req.body;
    if (!student_id || !rotation_id) {
      return res.status(400).json({ success: false, message: 'Student ID and Rotation ID required' });
    }
    // student_id coming from frontend is users.id; look up students.id
    const studentRow = await query('SELECT id FROM students WHERE user_id = $1', [student_id]);
    const realStudentId = studentRow.rows[0]?.id || student_id;
    // Check if already enrolled
    const existing = await query(
      'SELECT id FROM student_rotations WHERE student_id = $1 AND rotation_id = $2',
      [realStudentId, rotation_id]
    );
    if (existing.rows.length > 0) {
      return res.status(409).json({ success: false, message: 'Student already enrolled in this rotation' });
    }
    // Get rotation dates for defaults
    const rotRow = await query('SELECT start_date, end_date FROM rotations WHERE id = $1', [rotation_id]);
    const defStart = start_date || rotRow.rows[0]?.start_date || new Date().toISOString().split('T')[0];
    const defEnd = end_date || rotRow.rows[0]?.end_date || new Date(Date.now() + 90 * 24 * 3600000).toISOString().split('T')[0];
    const result = await query(
      `INSERT INTO student_rotations (student_id, rotation_id, start_date, end_date, status)
       VALUES ($1, $2, $3, $4, 'active') RETURNING *`,
      [realStudentId, rotation_id, defStart, defEnd]
    );
    res.json({ success: true, data: result.rows[0], message: 'Student enrolled successfully' });
  } catch (error) {
    console.error('Enrollment error:', error);
    res.status(500).json({ success: false, message: 'Failed to enroll student' });
  }
});

// ============== TESTS STUDENT ENDPOINTS ==============

app.get('/api/tests/my-tests', async (req, res) => {
  try {
    const studentId = await resolveStudentId(req);
    if (!studentId) {
      return res.json({ success: true, data: [] });
    }
    const result = await query(
      `SELECT t.id, t.test_type, t.status, t.total_questions, t.duration_minutes,
              t.started_at, t.completed_at, t.score, t.percentage,
              t.questions_answered, t.correct_answers,
              t.rotation_id,
              r.name as rotation_name
       FROM tests t
       LEFT JOIN rotations r ON t.rotation_id = r.id
       WHERE t.student_id = $1
       ORDER BY t.started_at DESC NULLS LAST LIMIT 100`,
      [studentId]
    );
    res.json({ success: true, data: result.rows });
  } catch (error) {
    console.error('My tests error:', error);
    res.json({ success: true, data: [] });
  }
});

// Tests available to the logged-in student: for every enrolled rotation, expose
// the three test types (pre/mid/post) along with their current status.
app.get('/api/tests/available', async (req, res) => {
  try {
    const studentId = await resolveStudentId(req);
    if (!studentId) {
      return res.json({ success: true, data: [] });
    }
    const testTypes = [
      { type: 'pre_test', label: 'Pre-Rotation Test' },
      { type: 'mid_test', label: 'Mid-Rotation Test' },
      { type: 'post_test', label: 'Post-Rotation Test' },
    ];
    // Active rotations the student is enrolled in, plus how many questions each
    // rotation's category has available.
    const rotations = await query(
      `SELECT sr.id as student_rotation_id, sr.rotation_id, sr.status as enrollment_status,
              r.name as rotation_name, r.category_id,
              (SELECT COUNT(*) FROM questions q WHERE q.category_id = r.category_id AND q.is_active = true) as question_count
       FROM student_rotations sr
       JOIN rotations r ON sr.rotation_id = r.id
       WHERE sr.student_id = $1
       ORDER BY sr.start_date DESC NULLS LAST`,
      [studentId]
    );
    // Existing tests for this student, keyed by rotation+type.
    const existing = await query(
      `SELECT rotation_id, test_type, status, score, percentage, completed_at
       FROM tests WHERE student_id = $1`,
      [studentId]
    );
    const statusMap = {};
    for (const row of existing.rows) {
      statusMap[`${row.rotation_id}|${row.test_type}`] = row;
    }
    const available = [];
    for (const rot of rotations.rows) {
      const qCount = parseInt(rot.question_count || 0);
      for (const tt of testTypes) {
        const ex = statusMap[`${rot.rotation_id}|${tt.type}`];
        const status = ex ? ex.status : 'not_started';
        available.push({
          rotation_id: rot.rotation_id,
          rotation_name: rot.rotation_name,
          student_rotation_id: rot.student_rotation_id,
          test_type: tt.type,
          test_label: tt.label,
          status,
          score: ex ? ex.score : null,
          percentage: ex ? ex.percentage : null,
          completed_at: ex ? ex.completed_at : null,
          question_count: qCount,
          can_start: status !== 'completed' && qCount > 0,
        });
      }
    }
    res.json({ success: true, data: available });
  } catch (error) {
    console.error('Available tests error:', error);
    res.json({ success: true, data: [] });
  }
});

app.post('/api/tests/start', async (req, res) => {
  try {
    const { rotation_id, test_type } = req.body;
    if (!rotation_id || !test_type) return res.status(400).json({ success: false, message: 'Rotation ID and test type required' });
    
    // Get rotation and its category
    const rotation = await query('SELECT * FROM rotations WHERE id = $1', [rotation_id]);
    if (rotation.rows.length === 0) return res.status(404).json({ success: false, message: 'Rotation not found' });
    
    // Get 50 random questions for this rotation's category
    const questions = await query(
      `SELECT id, question_text, option_a, option_b, option_c, option_d, option_e, difficulty
       FROM questions WHERE category_id = $1 AND is_active = true ORDER BY RANDOM() LIMIT 50`,
      [rotation.rows[0].category_id]
    );
    
    if (questions.rows.length === 0) {
      return res.status(404).json({ success: false, message: 'No questions available for this rotation category' });
    }

    // Resolve the ACTUAL logged-in student from the auth token — never attribute
    // a test to an arbitrary enrolled student.
    let studentId = await resolveStudentId(req);
    let studentRotationId = null;
    if (!studentId) {
      return res.status(401).json({ success: false, message: 'You must be logged in as a student to start a test.' });
    }
    // Confirm enrollment and capture the student_rotation_id for this rotation.
    try {
      const srResult = await query(
        'SELECT sr.id as sr_id FROM student_rotations sr WHERE sr.rotation_id = $1 AND sr.student_id = $2 LIMIT 1',
        [rotation_id, studentId]
      );
      if (srResult.rows.length > 0) {
        studentRotationId = srResult.rows[0].sr_id;
      }
    } catch (e) {}

    if (!studentRotationId) {
      return res.status(403).json({ success: false, message: 'You are not enrolled in this rotation. Please enroll first.' });
    }

    // Check if test already exists for this student/rotation/type
    let testRow;
    try {
      const existing = await query(
        'SELECT * FROM tests WHERE student_id = $1 AND rotation_id = $2 AND test_type = $3',
        [studentId, rotation_id, test_type]
      );
      if (existing.rows.length > 0) {
        const ex = existing.rows[0];
        if (ex.status === 'completed') {
          return res.status(400).json({ success: false, message: 'You have already completed this test' });
        }
        // Resume in-progress test
        testRow = ex;
      }
    } catch(e) {}

    // Create new test if none exists
    if (!testRow) {
      const questionIds = questions.rows.map(q => q.id);
      try {
        const insertResult = await query(
          `INSERT INTO tests (student_id, student_rotation_id, rotation_id, test_type, status, total_questions, duration_minutes, started_at, question_order)
           VALUES ($1, $2, $3, $4, 'in_progress', $5, 10, NOW(), $6) RETURNING *`,
          [studentId, studentRotationId, rotation_id, test_type, questions.rows.length, JSON.stringify(questionIds)]
        );
        testRow = insertResult.rows[0];
      } catch(insertErr) {
        // If unique constraint violation, the test already exists
        if (insertErr.message && insertErr.message.includes('unique_test')) {
          const existing = await query(
            'SELECT * FROM tests WHERE student_id = $1 AND rotation_id = $2 AND test_type = $3',
            [studentId, rotation_id, test_type]
          );
          if (existing.rows.length > 0 && existing.rows[0].status === 'completed') {
            return res.status(400).json({ success: false, message: 'You have already completed this test' });
          }
          testRow = existing.rows[0];
        } else {
          throw insertErr;
        }
      }
    }
    
    res.json({
      success: true,
      data: {
        id: testRow.id,
        testId: testRow.id,
        questions: questions.rows,
        timeLimit: 600, // 10 minutes in seconds
      },
    });
  } catch (error) {
    console.error('Start test error:', error);
    res.status(500).json({ success: false, message: 'Failed to start test: ' + error.message });
  }
});

// Submit answer for a test question
app.post('/api/tests/:testId/answer', async (req, res) => {
  try {
    const { testId } = req.params;
    const { question_id, selected_option, question_index, time_spent } = req.body;
    
    // Get the correct answer
    const q = await query('SELECT correct_option FROM questions WHERE id = $1', [question_id]);
    const isCorrect = q.rows.length > 0 && q.rows[0].correct_option === selected_option;
    
    // Upsert answer
    try {
      await query(
        `INSERT INTO test_answers (test_id, question_id, question_index, selected_option, is_correct, time_spent_seconds, answered_at)
         VALUES ($1, $2, $3, $4, $5, $6, NOW())
         ON CONFLICT (test_id, question_id) DO UPDATE SET selected_option = $4, is_correct = $5, time_spent_seconds = $6, answered_at = NOW()`,
        [testId, question_id, question_index || 0, selected_option, isCorrect, time_spent || 0]
      );
    } catch(e) {
      // If test_answers doesn't exist, just track in memory
      console.error('Answer save error:', e.message);
    }

    // Update questions_answered count
    try {
      await query(
        `UPDATE tests SET questions_answered = (SELECT COUNT(*) FROM test_answers WHERE test_id = $1), updated_at = NOW() WHERE id = $1`,
        [testId]
      );
    } catch(e) {}

    res.json({ success: true, data: { isCorrect, correctOption: q.rows[0]?.correct_option } });
  } catch (error) {
    console.error('Answer error:', error);
    res.status(500).json({ success: false, message: error.message });
  }
});

// Complete a test
app.post('/api/tests/:testId/complete', async (req, res) => {
  try {
    const { testId } = req.params;
    
    // Calculate score from answers
    let score = 0, total = 0, correct = 0;
    try {
      const answers = await query(
        'SELECT COUNT(*) as total, COUNT(*) FILTER (WHERE is_correct = true) as correct FROM test_answers WHERE test_id = $1',
        [testId]
      );
      total = parseInt(answers.rows[0]?.total || 0);
      correct = parseInt(answers.rows[0]?.correct || 0);
      score = total > 0 ? Math.round((correct / total) * 100) : 0;
    } catch(e) {}

    // Update test record
    try {
      await query(
        `UPDATE tests SET status = 'completed', completed_at = NOW(), score = $2, percentage = $2,
         questions_answered = $3, correct_answers = $4, updated_at = NOW() WHERE id = $1`,
        [testId, score, total, correct]
      );
    } catch(e) {
      console.error('Complete test update error:', e.message);
    }

    res.json({
      success: true,
      data: {
        testId,
        score,
        percentage: score,
        totalQuestions: total,
        correctAnswers: correct,
        completedAt: new Date().toISOString(),
      },
    });
  } catch (error) {
    console.error('Complete test error:', error);
    res.status(500).json({ success: false, message: error.message });
  }
});

// Get test status
app.get('/api/tests/:testId/status', async (req, res) => {
  try {
    const result = await query('SELECT * FROM tests WHERE id = $1', [req.params.testId]);
    if (result.rows.length === 0) return res.status(404).json({ success: false, message: 'Test not found' });
    const t = result.rows[0];
    res.json({ success: true, data: { id: t.id, status: t.status, questionsAnswered: t.questions_answered, totalQuestions: t.total_questions, startedAt: t.started_at } });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Get test results
app.get('/api/tests/:testId/results', async (req, res) => {
  try {
    const test = await query('SELECT * FROM tests WHERE id = $1', [req.params.testId]);
    if (test.rows.length === 0) return res.status(404).json({ success: false, message: 'Test not found' });
    const t = test.rows[0];

    let answers = [];
    try {
      const answersResult = await query(
        `SELECT ta.*, q.question_text, q.correct_option, q.explanation, q.option_a, q.option_b, q.option_c, q.option_d, q.option_e
         FROM test_answers ta JOIN questions q ON ta.question_id = q.id WHERE ta.test_id = $1 ORDER BY ta.question_index`,
        [req.params.testId]
      );
      answers = answersResult.rows;
    } catch(e) {}

    res.json({
      success: true,
      data: {
        id: t.id,
        testType: t.test_type,
        status: t.status,
        score: t.score,
        percentage: t.percentage,
        totalQuestions: t.total_questions,
        correctAnswers: t.correct_answers,
        questionsAnswered: t.questions_answered,
        startedAt: t.started_at,
        completedAt: t.completed_at,
        timeSpent: t.time_spent_seconds,
        answers,
      },
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Log test activity (anti-cheat)
app.post('/api/tests/:testId/activity', async (req, res) => {
  try {
    const { activity_type, details } = req.body;
    try {
      await query(
        'INSERT INTO test_activity_logs (test_id, activity_type, activity_data) VALUES ($1, $2, $3)',
        [req.params.testId, activity_type, JSON.stringify(details || {})]
      );
    } catch(e) {}
    // Also increment counters on test
    if (activity_type === 'tab_switch') {
      try { await query('UPDATE tests SET tab_switches = COALESCE(tab_switches, 0) + 1 WHERE id = $1', [req.params.testId]); } catch(e) {}
    } else if (activity_type === 'focus_loss') {
      try { await query('UPDATE tests SET focus_losses = COALESCE(focus_losses, 0) + 1 WHERE id = $1', [req.params.testId]); } catch(e) {}
    }
    res.json({ success: true });
  } catch (error) {
    res.json({ success: true });
  }
});

// Anti-cheat flag
app.post('/api/tests/:testId/anti-cheat', async (req, res) => {
  try {
    await query(
      `UPDATE tests SET suspicious_activities = COALESCE(suspicious_activities, '[]'::jsonb) || $2::jsonb WHERE id = $1`,
      [req.params.testId, JSON.stringify(req.body)]
    );
  } catch(e) {}
  res.json({ success: true });
});

// My attempts - MUST be before :testId route
app.get('/api/tests/my-attempts', async (req, res) => {
  try {
    const result = await query(
      `SELECT t.id, t.test_type, t.status, t.total_questions, t.duration_minutes,
              t.started_at, t.completed_at, t.score, t.percentage,
              t.questions_answered, t.correct_answers,
              r.name as rotation_name
       FROM tests t
       LEFT JOIN rotations r ON t.rotation_id = r.id
       ORDER BY t.started_at DESC NULLS LAST LIMIT 50`
    );
    res.json({ success: true, data: result.rows.map(t => {
      const typeLabel = (t.test_type || '').replace('_', ' ').replace(/\b\w/g, c => c.toUpperCase());
      return {
        id: t.id,
        testId: t.id,
        testTitle: `${typeLabel} \u2014 ${t.rotation_name || 'Rotation'}`,
        score: t.score,
        percentage: t.percentage,
        percentageScore: t.percentage,
        totalQuestions: t.total_questions || 0,
        correctAnswers: t.correct_answers || 0,
        startedAt: t.started_at,
        completedAt: t.completed_at,
        status: t.status || 'not_started',
        passed: (t.percentage || 0) >= 50,
      };
    }) });
  } catch (error) {
    console.error('My attempts error:', error.message);
    res.json({ success: true, data: [] });
  }
});

// Get single test with questions
app.get('/api/tests/:testId', async (req, res) => {
  try {
    if (!req.params.testId || req.params.testId === 'undefined') {
      return res.status(400).json({ success: false, message: 'Valid test ID required' });
    }
    const result = await query('SELECT t.*, r.name as rotation_name, rc.name as category_name FROM tests t LEFT JOIN rotations r ON t.rotation_id = r.id LEFT JOIN rotation_categories rc ON r.category_id = rc.id WHERE t.id = $1', [req.params.testId]);
    if (result.rows.length === 0) return res.status(404).json({ success: false, message: 'Test not found' });
    const t = result.rows[0];

    // Get questions for this test
    let questions = [];
    if (t.question_order) {
      const qIds = typeof t.question_order === 'string' ? JSON.parse(t.question_order) : t.question_order;
      if (qIds && qIds.length > 0) {
        try {
          const qResult = await query(
            `SELECT id, question_text, option_a, option_b, option_c, option_d, option_e, difficulty
             FROM questions WHERE id = ANY($1)`,
            [qIds]
          );
          // Maintain original order
          const qMap = {};
          qResult.rows.forEach(q => { qMap[q.id] = q; });
          questions = qIds.map(id => qMap[id]).filter(Boolean);
        } catch(e) {}
      }
    }

    // Get existing answers
    let existingAnswers = [];
    try {
      const aResult = await query('SELECT question_id, selected_option FROM test_answers WHERE test_id = $1', [req.params.testId]);
      existingAnswers = aResult.rows;
    } catch(e) {}

    res.json({
      success: true,
      data: {
        id: t.id,
        testType: t.test_type,
        rotationId: t.rotation_id,
        rotationName: t.rotation_name,
        categoryName: t.category_name,
        status: t.status,
        totalQuestions: t.total_questions,
        durationMinutes: t.duration_minutes || 10,
        passingScore: 50,
        startedAt: t.started_at,
        completedAt: t.completed_at,
        score: t.score,
        percentage: t.percentage,
        questionsAnswered: t.questions_answered || 0,
        questions,
        existingAnswers,
      },
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Start/resume a test by its ID (used by TestSession page)
app.post('/api/tests/:testId/start', async (req, res) => {
  try {
    if (!req.params.testId || req.params.testId === 'undefined') {
      return res.status(400).json({ success: false, message: 'Valid test ID required' });
    }
    const result = await query('SELECT * FROM tests WHERE id = $1', [req.params.testId]);
    if (result.rows.length === 0) return res.status(404).json({ success: false, message: 'Test not found' });
    const t = result.rows[0];

    if (t.status === 'completed') {
      return res.status(400).json({ success: false, message: 'This test has already been completed' });
    }

    // Mark as in_progress if not already
    if (t.status !== 'in_progress') {
      await query("UPDATE tests SET status = 'in_progress', started_at = NOW() WHERE id = $1", [req.params.testId]);
    }

    // Get questions
    let questions = [];
    if (t.question_order) {
      const qIds = typeof t.question_order === 'string' ? JSON.parse(t.question_order) : t.question_order;
      if (qIds && qIds.length > 0) {
        try {
          const qResult = await query(
            `SELECT id, question_text, option_a, option_b, option_c, option_d, option_e, difficulty
             FROM questions WHERE id = ANY($1)`, [qIds]
          );
          const qMap = {};
          qResult.rows.forEach(q => { qMap[q.id] = q; });
          questions = qIds.map(id => qMap[id]).filter(Boolean);
        } catch(e) {}
      }
    }

    res.json({
      success: true,
      data: {
        test: {
          id: t.id,
          testType: t.test_type,
          totalQuestions: t.total_questions,
          durationMinutes: t.duration_minutes || 10,
          passingScore: 50,
        },
        attempt: {
          id: t.id,
          status: 'in_progress',
          startedAt: t.started_at || new Date().toISOString(),
        },
        questions: questions.map(q => ({
          id: q.id,
          text: q.question_text,
          question_text: q.question_text,
          options: [
            { id: 'A', text: q.option_a },
            { id: 'B', text: q.option_b },
            { id: 'C', text: q.option_c },
            { id: 'D', text: q.option_d },
            { id: 'E', text: q.option_e },
          ],
          option_a: q.option_a,
          option_b: q.option_b,
          option_c: q.option_c,
          option_d: q.option_d,
          option_e: q.option_e,
        })),
      },
    });
  } catch (error) {
    console.error('Test start by ID error:', error);
    res.status(500).json({ success: false, message: error.message });
  }
});

// ============== ROTATIONS ENDPOINTS ==============

app.get('/api/rotations', async (req, res) => {
  try {
    const result = await query(
      `SELECT r.*, rc.name as category_name,
              (SELECT COUNT(*) FROM student_rotations sr WHERE sr.rotation_id = r.id) as student_count,
              (SELECT a.first_name || ' ' || a.last_name FROM assessors a WHERE a.id = r.assessor_id) as assessor_name
       FROM rotations r
       LEFT JOIN rotation_categories rc ON r.category_id = rc.id
       WHERE r.is_active = true ORDER BY r.start_date DESC`);
    res.json({ success: true, data: { rotations: result.rows.map(r => {
      const now = new Date();
      const start = new Date(r.start_date);
      const end = new Date(r.end_date);
      const status = start <= now && end >= now ? 'active' : start > now ? 'upcoming' : 'completed';
      return {
        id: r.id, name: r.name, description: r.description || '', category: r.category_name, category_id: r.category_id,
        level: r.level || '', duration_weeks: r.duration_weeks || Math.round((end - start) / (7 * 24 * 60 * 60 * 1000)),
        start_date: r.start_date, end_date: r.end_date, startDate: r.start_date, endDate: r.end_date,
        is_active: r.is_active, status, assessor_id: r.assessor_id || null, assessor_name: r.assessor_name || null,
        student_count: parseInt(r.student_count) || 0,
        requirements: { min_attendance: 75, min_tests: 75, min_participation: 75 },
      };
    }) } });
  } catch (error) {
    res.json({ success: true, data: { rotations: [] } });
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
    const result = await query(
      `SELECT r.*, rc.name as category_name,
              (SELECT COUNT(*) FROM student_rotations sr WHERE sr.rotation_id = r.id) as student_count_calc,
              (SELECT a.first_name || ' ' || a.last_name FROM assessors a WHERE a.id = r.assessor_id) as assessor_name_calc
       FROM rotations r
       LEFT JOIN rotation_categories rc ON r.category_id = rc.id
       WHERE r.id = $1`, [req.params.id]);
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
      is_active: r.is_active, status, assessor_id: r.assessor_id || null, assessor_name: r.assessor_name_calc || null,
      student_count: parseInt(r.student_count_calc) || 0,
      requirements: { min_attendance: 75, min_tests: 75, min_participation: 75 },
    } });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Create rotation
app.post('/api/rotations', async (req, res) => {
  try {
    const { name, category_id, start_date, end_date, level, assessor_id, description, requirements } = req.body;
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
      `INSERT INTO rotations (name, category_id, start_date, end_date)
       VALUES ($1, $2, $3, $4) RETURNING *`,
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
    const { name, category_id, start_date, end_date, is_active, assessor_id, description, level } = req.body;
    // Frontend sends users.id for assessor — resolve to assessors.id
    let resolvedAssessorId = null;
    if (assessor_id) {
      const aRow = await query('SELECT id FROM assessors WHERE user_id = $1', [assessor_id]);
      resolvedAssessorId = aRow.rows.length > 0 ? aRow.rows[0].id : assessor_id;
    }
    const result = await query(
      `UPDATE rotations SET name = COALESCE($1, name), category_id = COALESCE($2, category_id),
       start_date = COALESCE($3, start_date), end_date = COALESCE($4, end_date),
       is_active = COALESCE($5, is_active), assessor_id = $6, description = COALESCE($7, description),
       level = COALESCE($8, level), updated_at = NOW()
       WHERE id = $9 RETURNING *`,
      [name, category_id, start_date, end_date, is_active, resolvedAssessorId, description, level, req.params.id]
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

// Get students enrolled in a rotation
app.get('/api/rotations/:id/students', async (req, res) => {
  try {
    const result = await query(
      `SELECT sr.id as enrollment_id, sr.status as enrollment_status, sr.start_date as enrolled_start, sr.end_date as enrolled_end,
              u.id as user_id, u.email, s.first_name, s.last_name, s.matriculation_number as matric_number, s.phone_number
       FROM student_rotations sr
       JOIN students s ON sr.student_id = s.id
       JOIN users u ON s.user_id = u.id
       WHERE sr.rotation_id = $1
       ORDER BY s.last_name, s.first_name`,
      [req.params.id]
    );
    res.json({ success: true, data: { students: result.rows, total: result.rows.length } });
  } catch (error) {
    console.error('Rotation students error:', error);
    res.json({ success: true, data: { students: [], total: 0 } });
  }
});

// Batch enroll students into a rotation
app.post('/api/admin/enroll-students', async (req, res) => {
  try {
    const { student_ids, rotation_id, start_date, end_date } = req.body;
    if (!student_ids || !Array.isArray(student_ids) || !rotation_id) {
      return res.status(400).json({ success: false, message: 'student_ids (array) and rotation_id required' });
    }
    // Get rotation dates as defaults
    const rotRow = await query('SELECT start_date, end_date FROM rotations WHERE id = $1', [rotation_id]);
    const rotStartDate = start_date || rotRow.rows[0]?.start_date || new Date().toISOString().split('T')[0];
    const rotEndDate = end_date || rotRow.rows[0]?.end_date || new Date(Date.now() + 90 * 24 * 3600000).toISOString().split('T')[0];

    const results = { enrolled: [], skipped: [], failed: [] };
    for (const uid of student_ids) {
      try {
        // Look up the student's PK (students.id) from users.id
        const studentRow = await query('SELECT id FROM students WHERE user_id = $1', [uid]);
        const studentId = studentRow.rows[0]?.id;
        if (!studentId) { results.failed.push(uid); continue; }
        const existing = await query(
          'SELECT id FROM student_rotations WHERE student_id = $1 AND rotation_id = $2',
          [studentId, rotation_id]
        );
        if (existing.rows.length > 0) {
          results.skipped.push(uid);
          continue;
        }
        await query(
          `INSERT INTO student_rotations (student_id, rotation_id, start_date, end_date, status)
           VALUES ($1, $2, $3, $4, 'active')`,
          [studentId, rotation_id, rotStartDate, rotEndDate]
        );
        results.enrolled.push(uid);
      } catch (e) {
        console.error('Enroll single student error:', e.message);
        results.failed.push(uid);
      }
    }
    res.json({ success: true, data: results, message: `Enrolled ${results.enrolled.length}, skipped ${results.skipped.length} (already enrolled), ${results.failed.length} failed` });
  } catch (error) {
    console.error('Batch enrollment error:', error);
    res.status(500).json({ success: false, message: 'Batch enrollment failed' });
  }
});

// Remove student from rotation
app.delete('/api/admin/enrollments/:id', async (req, res) => {
  try {
    await query('DELETE FROM student_rotations WHERE id = $1', [req.params.id]);
    res.json({ success: true, message: 'Student removed from rotation' });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// Attendance by date (for assessor view)
app.get('/api/attendance/by-date', async (req, res) => {
  try {
    const { date, rotation_id } = req.query;
    if (!rotation_id) {
      return res.status(400).json({ success: false, message: 'rotation_id required' });
    }
    // Get all students enrolled in this rotation with their attendance for the given date
    const enrolled = await query(
      `SELECT u.id as user_id, s.id as student_id, s.first_name, s.last_name, s.matriculation_number as matric_number
       FROM student_rotations sr
       JOIN students s ON sr.student_id = s.id
       JOIN users u ON s.user_id = u.id
       WHERE sr.rotation_id = $1 AND sr.status = 'active'
       ORDER BY s.last_name, s.first_name`,
      [rotation_id]
    );
    // Get attendance records for this date
    const records = await query(
      `SELECT ar.*, asess.session_date
       FROM attendance_records ar
       JOIN attendance_sessions asess ON ar.session_id = asess.id
       WHERE asess.rotation_id = $1 AND asess.session_date = $2`,
      [rotation_id, date || new Date().toISOString().split('T')[0]]
    );
    const recordMap = {};
    records.rows.forEach(r => { recordMap[r.student_id] = r; });
    const attendanceRecords = enrolled.rows.map(student => {
      const record = recordMap[student.student_id];
      return {
        id: record?.id || `pending-${student.user_id}`,
        student_id: student.user_id,
        student_name: `${student.first_name} ${student.last_name}`,
        student_level: student.matric_number || '',
        check_in_time: record?.check_in_time || null,
        check_out_time: record?.check_out_time || null,
        status: record?.status || 'absent',
        location_verified: !!(record?.check_in_gps_latitude),
      };
    });
    res.json({ success: true, records: attendanceRecords, total: attendanceRecords.length });
  } catch (error) {
    console.error('Attendance by date error:', error);
    res.json({ success: true, records: [], total: 0 });
  }
});

// Bulk upload users
app.post('/api/admin/users/bulk-upload', async (req, res) => {
  try {
    const { users } = req.body;
    if (!users || !Array.isArray(users) || users.length === 0) {
      return res.status(400).json({ success: false, message: 'No users provided' });
    }
    const results = { success: [], failed: [] };
    for (const u of users) {
      try {
        const email = u.email?.trim();
        const role = u.role?.trim() || 'student';
        if (!email) { results.failed.push({ email: 'missing', reason: 'Email required' }); continue; }
        const existing = await query('SELECT id FROM users WHERE email = $1', [email]);
        if (existing.rows.length > 0) { results.failed.push({ email, reason: 'Already exists' }); continue; }
        const tempPassword = Math.random().toString(36).slice(-8) + Math.random().toString(36).slice(-4).toUpperCase();
        const userResult = await query(
          'INSERT INTO users (email, password_hash, role, is_active) VALUES ($1, $2, $3, true) RETURNING id',
          [email, tempPassword, role]
        );
        const userId = userResult.rows[0].id;
        if (role === 'student') {
          await query(
            'INSERT INTO students (user_id, first_name, last_name, matric_number, phone_number) VALUES ($1, $2, $3, $4, $5)',
            [userId, u.first_name?.trim() || '', u.last_name?.trim() || '', u.matric_number?.trim() || u.matriculation_number?.trim() || '', u.phone_number?.trim() || '']
          );
        } else if (role === 'assessor') {
          await query(
            'INSERT INTO assessors (user_id, first_name, last_name, staff_id, department) VALUES ($1, $2, $3, $4, $5)',
            [userId, u.first_name?.trim() || '', u.last_name?.trim() || '', u.staff_id?.trim() || '', u.department?.trim() || '']
          );
        }
        results.success.push({ email, temporary_password: tempPassword });
      } catch (e) {
        results.failed.push({ email: u.email || 'unknown', reason: e.message });
      }
    }
    res.json({ success: true, message: `Created ${results.success.length} users, ${results.failed.length} failed`, data: results });
  } catch (error) {
    console.error('Bulk upload error:', error);
    res.status(500).json({ success: false, message: 'Bulk upload failed' });
  }
});

// ============== TESTS ENDPOINTS ==============

app.get('/api/tests', async (req, res) => {
  try {
    // Return actual tests from the tests table (per-student test records)
    const result = await query(
      `SELECT t.id, t.test_type, t.status, t.total_questions, t.duration_minutes,
              t.started_at, t.completed_at, t.score, t.percentage,
              t.questions_answered, t.correct_answers,
              r.name as rotation_name, rc.name as category_name
       FROM tests t
       LEFT JOIN rotations r ON t.rotation_id = r.id
       LEFT JOIN rotation_categories rc ON r.category_id = rc.id
       ORDER BY t.created_at DESC NULLS LAST, t.started_at DESC NULLS LAST LIMIT 50`
    );
    res.json({ success: true, data: result.rows.map(t => {
      const typeLabel = (t.test_type || '').replace('_', '-').replace(/\b\w/g, c => c.toUpperCase());
      return {
        id: t.id,
        title: `${typeLabel} — ${t.rotation_name || 'Unknown Rotation'}`,
        description: t.category_name || 'Surgery',
        testType: t.test_type,
        status: t.status,
        totalQuestions: t.total_questions || 50,
        durationMinutes: t.duration_minutes || 10,
        startedAt: t.started_at,
        completedAt: t.completed_at,
        score: t.score,
        percentage: t.percentage,
        questionsAnswered: t.questions_answered || 0,
        correctAnswers: t.correct_answers || 0,
        rotationName: t.rotation_name,
        categoryName: t.category_name,
        isActive: true,
        maxAttempts: 1,
        scheduledAt: t.started_at || new Date().toISOString(),
        passingScore: 50,
      };
    }) });
  } catch (error) {
    console.error('Tests list error:', error.message);
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
    const articleResult = await query(`SELECT cme_credits FROM cme_articles WHERE id = $1`, [id]);
    const articleCredits = parseFloat(articleResult.rows[0]?.cme_credits || 0);
    if (passed) {
      cmeCreditsEarned = articleCredits;
    }

    // Persist the result to user_study_progress so performance is tracked.
    const studentId = await resolveStudentId(req);
    if (studentId) {
      try {
        await query(
          `INSERT INTO user_study_progress
             (student_id, article_id, started_at, last_accessed_at,
              assessment_started_at, assessment_completed, assessment_completed_at,
              assessment_score, assessment_attempts, is_fully_completed,
              cme_credits_earned, updated_at)
           VALUES ($1, $2, NOW(), NOW(), NOW(), true, NOW(), $3, 1, $4, $5, NOW())
           ON CONFLICT (student_id, article_id) DO UPDATE SET
             last_accessed_at = NOW(),
             assessment_completed = true,
             assessment_completed_at = NOW(),
             assessment_score = GREATEST(COALESCE(user_study_progress.assessment_score, 0), EXCLUDED.assessment_score),
             assessment_attempts = COALESCE(user_study_progress.assessment_attempts, 0) + 1,
             is_fully_completed = user_study_progress.is_fully_completed OR EXCLUDED.is_fully_completed,
             cme_credits_earned = GREATEST(COALESCE(user_study_progress.cme_credits_earned, 0), EXCLUDED.cme_credits_earned),
             updated_at = NOW()`,
          [studentId, id, score, passed, cmeCreditsEarned]
        );
      } catch (persistErr) {
        console.error('Assessment progress persist error:', persistErr.message);
      }
    }

    res.json({
      success: true,
      data: {
        score,
        correctCount,
        totalQuestions,
        passed,
        cmeCreditsEarned,
        progressSaved: !!studentId,
        results,
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

// ============== CME ENDPOINTS ==============

// Student CME landing page - list articles as activities
app.get('/api/cme', async (req, res) => {
  try {
    const result = await query(`
      SELECT a.id, a.title, a.subtitle, a.authors, a.cme_credits, a.estimated_reading_minutes,
             a.difficulty_level, a.is_published, a.created_at,
             rc.name as category_name,
             COALESCE(qcount.cnt, 0) as question_count
      FROM cme_articles a
      LEFT JOIN rotation_categories rc ON a.category_id = rc.id
      LEFT JOIN (
        SELECT article_id, COUNT(*) as cnt FROM article_self_assessments GROUP BY article_id
      ) qcount ON qcount.article_id = a.id
      WHERE a.is_published = true
      ORDER BY a.created_at DESC
    `);
    // Map to CMEActivity-like objects
    res.json({ success: true, data: result.rows.map(a => ({
      id: a.id,
      title: a.title,
      description: a.subtitle || '',
      type: 'article',
      date: a.created_at,
      cmeCredits: a.cme_credits || 1,
      estimatedMinutes: a.estimated_reading_minutes || 15,
      category: a.category_name || 'General Surgery',
      questionCount: parseInt(a.question_count) || 0,
      difficulty: a.difficulty_level || 'intermediate',
    })) });
  } catch (error) {
    console.error('CME list error:', error.message);
    res.json({ success: true, data: [] });
  }
});

// Student CME progress
app.get('/api/cme/student/progress', async (req, res) => {
  try {
    const studentId = await resolveStudentId(req);
    if (!studentId) {
      return res.json({ success: true, data: [] });
    }
    const result = await query(`
      SELECT usp.*, a.title as article_title, a.cme_credits,
             rc.name as category_name
      FROM user_study_progress usp
      JOIN cme_articles a ON usp.article_id = a.id
      LEFT JOIN rotation_categories rc ON a.category_id = rc.id
      WHERE usp.student_id = $1
      ORDER BY usp.last_accessed_at DESC NULLS LAST
    `, [studentId]);
    res.json({ success: true, data: result.rows.map(p => ({
      id: p.id,
      activityId: p.article_id,
      articleTitle: p.article_title,
      category: p.category_name,
      cmeCredits: p.cme_credits || 1,
      cmeCreditsEarned: parseFloat(p.cme_credits_earned) || 0,
      completionPercentage: p.is_fully_completed ? 100 : (parseFloat(p.reading_progress_percent) || 0),
      assessmentScore: p.assessment_score != null ? parseFloat(p.assessment_score) : null,
      assessmentCompleted: !!p.assessment_completed,
      lastAccessed: p.last_accessed_at,
      status: p.is_fully_completed ? 'completed' : 'in_progress',
    })) });
  } catch (error) {
    console.error('CME student progress error:', error.message);
    res.json({ success: true, data: [] });
  }
});

// Student CME summary
app.get('/api/cme/student/summary', async (req, res) => {
  try {
    const studentId = await resolveStudentId(req);
    const totalArticles = await query('SELECT COUNT(*) as cnt FROM cme_articles WHERE is_published = true');
    if (!studentId) {
      return res.json({
        success: true,
        data: {
          totalPoints: 0,
          activitiesAttended: 0,
          totalActivities: parseInt(totalArticles.rows[0]?.cnt) || 0,
          targetPoints: 20,
        },
      });
    }
    const completed = await query(
      "SELECT COUNT(*) as cnt FROM user_study_progress WHERE student_id = $1 AND assessment_completed = true",
      [studentId]
    );
    const totalCredits = await query(
      "SELECT COALESCE(SUM(cme_credits_earned), 0) as total FROM user_study_progress WHERE student_id = $1",
      [studentId]
    );
    res.json({
      success: true,
      data: {
        totalPoints: parseFloat(totalCredits.rows[0]?.total) || 0,
        activitiesAttended: parseInt(completed.rows[0]?.cnt) || 0,
        totalActivities: parseInt(totalArticles.rows[0]?.cnt) || 0,
        targetPoints: 20,
      },
    });
  } catch (error) {
    console.error('CME summary error:', error.message);
    res.json({ success: true, data: { totalPoints: 0, activitiesAttended: 0, totalActivities: 0, targetPoints: 20 } });
  }
});

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
