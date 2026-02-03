// Vercel Serverless API Entry Point
const express = require('express');
const cors = require('cors');

const app = express();

// Middleware
app.use(cors({
  origin: true,
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization', 'X-Requested-With'],
}));
app.use(express.json());

// Health check
app.get('/api/health', (req, res) => {
  res.json({
    status: 'healthy',
    timestamp: new Date().toISOString(),
    version: '1.0.0',
    service: 'Clinical Rotation Platform API',
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

// Login endpoint
app.post('/api/auth/login', (req, res) => {
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
  
  return res.status(401).json({
    success: false,
    message: 'Invalid email or password',
  });
});

// Demo login endpoint
app.post('/api/auth/demo-login', (req, res) => {
  const { role } = req.body;
  
  const demoUsers = {
    admin: {
      id: 'demo-admin-001',
      email: 'demo-admin@unth.edu.ng',
      role: 'admin',
      firstName: 'Demo',
      lastName: 'Admin',
    },
    student: {
      id: 'demo-student-001',
      email: 'demo-student@unth.edu.ng',
      role: 'student',
      firstName: 'Demo',
      lastName: 'Student',
    },
    assessor: {
      id: 'demo-assessor-001',
      email: 'demo-assessor@unth.edu.ng',
      role: 'assessor',
      firstName: 'Demo',
      lastName: 'Assessor',
    },
  };
  
  const user = demoUsers[role];
  if (!user) {
    return res.status(400).json({
      success: false,
      message: 'Invalid role',
    });
  }
  
  const token = `demo-${role}-token-${Date.now()}`;
  
  return res.json({
    success: true,
    message: 'Demo login successful',
    data: {
      user,
      profile: {
        id: `demo-${role}-profile`,
        department: 'Medical Education',
      },
      accessToken: token,
      refreshToken: `refresh-${token}`,
    },
  });
});

// Token refresh
app.post('/api/auth/refresh', (req, res) => {
  const { refreshToken } = req.body;
  
  if (refreshToken) {
    return res.json({
      success: true,
      data: {
        accessToken: `refreshed-token-${Date.now()}`,
        refreshToken: `new-refresh-${Date.now()}`,
      },
    });
  }
  
  return res.status(401).json({
    success: false,
    message: 'Invalid refresh token',
  });
});

// Token verification
app.get('/api/auth/verify', (req, res) => {
  const authHeader = req.headers.authorization;
  
  if (authHeader && authHeader.startsWith('Bearer ')) {
    return res.json({
      success: true,
      data: { valid: true },
    });
  }
  
  return res.status(401).json({
    success: false,
    message: 'Invalid token',
  });
});

// Logout
app.post('/api/auth/logout', (req, res) => {
  res.json({
    success: true,
    message: 'Logged out successfully',
  });
});

// ============== ADMIN ENDPOINTS ==============

// Admin stats
app.get('/api/admin/stats', (req, res) => {
  res.json({
    success: true,
    data: {
      totalStudents: 156,
      activeRotations: 8,
      pendingClearances: 12,
      totalAssessors: 24,
      attendanceRate: 87.5,
      averageTestScore: 72.3,
      activeSessions: 45,
      recentActivity: [
        { type: 'attendance', count: 23, date: new Date().toISOString() },
        { type: 'test', count: 15, date: new Date().toISOString() },
        { type: 'clearance', count: 8, date: new Date().toISOString() },
      ],
    },
  });
});

// Admin users list
app.get('/api/admin/users', (req, res) => {
  res.json({
    success: true,
    data: {
      users: [
        { id: '1', email: 'student1@unth.edu.ng', role: 'student', firstName: 'John', lastName: 'Doe', status: 'active' },
        { id: '2', email: 'student2@unth.edu.ng', role: 'student', firstName: 'Jane', lastName: 'Smith', status: 'active' },
        { id: '3', email: 'assessor1@unth.edu.ng', role: 'assessor', firstName: 'Dr. Michael', lastName: 'Johnson', status: 'active' },
      ],
      total: 3,
      page: 1,
      limit: 10,
    },
  });
});

// ============== STUDENT ENDPOINTS ==============

app.get('/api/students', (req, res) => {
  res.json({
    success: true,
    data: {
      students: [
        { id: '1', matricNumber: 'MED/2022/001', firstName: 'John', lastName: 'Doe', level: '400', email: 'john.doe@unth.edu.ng' },
        { id: '2', matricNumber: 'MED/2022/002', firstName: 'Jane', lastName: 'Smith', level: '400', email: 'jane.smith@unth.edu.ng' },
      ],
      total: 2,
    },
  });
});

app.get('/api/students/profile', (req, res) => {
  res.json({
    success: true,
    data: {
      id: 'student-001',
      matricNumber: 'MED/2022/001',
      firstName: 'Demo',
      lastName: 'Student',
      level: '400',
      email: 'demo-student@unth.edu.ng',
      department: 'Medicine',
      currentRotation: 'Surgery',
      attendanceRate: 85,
      testAverage: 72,
    },
  });
});

// ============== ROTATION ENDPOINTS ==============

app.get('/api/rotations', (req, res) => {
  res.json({
    success: true,
    data: {
      rotations: [
        { id: '1', name: 'Surgery', duration: '8 weeks', startDate: '2026-01-06', endDate: '2026-03-01', status: 'active' },
        { id: '2', name: 'Internal Medicine', duration: '8 weeks', startDate: '2026-03-03', endDate: '2026-04-27', status: 'upcoming' },
        { id: '3', name: 'Pediatrics', duration: '6 weeks', startDate: '2026-04-28', endDate: '2026-06-08', status: 'upcoming' },
      ],
    },
  });
});

// ============== ATTENDANCE ENDPOINTS ==============

app.get('/api/attendance', (req, res) => {
  res.json({
    success: true,
    data: {
      records: [
        { id: '1', date: '2026-02-03', status: 'present', rotation: 'Surgery', checkInTime: '08:00', checkOutTime: '16:00' },
        { id: '2', date: '2026-02-02', status: 'present', rotation: 'Surgery', checkInTime: '08:15', checkOutTime: '16:30' },
      ],
      summary: {
        totalDays: 20,
        present: 17,
        absent: 2,
        late: 1,
        attendanceRate: 85,
      },
    },
  });
});

app.post('/api/attendance/check-in', (req, res) => {
  res.json({
    success: true,
    message: 'Check-in successful',
    data: {
      id: `attendance-${Date.now()}`,
      checkInTime: new Date().toISOString(),
      status: 'present',
    },
  });
});

// ============== TEST ENDPOINTS ==============

app.get('/api/tests', (req, res) => {
  res.json({
    success: true,
    data: {
      tests: [
        { id: '1', name: 'Surgery Mid-Rotation Test', date: '2026-02-01', score: 78, status: 'completed' },
        { id: '2', name: 'Surgery Final Test', date: '2026-02-28', score: null, status: 'upcoming' },
      ],
    },
  });
});

// ============== CME ENDPOINTS ==============

app.get('/api/cme/articles', (req, res) => {
  res.json({
    success: true,
    data: {
      articles: [
        { id: '1', title: 'General Surgery Principles', category: 'Surgery', credits: 2, status: 'available' },
        { id: '2', title: 'Blood Conservation Techniques', category: 'Surgery', credits: 1.5, status: 'available' },
      ],
    },
  });
});

// ============== ANALYTICS ENDPOINTS ==============

app.get('/api/analytics/dashboard', (req, res) => {
  res.json({
    success: true,
    data: {
      overview: {
        totalStudents: 156,
        averageAttendance: 87.5,
        averageTestScore: 72.3,
        clearanceRate: 92,
      },
      charts: {
        attendanceTrend: [
          { month: 'Jan', rate: 85 },
          { month: 'Feb', rate: 88 },
        ],
        testScores: [
          { rotation: 'Surgery', average: 75 },
          { rotation: 'Medicine', average: 72 },
        ],
      },
    },
  });
});

// Catch-all for undefined routes
app.all('/api/*', (req, res) => {
  res.status(404).json({
    success: false,
    message: `Route ${req.method} ${req.path} not found`,
  });
});

// Export for Vercel
module.exports = app;
