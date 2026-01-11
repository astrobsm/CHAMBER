import { Routes, Route, Navigate } from 'react-router-dom';
import { lazy, Suspense } from 'react';
import { useAuth } from './contexts/AuthContext';
import LoadingScreen from './components/common/LoadingScreen';
import ProtectedRoute from './components/auth/ProtectedRoute';
import AppLayout from './components/layout/AppLayout';

// Lazy load pages for better performance
const Login = lazy(() => import('./pages/auth/Login'));
const Register = lazy(() => import('./pages/auth/Register'));
const ForgotPassword = lazy(() => import('./pages/auth/ForgotPassword'));

// Student pages
const StudentDashboard = lazy(() => import('./pages/student/Dashboard'));
const StudentRotations = lazy(() => import('./pages/student/Rotations'));
const StudentTests = lazy(() => import('./pages/student/Tests'));
const StudentCBT = lazy(() => import('./pages/student/CBT'));
const TestSession = lazy(() => import('./pages/student/TestSession'));
const StudentAttendance = lazy(() => import('./pages/student/Attendance'));
const StudentPerformance = lazy(() => import('./pages/student/Performance'));
const StudentCME = lazy(() => import('./pages/student/CME'));
const StudentProfile = lazy(() => import('./pages/student/Profile'));
const StudyModule = lazy(() => import('./pages/student/StudyModule').then(m => ({ default: m.StudyModule })));
const ArticleViewer = lazy(() => import('./pages/student/StudyModule').then(m => ({ default: m.ArticleViewer })));

// Assessor pages
const AssessorDashboard = lazy(() => import('./pages/assessor/Dashboard'));
const AssessorAttendance = lazy(() => import('./pages/assessor/Attendance'));
const AssessorQuestions = lazy(() => import('./pages/assessor/Questions'));
const AssessorStudents = lazy(() => import('./pages/assessor/Students'));
const AssessorReports = lazy(() => import('./pages/assessor/Reports'));

// Admin pages
const AdminDashboard = lazy(() => import('./pages/admin/Dashboard'));
const AdminCBT = lazy(() => import('./pages/admin/CBT'));
const AdminCME = lazy(() => import('./pages/admin/CME'));
const AdminUsers = lazy(() => import('./pages/admin/Users'));
const AdminRotations = lazy(() => import('./pages/admin/Rotations'));
const AdminQuestions = lazy(() => import('./pages/admin/Questions'));
const AdminAnalytics = lazy(() => import('./pages/admin/Analytics'));
const AdminSettings = lazy(() => import('./pages/admin/Settings'));

function App() {
  const { isLoading, user } = useAuth();

  if (isLoading) {
    return <LoadingScreen />;
  }

  // Determine home route based on role
  const getHomeRoute = () => {
    if (!user) return '/login';
    switch (user.role) {
      case 'student':
        return '/student/dashboard';
      case 'assessor':
        return '/assessor/dashboard';
      case 'admin':
        return '/admin/dashboard';
      default:
        return '/login';
    }
  };

  return (
    <Suspense fallback={<LoadingScreen />}>
      <Routes>
        {/* Public routes */}
        <Route path="/login" element={<Login />} />
        <Route path="/register" element={<Register />} />
        <Route path="/forgot-password" element={<ForgotPassword />} />

        {/* Student routes */}
        <Route
          path="/student"
          element={
            <ProtectedRoute allowedRoles={['student']}>
              <AppLayout />
            </ProtectedRoute>
          }
        >
          <Route index element={<Navigate to="dashboard" replace />} />
          <Route path="dashboard" element={<StudentDashboard />} />
          <Route path="rotations" element={<StudentRotations />} />
          <Route path="cbt" element={<StudentCBT />} />
          <Route path="tests" element={<StudentTests />} />
          <Route path="attendance" element={<StudentAttendance />} />
          <Route path="performance" element={<StudentPerformance />} />
          <Route path="cme" element={<StudentCME />} />
          <Route path="study" element={<StudyModule />} />
          <Route path="study/:id" element={<ArticleViewer />} />
          <Route path="profile" element={<StudentProfile />} />
        </Route>

        {/* Test session (fullscreen, separate from layout) */}
        <Route
          path="/test/:testId"
          element={
            <ProtectedRoute allowedRoles={['student']}>
              <TestSession />
            </ProtectedRoute>
          }
        />

        {/* Assessor routes */}
        <Route
          path="/assessor"
          element={
            <ProtectedRoute allowedRoles={['assessor']}>
              <AppLayout />
            </ProtectedRoute>
          }
        >
          <Route index element={<Navigate to="dashboard" replace />} />
          <Route path="dashboard" element={<AssessorDashboard />} />
          <Route path="attendance" element={<AssessorAttendance />} />
          <Route path="questions" element={<AssessorQuestions />} />
          <Route path="students" element={<AssessorStudents />} />
          <Route path="reports" element={<AssessorReports />} />
        </Route>

        {/* Admin routes */}
        <Route
          path="/admin"
          element={
            <ProtectedRoute allowedRoles={['admin']}>
              <AppLayout />
            </ProtectedRoute>
          }
        >
          <Route index element={<Navigate to="dashboard" replace />} />
          <Route path="dashboard" element={<AdminDashboard />} />
          <Route path="cbt" element={<AdminCBT />} />
          <Route path="cme" element={<AdminCME />} />
          <Route path="users" element={<AdminUsers />} />
          <Route path="rotations" element={<AdminRotations />} />
          <Route path="questions" element={<AdminQuestions />} />
          <Route path="analytics" element={<AdminAnalytics />} />
          <Route path="settings" element={<AdminSettings />} />
        </Route>

        {/* Catch-all redirect */}
        <Route path="*" element={<Navigate to={getHomeRoute()} replace />} />
      </Routes>
    </Suspense>
  );
}

export default App;
