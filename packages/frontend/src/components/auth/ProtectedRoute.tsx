import { Navigate, useLocation } from 'react-router-dom';
import { useAuth } from '../../contexts/AuthContext';
import { UserRole } from '../../types';
import LoadingScreen from '../common/LoadingScreen';

interface ProtectedRouteProps {
  children: React.ReactNode;
  allowedRoles?: UserRole[];
}

export function ProtectedRoute({ children, allowedRoles }: ProtectedRouteProps) {
  const { isAuthenticated, isLoading, user } = useAuth();
  const location = useLocation();

  // Check for demo mode login
  const isDemo = localStorage.getItem('isDemo') === 'true';
  const demoUserStr = localStorage.getItem('user');

  if (isLoading && !isDemo) {
    return <LoadingScreen />;
  }

  // Allow demo users through
  if (isDemo && demoUserStr && demoUserStr !== 'undefined' && demoUserStr !== 'null') {
    try {
      const parsedUser = JSON.parse(demoUserStr);
      
      if (allowedRoles && !allowedRoles.includes(parsedUser.role)) {
        const redirectPath = parsedUser.role === 'student' 
          ? '/student/dashboard'
          : parsedUser.role === 'assessor'
            ? '/assessor/dashboard'
            : '/admin/dashboard';
        
        return <Navigate to={redirectPath} replace />;
      }
      
      return <>{children}</>;
    } catch {
      // Invalid JSON, clear demo mode
      localStorage.removeItem('isDemo');
      localStorage.removeItem('user');
    }
  }

  if (!isAuthenticated) {
    // Redirect to login while saving the attempted URL
    return <Navigate to="/login" state={{ from: location }} replace />;
  }

  if (allowedRoles && user && !allowedRoles.includes(user.role)) {
    // User doesn't have the required role
    const redirectPath = user.role === 'student' 
      ? '/student/dashboard'
      : user.role === 'assessor'
        ? '/assessor/dashboard'
        : '/admin/dashboard';
    
    return <Navigate to={redirectPath} replace />;
  }

  return <>{children}</>;
}

export default ProtectedRoute;
