import { createContext, useContext, useEffect, useState, ReactNode } from 'react';
import { useNavigate } from 'react-router-dom';
import { User, AuthState } from '../types';
import { authApi } from '../services/api';
import { storage } from '../utils/storage';
import toast from 'react-hot-toast';

interface AuthContextType extends AuthState {
  login: (email: string, password: string, rememberMe?: boolean) => Promise<void>;
  register: (data: RegisterData) => Promise<void>;
  logout: () => Promise<void>;
  refreshAuth: () => Promise<void>;
  updateProfile: (data: Partial<User>) => Promise<void>;
}

interface RegisterData {
  firstName: string;
  lastName: string;
  email: string;
  password: string;
  matricNumber: string;
  level: string;
  phoneNumber: string;
}

const AuthContext = createContext<AuthContextType | null>(null);

export function AuthProvider({ children }: { children: ReactNode }) {
  const navigate = useNavigate();
  const [state, setState] = useState<AuthState>({
    user: null,
    accessToken: null,
    refreshToken: null,
    isAuthenticated: false,
    isLoading: true,
  });

  // Initialize auth state from storage
  useEffect(() => {
    const initAuth = async () => {
      try {
        const accessToken = storage.get('accessToken');
        const refreshToken = storage.get('refreshToken');
        const userStr = storage.get('user');

        // Validate that user is a valid JSON string (not "undefined" or empty)
        let user = null;
        if (userStr && userStr !== 'undefined' && userStr !== 'null') {
          try {
            user = JSON.parse(userStr);
          } catch {
            // Invalid JSON, clear it
            storage.remove('user');
          }
        }

        if (accessToken && user) {
          setState({
            user,
            accessToken,
            refreshToken,
            isAuthenticated: true,
            isLoading: false,
          });

          // Verify token is still valid
          try {
            const response = await authApi.verifyToken();
            if (response.data) {
              setState(prev => ({
                ...prev,
                user: response.data.user,
              }));
              storage.set('user', JSON.stringify(response.data.user));
            }
          } catch {
            // Token invalid, try refresh
            if (refreshToken) {
              await refreshAuth();
            } else {
              clearAuth();
            }
          }
        } else {
          setState(prev => ({ ...prev, isLoading: false }));
        }
      } catch (error) {
        console.error('Auth init error:', error);
        clearAuth();
      }
    };

    initAuth();
  }, []);

  const clearAuth = () => {
    storage.remove('accessToken');
    storage.remove('refreshToken');
    storage.remove('user');
    setState({
      user: null,
      accessToken: null,
      refreshToken: null,
      isAuthenticated: false,
      isLoading: false,
    });
  };

  const login = async (email: string, password: string, rememberMe = false) => {
    try {
      const response = await authApi.login(email, password);
      // API returns { success, message, data: { user, accessToken, refreshToken } }
      const { user, accessToken, refreshToken } = response.data.data;

      // Store tokens
      const storageType = rememberMe ? 'local' : 'session';
      storage.set('accessToken', accessToken, storageType);
      storage.set('refreshToken', refreshToken, storageType);
      storage.set('user', JSON.stringify(user), storageType);

      setState({
        user,
        accessToken,
        refreshToken,
        isAuthenticated: true,
        isLoading: false,
      });

      toast.success(`Welcome back, ${user.firstName}!`);

      // Navigate based on role
      switch (user.role) {
        case 'student':
          navigate('/student/dashboard');
          break;
        case 'assessor':
          navigate('/assessor/dashboard');
          break;
        case 'admin':
          navigate('/admin/dashboard');
          break;
      }
    } catch (error: unknown) {
      const err = error as { response?: { data?: { error?: { message?: string } } } };
      const message = err.response?.data?.error?.message || 'Login failed';
      toast.error(message);
      throw error;
    }
  };

  const register = async (data: RegisterData) => {
    try {
      const response = await authApi.register(data);
      const { user, accessToken, refreshToken } = response.data;

      storage.set('accessToken', accessToken);
      storage.set('refreshToken', refreshToken);
      storage.set('user', JSON.stringify(user));

      setState({
        user,
        accessToken,
        refreshToken,
        isAuthenticated: true,
        isLoading: false,
      });

      toast.success('Account created successfully!');
      navigate('/student/dashboard');
    } catch (error: unknown) {
      const err = error as { response?: { data?: { error?: { message?: string } } } };
      const message = err.response?.data?.error?.message || 'Registration failed';
      toast.error(message);
      throw error;
    }
  };

  const logout = async () => {
    try {
      await authApi.logout();
    } catch {
      // Ignore logout errors
    } finally {
      clearAuth();
      toast.success('Logged out successfully');
      navigate('/login');
    }
  };

  const refreshAuth = async () => {
    try {
      const refreshToken = storage.get('refreshToken');
      if (!refreshToken) {
        throw new Error('No refresh token');
      }

      const response = await authApi.refreshToken(refreshToken);
      const { accessToken, refreshToken: newRefreshToken, user } = response.data;

      storage.set('accessToken', accessToken);
      storage.set('refreshToken', newRefreshToken);
      storage.set('user', JSON.stringify(user));

      setState({
        user,
        accessToken,
        refreshToken: newRefreshToken,
        isAuthenticated: true,
        isLoading: false,
      });
    } catch {
      clearAuth();
      throw new Error('Session expired');
    }
  };

  const updateProfile = async (data: Partial<User>) => {
    try {
      const response = await authApi.updateProfile(data);
      const updatedUser = response.data.user;

      storage.set('user', JSON.stringify(updatedUser));
      setState(prev => ({
        ...prev,
        user: updatedUser,
      }));

      toast.success('Profile updated successfully');
    } catch (error: unknown) {
      const err = error as { response?: { data?: { error?: { message?: string } } } };
      const message = err.response?.data?.error?.message || 'Failed to update profile';
      toast.error(message);
      throw error;
    }
  };

  return (
    <AuthContext.Provider
      value={{
        ...state,
        login,
        register,
        logout,
        refreshAuth,
        updateProfile,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
}
