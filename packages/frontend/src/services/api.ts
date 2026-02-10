import axios, { AxiosInstance, InternalAxiosRequestConfig, AxiosResponse, AxiosError } from 'axios';
import { storage } from '../utils/storage';

// In production (Vercel), use relative path /api; in development use localhost
const getApiBaseUrl = () => {
  const envUrl = import.meta.env.VITE_API_URL;
  
  // Only use env URL if it's a valid URL (starts with http or /)
  if (envUrl && (envUrl.startsWith('http') || envUrl.startsWith('/'))) {
    return envUrl;
  }
  
  // Check if running on Vercel or production (not localhost)
  if (typeof window !== 'undefined' && window.location.hostname !== 'localhost') {
    return '/api';
  }
  
  return 'http://localhost:3001/api';
};

const API_BASE_URL = getApiBaseUrl();

// Create axios instance
const api: AxiosInstance = axios.create({
  baseURL: API_BASE_URL,
  timeout: 30000,
  headers: {
    'Content-Type': 'application/json',
  },
});

// Request interceptor - add auth token
api.interceptors.request.use(
  (config: InternalAxiosRequestConfig) => {
    const token = storage.get('accessToken');
    if (token && config.headers) {
      config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
  },
  (error: AxiosError) => Promise.reject(error)
);

// Response interceptor - handle token refresh
api.interceptors.response.use(
  (response: AxiosResponse) => response,
  async (error: AxiosError) => {
    const originalRequest = error.config as InternalAxiosRequestConfig & { _retry?: boolean };

    if (error.response?.status === 401 && !originalRequest._retry) {
      originalRequest._retry = true;

      try {
        const refreshToken = storage.get('refreshToken');
        if (refreshToken) {
          const response = await axios.post(`${API_BASE_URL}/auth/refresh`, {
            refreshToken,
          });

          const { accessToken, refreshToken: newRefreshToken } = response.data.data;
          storage.set('accessToken', accessToken);
          storage.set('refreshToken', newRefreshToken);

          if (originalRequest.headers) {
            originalRequest.headers.Authorization = `Bearer ${accessToken}`;
          }
          return api(originalRequest);
        }
      } catch {
        // Refresh failed, clear auth and redirect to login
        storage.remove('accessToken');
        storage.remove('refreshToken');
        storage.remove('user');
        window.location.href = '/login';
      }
    }

    return Promise.reject(error);
  }
);

// Auth API
export const authApi = {
  login: (email: string, password: string) =>
    api.post('/auth/login', { email, password }),

  register: (data: {
    firstName: string;
    lastName: string;
    email: string;
    password: string;
    matricNumber: string;
    level: string;
    phoneNumber: string;
  }) => api.post('/auth/register', data),

  logout: () => api.post('/auth/logout'),

  refreshToken: (refreshToken: string) =>
    api.post('/auth/refresh', { refreshToken }),

  verifyToken: () => api.get('/auth/verify'),

  updateProfile: (data: Record<string, unknown>) => api.patch('/auth/profile', data),

  changePassword: (currentPassword: string, newPassword: string) =>
    api.post('/auth/change-password', { currentPassword, newPassword }),

  forgotPassword: (email: string) => api.post('/auth/forgot-password', { email }),

  resetPassword: (token: string, password: string) =>
    api.post('/auth/reset-password', { token, password }),
};

// Students API
export const studentsApi = {
  getProfile: () => api.get('/students/profile'),
  getDashboard: () => api.get('/students/dashboard'),
  getPerformance: (rotationId?: string) =>
    api.get('/students/performance', { params: { rotationId } }),
  getNotifications: () => api.get('/students/notifications'),
  markNotificationRead: (id: string) => api.patch(`/students/notifications/${id}/read`),
  getMyRotations: () => api.get('/rotations/my'),
  
  // For assessor views
  getAll: (params?: { rotationId?: string; rotation_id?: string; level?: string }) =>
    api.get('/admin/users', { params: { role: 'student', rotation_id: params?.rotation_id || params?.rotationId, level: params?.level } }),
  getById: (id: string) => api.get(`/admin/users/${id}`),
};

// Rotations API
export const rotationsApi = {
  list: (params?: { level?: string; status?: string }) =>
    api.get('/rotations', { params }),
  getAll: async (params?: { level?: string }) => {
    // Fetch all rotations with optional level filter
    const response = await api.get('/rotations', { params });
    // API returns { success, data: { rotations: [...] } }
    // Transform to { data: { data: [...] } } for frontend compatibility
    const apiData = response.data?.data || response.data || {};
    const rotations = apiData.rotations || (Array.isArray(apiData) ? apiData : []);
    
    // Transform camelCase to snake_case
    const transformedRotations = rotations.map((r: Record<string, unknown>) => ({
      id: r.id,
      name: r.name,
      category_id: r.categoryId || r.category_id,
      category: r.category,
      description: r.description,
      level: r.level,
      start_date: r.startDate || r.start_date,
      end_date: r.endDate || r.end_date,
      is_active: r.isActive !== undefined ? r.isActive : (r.is_active !== undefined ? r.is_active : (r.status === 'active')),
      status: r.status,
      student_count: r.studentCount || r.student_count || 0,
    }));
    
    return { data: { data: transformedRotations } };
  },
  getCategories: async () => {
    // Fetch rotation categories for the question bank
    const response = await api.get('/rotations/categories');
    return response;
  },
  get: (id: string) => api.get(`/rotations/${id}`),
  enroll: (id: string) => api.post(`/rotations/${id}/enroll`),
  getMyRotations: () => api.get('/rotations/my'),
  getStudents: (id: string) => api.get(`/rotations/${id}/students`),
  
  // Admin
  create: (data: Record<string, unknown>) => api.post('/rotations', data),
  update: (id: string, data: Record<string, unknown>) => api.put(`/rotations/${id}`, data),
  delete: (id: string) => api.delete(`/rotations/${id}`),
};

// Attendance API
export const attendanceApi = {
  getSessions: (rotationId: string) =>
    api.get(`/attendance/sessions`, { params: { rotationId } }),
  checkIn: (sessionId: string, qrCode: string, location?: { lat: number; lng: number }) =>
    api.post(`/attendance/check-in`, { sessionId, qrCode, location }),
  getMyAttendance: (rotationId?: string) =>
    api.get('/attendance/my-records', { params: { rotation_id: rotationId } }),
  getSummary: (studentId?: string, rotationId?: string) =>
    api.get('/attendance/summary', { params: { studentId, rotationId } }),
  getByDate: (date: string, rotationId?: string) =>
    api.get('/attendance/by-date', { params: { date, rotation_id: rotationId } }),
  
  // Assessor
  createSession: (data: Record<string, unknown>) => api.post('/attendance/sessions', data),
  generateQRCode: (sessionId: string) => api.get(`/attendance/sessions/${sessionId}/qr`),
  markManual: (data: { student_id: string; date: string; status: string; rotation_id: string; notes?: string }) =>
    api.post('/attendance/mark', { session_id: data.rotation_id, student_id: data.student_id, status: data.status, notes: data.notes }),
  getSessionStudents: (sessionId: string) =>
    api.get(`/attendance/sessions/${sessionId}/students`),
};

// Tests API
export const testsApi = {
  list: (rotationId?: string) => api.get('/tests', { params: { rotationId } }),
  get: (id: string) => api.get(`/tests/${id}`),
  getMyTests: (rotationId?: string) => api.get('/tests/my-tests', { params: { rotation_id: rotationId } }),
  getMyAttempts: () => api.get('/tests/my-attempts'),
  getAvailableTests: () => api.get('/tests/available'),
  start: (rotationId: string, testType: string) =>
    api.post('/tests/start', { rotation_id: rotationId, test_type: testType }),
  submitAnswer: (testId: string, questionId: string, selectedOption: string | string[], timeSpentSeconds: number) =>
    api.post(`/tests/${testId}/answer`, { 
      question_id: questionId, 
      selected_option: Array.isArray(selectedOption) ? selectedOption.join(',') : selectedOption, 
      time_spent_seconds: timeSpentSeconds 
    }),
  complete: (testId: string) => api.post(`/tests/${testId}/complete`),
  getStatus: (testId: string) => api.get(`/tests/${testId}/status`),
  getResults: (testId: string) => api.get(`/tests/${testId}/results`),
  logActivity: (testId: string, activityType: string, details?: object) =>
    api.post(`/tests/${testId}/activity`, { activity_type: activityType, details }),
  reportAntiCheat: (testId: string, flag: { type: string; details?: string }) =>
    api.post(`/tests/${testId}/anti-cheat`, flag),
  
  // Admin/Assessor
  create: (data: Record<string, unknown>) => api.post('/tests', data),
  update: (id: string, data: Record<string, unknown>) => api.put(`/tests/${id}`, data),
  delete: (id: string) => api.delete(`/tests/${id}`),
};

// Questions API
export const questionsApi = {
  list: (params?: { topic?: string; difficulty?: string }) =>
    api.get('/questions', { params }),
  getAll: async (params?: { rotation_id?: string; category_id?: string; difficulty?: string }) => {
    const response = await api.get('/questions', { params: { ...params, category_id: params?.rotation_id || params?.category_id, limit: 5000 } });
    // Transform backend response to frontend expected format
    // API returns: { success, data: { questions: [...], total, limit, offset } }
    const apiData = response.data?.data || response.data || {};
    const questions = apiData.questions || [];
    
    // Transform camelCase to snake_case for frontend compatibility
    const transformedQuestions = questions.map((q: Record<string, unknown>) => ({
      id: q.id,
      question_text: q.questionText || q.question_text,
      option_a: q.optionA || q.option_a,
      option_b: q.optionB || q.option_b,
      option_c: q.optionC || q.option_c,
      option_d: q.optionD || q.option_d,
      option_e: q.optionE || q.option_e,
      correct_option: q.correctOption || q.correct_option,
      explanation: q.explanation,
      difficulty: q.difficulty,
      cognitive_level: q.cognitiveLevel || q.cognitive_level,
      topic_id: q.topicId || q.topic_id,
      topic_name: q.topicName || q.topic_name,
      category_id: q.categoryId || q.category_id,
      category_name: q.categoryName || q.category_name,
      is_active: q.isActive !== undefined ? q.isActive : (q.is_active !== undefined ? q.is_active : true),
    }));
    
    return {
      data: {
        questions: transformedQuestions,
        total: apiData.total,
        pagination: response.data.pagination,
      }
    };
  },
  get: (id: string) => api.get(`/questions/${id}`),
  create: (data: Record<string, unknown>) => api.post('/questions', data),
  update: (id: string, data: Record<string, unknown>) => api.put(`/questions/${id}`, data),
  delete: (id: string) => api.delete(`/questions/${id}`),
  bulkImport: (questions: Record<string, unknown>[]) =>
    api.post('/questions/bulk', { questions }),
  import: (formData: FormData) => api.post('/questions/import', formData),
  export: (params?: { rotation_id?: string; format?: string }) =>
    api.get('/questions/export', { params, responseType: 'blob' }),
};

// Participation API
export const participationApi = {
  list: (params?: { rotationId?: string; studentId?: string }) =>
    api.get('/participation', { params }),
  create: (data: Record<string, unknown>) => api.post('/participation', data),
  update: (id: string, data: Record<string, unknown>) => api.put(`/participation/${id}`, data),
};

// CME API
export const cmeApi = {
  getActivities: () => api.get('/cme'),
  getArticles: async () => {
    const response = await api.get('/cme/admin/articles');
    // API returns { success, data: { articles: [...] } }
    const apiData = response.data?.data || response.data || {};
    const articles = apiData.articles || (Array.isArray(apiData) ? apiData : []);
    return { data: articles };
  },
  getAdminArticles: async () => {
    const response = await api.get('/cme/admin/articles');
    const apiData = response.data?.data || response.data || {};
    const articles = apiData.articles || (Array.isArray(apiData) ? apiData : []);
    return { data: articles };
  },
  register: (activityId: string) => api.post(`/cme/${activityId}/register`),
  getMyRecords: () => api.get('/cme/student/progress'),
  getSummary: () => api.get('/cme/student/summary'),
  
  // Admin
  createActivity: (data: Record<string, unknown>) => api.post('/cme/activities', data),
  markAttendance: (activityId: string, studentIds: string[]) =>
    api.post(`/cme/activities/${activityId}/attendance`, { studentIds }),
};

// Analytics API
export const analyticsApi = {
  getDashboard: () => api.get('/analytics/dashboard'),
  getRotationStats: (rotationId: string) => api.get(`/analytics/rotations/${rotationId}`),
  getStudentStats: (studentId: string) => api.get(`/analytics/students/${studentId}`),
  getTestAnalytics: (testId: string) => api.get(`/analytics/tests/${testId}`),
  getClearanceReport: (rotationId: string) =>
    api.get(`/analytics/clearance/${rotationId}`),
  exportReport: (type: string, params: Record<string, unknown>) =>
    api.get('/analytics/export', { params: { type, ...params }, responseType: 'blob' }),
  
  // Additional report methods - accept params object directly
  getReport: (params: { type: string; start_date?: string; end_date?: string; rotation_id?: string }) =>
    api.get('/analytics/report', { params }),
  downloadReport: (params: { type: string; format?: string; start_date?: string; end_date?: string; rotation_id?: string }) =>
    api.get('/analytics/export', { params, responseType: 'blob' }),
};

// Admin API
export const adminApi = {
  getUsers: (params?: { role?: string; page?: number; limit?: number; is_active?: boolean }) =>
    api.get('/admin/users', { params }),
  getUser: (id: string) => api.get(`/admin/users/${id}`),
  createUser: (data: Record<string, unknown>) => api.post('/admin/users', data),
  updateUser: (id: string, data: Record<string, unknown>) =>
    api.put(`/admin/users/${id}`, data),
  deleteUser: (id: string) => api.delete(`/admin/users/${id}`),
  resetUserPassword: (id: string) => api.post(`/admin/users/${id}/reset-password`),
  
  // Bulk upload
  bulkUploadUsers: (users: Record<string, unknown>[]) =>
    api.post('/admin/users/bulk-upload', { users }),
  getBulkTemplate: () =>
    api.get('/admin/users/bulk-template', { responseType: 'blob' }),
  
  getSystemStats: () => api.get('/admin/stats'),
  getAuditLogs: (params?: { page?: number; limit?: number }) =>
    api.get('/admin/audit-logs', { params }),
  getSettings: () => api.get('/admin/settings'),
  updateSettings: (data: Record<string, unknown>) => api.put('/admin/settings', data),
  
  processClearances: (rotationId: string) =>
    api.post(`/admin/clearances/process/${rotationId}`),
  generateReports: (type: string, params: Record<string, unknown>) =>
    api.post('/admin/reports/generate', { type, ...params }),
};

// Sync API — full two-way push/pull
export const syncApi = {
  // PUSH: Send offline changes to server
  push: (data: Array<{
    type: string;
    payload: Record<string, unknown>;
    offline_id: string;
    timestamp: string;
  }>, deviceId?: string) =>
    api.post('/sync/push', { data, deviceId }),

  // PULL: Download latest server data for offline caching
  pull: (params?: { last_sync?: string; entities?: string; full?: string }) =>
    api.get('/sync/pull', { params }),

  // Legacy compat
  sync: (data: Record<string, unknown>[]) =>
    api.post('/sync/push', {
      data: data.map(d => ({
        type: d.type,
        payload: d.data || d,
        offline_id: d.clientId || crypto.randomUUID(),
        timestamp: d.timestamp || new Date().toISOString(),
      })),
    }),

  // Status & management
  getStatus: () => api.get('/sync/status'),
  resolveConflicts: (resolutions: Array<{ conflict_id: string; strategy: string }>) =>
    api.post('/sync/resolve-conflicts', { resolutions }),
  registerDevice: (device: {
    deviceFingerprint: string;
    deviceName?: string;
    deviceType?: string;
    browser?: string;
    os?: string;
  }) => api.post('/sync/register-device', device),
};

export default api;
