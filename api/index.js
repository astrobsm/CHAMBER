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

// Catch-all for undefined routes
app.all('/api/*', (req, res) => {
  res.status(404).json({
    success: false,
    message: `Route ${req.method} ${req.path} not found`,
  });
});

// Export for Vercel
module.exports = app;
