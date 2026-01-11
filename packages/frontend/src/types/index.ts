// User types
export type UserRole = 'student' | 'assessor' | 'admin';

export interface User {
  id: string;
  email: string;
  firstName: string;
  lastName: string;
  // Allow snake_case alternatives from backend
  first_name?: string;
  last_name?: string;
  role: UserRole;
  department?: string;
  level?: string;
  matricNumber?: string;
  matriculation_number?: string;
  phoneNumber?: string;
  phone_number?: string;
  profileImage?: string;
  isActive: boolean;
  createdAt: string;
  updatedAt: string;
  // Current rotation info
  current_rotation?: {
    id: string;
    name: string;
    category_id: string;
  };
  currentRotation?: {
    id: string;
    name: string;
    categoryId: string;
  };
}

export interface AuthState {
  user: User | null;
  accessToken: string | null;
  refreshToken: string | null;
  isAuthenticated: boolean;
  isLoading: boolean;
}

// Rotation types
export interface Rotation {
  id: string;
  name: string;
  description: string;
  department: string;
  durationWeeks: number;
  startDate: string;
  endDate: string;
  level: 'Surgery I' | 'Surgery II' | 'Surgery III' | 'Surgery IV';
  isActive: boolean;
  totalStudents: number;
  maxStudents: number;
}

export interface StudentRotation {
  id: string;
  rotationId: string;
  rotation: Rotation;
  studentId: string;
  enrolledAt: string;
  status: 'enrolled' | 'in_progress' | 'completed' | 'failed';
  attendanceRate: number;
  averageScore: number;
  isCleared: boolean;
  clearanceDate?: string;
}

// Attendance types
export interface AttendanceSession {
  id: string;
  rotationId: string;
  date: string;
  startTime: string;
  endTime: string;
  sessionType: 'morning_ward_round' | 'afternoon_clinic' | 'surgery_observation' | 'lecture' | 'seminar';
  location: string;
  qrCode?: string;
  isActive: boolean;
  createdBy: string;
}

export interface AttendanceRecord {
  id: string;
  sessionId: string;
  studentId: string;
  status: 'present' | 'absent' | 'late' | 'excused';
  checkInTime?: string;
  checkInMethod: 'qr_scan' | 'manual' | 'geolocation';
  verifiedBy?: string;
  notes?: string;
}

// Test types
export interface Test {
  id: string;
  rotationId: string;
  title: string;
  description: string;
  type: 'mcq' | 'essay' | 'practical' | 'oral';
  durationMinutes: number;
  totalQuestions: number;
  passingScore: number;
  scheduledAt: string;
  isActive: boolean;
  maxAttempts: number;
}

export interface Question {
  id: string;
  testId?: string;
  questionBankId?: string;
  text: string;
  type: 'single_choice' | 'multiple_choice' | 'true_false';
  options: QuestionOption[];
  explanation?: string;
  difficulty: 'easy' | 'medium' | 'hard';
  topic: string;
  subtopic?: string;
  imageUrl?: string;
  points: number;
  // Additional properties from backend
  rotation_id?: string;
  rotation_name?: string;
  category_name?: string;
  usage_count?: number;
  created_at?: string;
  updated_at?: string;
}

export interface QuestionOption {
  id: string;
  text: string;
  isCorrect: boolean;
}

export interface TestAttempt {
  id: string;
  testId: string;
  studentId: string;
  startedAt: string;
  completedAt?: string;
  score?: number;
  percentageScore?: number;
  passed?: boolean;
  answers: TestAnswer[];
  antiCheatFlags: AntiCheatFlag[];
  deviceFingerprint: string;
}

export interface TestAnswer {
  questionId: string;
  selectedOptionIds: string[];
  timeTaken: number;
  flagged: boolean;
}

export interface AntiCheatFlag {
  type: 'tab_switch' | 'fullscreen_exit' | 'copy_attempt' | 'multiple_devices' | 'time_anomaly';
  timestamp: string;
  details?: string;
}

// Performance types
export interface PerformanceMetrics {
  studentId: string;
  rotationId: string;
  attendanceRate: number;
  averageTestScore: number;
  testsCompleted: number;
  testsPassed: number;
  participationScore: number;
  cmePoints: number;
  overallScore: number;
  ranking?: number;
  totalStudents?: number;
  isCleared: boolean;
  weakAreas: string[];
  strongAreas: string[];
}

export interface WeeklyProgress {
  weekNumber: number;
  startDate: string;
  endDate: string;
  attendanceRate: number;
  testsTaken: number;
  averageScore: number;
}

// CME types
export interface CMEActivity {
  id: string;
  title: string;
  description: string;
  type: 'conference' | 'workshop' | 'seminar' | 'webinar' | 'journal_club' | 'case_presentation';
  points: number;
  date: string;
  location?: string;
  isOnline: boolean;
  maxParticipants?: number;
  registrationDeadline?: string;
}

export interface CMERecord {
  id: string;
  studentId: string;
  activityId: string;
  activity: CMEActivity;
  attendedAt: string;
  pointsEarned: number;
  certificateUrl?: string;
  verifiedBy?: string;
}

// API response types
export interface ApiResponse<T> {
  success: boolean;
  data: T;
  message?: string;
  pagination?: Pagination;
}

export interface ApiError {
  success: false;
  error: {
    code: string;
    message: string;
    details?: Record<string, string[]>;
  };
}

export interface Pagination {
  page: number;
  limit: number;
  total: number;
  totalPages: number;
}

// Offline sync types
export interface SyncItem {
  id: string;
  type: 'attendance' | 'test_answer' | 'participation';
  action: 'create' | 'update' | 'delete';
  data: Record<string, unknown>;
  createdAt: string;
  synced: boolean;
  syncedAt?: string;
  retryCount: number;
  lastError?: string;
}

// Notification types
export interface Notification {
  id: string;
  userId: string;
  title: string;
  message: string;
  type: 'info' | 'success' | 'warning' | 'error';
  category: 'test' | 'attendance' | 'clearance' | 'announcement' | 'system';
  isRead: boolean;
  createdAt: string;
  actionUrl?: string;
}

// Dashboard stats
export interface DashboardStats {
  totalRotations: number;
  activeRotations: number;
  completedRotations: number;
  overallAttendance: number;
  testsCompleted: number;
  averageScore: number;
  cmePoints: number;
  upcomingTests: Test[];
  recentActivity: ActivityItem[];
}

export interface ActivityItem {
  id: string;
  type: 'test_completed' | 'attendance_marked' | 'rotation_started' | 'clearance_granted' | 'cme_attended';
  title: string;
  description: string;
  timestamp: string;
  metadata?: Record<string, unknown>;
}

// Form types
export interface LoginFormData {
  email: string;
  password: string;
  rememberMe: boolean;
}

export interface RegisterFormData {
  firstName: string;
  lastName: string;
  email: string;
  password: string;
  confirmPassword: string;
  matricNumber: string;
  level: string;
  phoneNumber: string;
  acceptTerms: boolean;
}
