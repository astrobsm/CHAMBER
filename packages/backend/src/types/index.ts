// User roles enum
export enum UserRole {
  STUDENT = 'student',
  ASSESSOR = 'assessor',
  ADMIN = 'admin',
}

// Student levels enum
export enum StudentLevel {
  SURGERY_1 = 'surgery_1',
  SURGERY_2 = 'surgery_2',
  SURGERY_3 = 'surgery_3',
  SURGERY_4 = 'surgery_4',
}

// Attendance types enum
export enum AttendanceType {
  CLINIC = 'clinic',
  THEATRE = 'theatre',
  WARD_ROUNDS = 'ward_rounds',
}

// Attendance status enum
export enum AttendanceStatus {
  PRESENT = 'present',
  ABSENT = 'absent',
  EXCUSED = 'excused',
  LATE = 'late',
}

// Test types enum
export enum TestType {
  PRE_TEST = 'pre_test',
  MID_TEST = 'mid_test',
  POST_TEST = 'post_test',
}

// Test status enum
export enum TestStatus {
  NOT_STARTED = 'not_started',
  IN_PROGRESS = 'in_progress',
  COMPLETED = 'completed',
  ABANDONED = 'abandoned',
  INVALIDATED = 'invalidated',
}

// Cognitive levels (Bloom's Taxonomy)
export enum CognitiveLevel {
  KNOWLEDGE = 'knowledge',
  COMPREHENSION = 'comprehension',
  APPLICATION = 'application',
  ANALYSIS = 'analysis',
  SYNTHESIS = 'synthesis',
  EVALUATION = 'evaluation',
}

// Difficulty levels
export enum DifficultyLevel {
  EASY = 'easy',
  MEDIUM = 'medium',
  HARD = 'hard',
}

// CME content types
export enum CMEContentType {
  PDF = 'pdf',
  VIDEO = 'video',
  SLIDES = 'slides',
  DOCUMENT = 'document',
}

// Clearance status
export enum ClearanceStatus {
  ACTIVE = 'active',
  PENDING_CLEARANCE = 'pending_clearance',
  CLEARED = 'cleared',
  EXTENDED = 'extended',
}

// Sync status
export enum SyncStatus {
  PENDING = 'pending',
  SYNCED = 'synced',
  CONFLICT = 'conflict',
  FAILED = 'failed',
}

// Base entity interface
export interface BaseEntity {
  id: string;
  createdAt: Date;
  updatedAt: Date;
}

// User interface
export interface User extends BaseEntity {
  email: string;
  passwordHash: string;
  role: UserRole;
  isActive: boolean;
  emailVerified: boolean;
  lastLogin?: Date;
}

// Student interface
export interface Student extends BaseEntity {
  userId: string;
  matriculationNumber: string;
  firstName: string;
  lastName: string;
  middleName?: string;
  level: StudentLevel;
  phoneNumber: string;
  whatsappNumber?: string;
  profilePhotoUrl?: string;
  dateOfBirth?: Date;
  gender?: string;
  currentRotationId?: string;
  clearanceStatus: ClearanceStatus;
}

// Assessor interface
export interface Assessor extends BaseEntity {
  userId: string;
  staffId: string;
  firstName: string;
  lastName: string;
  title?: string;
  designation?: string;
  department?: string;
  unit?: string;
  phoneNumber?: string;
  profilePhotoUrl?: string;
  canMarkAttendance: boolean;
  canGradeParticipation: boolean;
  canGradeSeminars: boolean;
  canAssessClinical: boolean;
}

// Administrator interface
export interface Administrator extends BaseEntity {
  userId: string;
  staffId: string;
  firstName: string;
  lastName: string;
  department?: string;
  permissions: Record<string, any>;
}

// Rotation Category interface
export interface RotationCategory extends BaseEntity {
  name: string;
  code: string;
  level: StudentLevel;
  description?: string;
  durationWeeks: number;
  isActive: boolean;
}

// Rotation interface
export interface Rotation extends BaseEntity {
  categoryId: string;
  name: string;
  startDate: Date;
  endDate: Date;
  isActive: boolean;
  attendanceWeightClinic: number;
  attendanceWeightTheatre: number;
  attendanceWeightWard: number;
}

// Student Rotation assignment interface
export interface StudentRotation extends BaseEntity {
  studentId: string;
  rotationId: string;
  startDate: Date;
  endDate: Date;
  status: ClearanceStatus;
  finalScore?: number;
  isCleared: boolean;
  clearedAt?: Date;
  clearedBy?: string;
  remarks?: string;
}

// Attendance Session interface
export interface AttendanceSession extends BaseEntity {
  rotationId: string;
  attendanceType: AttendanceType;
  sessionDate: Date;
  startTime: string;
  endTime: string;
  location?: string;
  gpsLatitude?: number;
  gpsLongitude?: number;
  gpsRadiusMeters: number;
  qrCodeToken?: string;
  qrCodeExpiresAt?: Date;
  createdBy: string;
  isActive: boolean;
}

// Attendance Record interface
export interface AttendanceRecord extends BaseEntity {
  sessionId: string;
  studentId: string;
  studentRotationId?: string;
  status: AttendanceStatus;
  checkInTime?: Date;
  checkInGpsLatitude?: number;
  checkInGpsLongitude?: number;
  qrCodeUsed?: string;
  markedByAssessor?: string;
  deviceFingerprint?: string;
  isVerified: boolean;
  verifiedBy?: string;
  verifiedAt?: Date;
  notes?: string;
  syncStatus: SyncStatus;
  offlineId?: string;
}

// Question interface
export interface Question extends BaseEntity {
  topicId: string;
  categoryId: string;
  questionText: string;
  optionA: string;
  optionB: string;
  optionC: string;
  optionD: string;
  optionE: string;
  correctOption: 'A' | 'B' | 'C' | 'D' | 'E';
  explanation: string;
  difficulty: DifficultyLevel;
  cognitiveLevel: CognitiveLevel;
  imageUrl?: string;
  isActive: boolean;
  timesUsed: number;
  timesCorrect: number;
  discriminationIndex?: number;
  createdBy?: string;
}

// Test interface
export interface Test extends BaseEntity {
  studentId: string;
  studentRotationId?: string;
  rotationId: string;
  testType: TestType;
  status: TestStatus;
  totalQuestions: number;
  durationMinutes: number;
  startedAt?: Date;
  completedAt?: Date;
  timeSpentSeconds?: number;
  score?: number;
  percentage?: number;
  questionsAnswered: number;
  correctAnswers: number;
  questionOrder: string[];
  optionOrders: Record<string, string[]>;
  integrityHash?: string;
  deviceFingerprint?: string;
  userAgent?: string;
  ipAddress?: string;
  tabSwitches: number;
  focusLosses: number;
  suspiciousActivities: any[];
  isInvalidated: boolean;
  invalidationReason?: string;
  invalidatedBy?: string;
}

// Test Answer interface
export interface TestAnswer extends BaseEntity {
  testId: string;
  questionId: string;
  questionIndex: number;
  selectedOption?: 'A' | 'B' | 'C' | 'D' | 'E';
  isCorrect?: boolean;
  timeSpentSeconds?: number;
  answeredAt?: Date;
}

// CME Content interface
export interface CMEContent extends BaseEntity {
  categoryId: string;
  topicId?: string;
  title: string;
  description?: string;
  contentType: CMEContentType;
  fileUrl: string;
  fileSizeBytes?: number;
  durationMinutes?: number;
  thumbnailUrl?: string;
  isRequired: boolean;
  pointsValue: number;
  isActive: boolean;
  createdBy?: string;
}

// Performance Summary interface
export interface PerformanceSummary extends BaseEntity {
  studentId: string;
  studentRotationId: string;
  rotationId: string;
  attendanceClinicScore: number;
  attendanceClinicSessions: number;
  attendanceClinicPresent: number;
  attendanceTheatreScore: number;
  attendanceTheatreSessions: number;
  attendanceTheatrePresent: number;
  attendanceWardScore: number;
  attendanceWardSessions: number;
  attendanceWardPresent: number;
  attendanceTotalScore: number;
  participationSeminarScore: number;
  participationHistoryScore: number;
  participationPhysicalScore: number;
  participationConductScore: number;
  participationTeamScore: number;
  participationTotalScore: number;
  testPreScore?: number;
  testMidScore?: number;
  testPostScore?: number;
  testAverageScore: number;
  cmeCompleted: number;
  cmeTotal: number;
  cmeScore: number;
  overallScore: number;
  isEligibleForClearance: boolean;
  deficitPercentage: number;
  lastCalculatedAt: Date;
}

// JWT Payload interface
export interface JWTPayload {
  userId: string;
  email: string;
  role: UserRole;
  iat?: number;
  exp?: number;
}

// API Response interfaces
export interface ApiResponse<T = any> {
  success: boolean;
  data?: T;
  message?: string;
  error?: string;
  errors?: Array<{ field: string; message: string }>;
}

export interface PaginatedResponse<T> extends ApiResponse<T[]> {
  pagination: {
    page: number;
    limit: number;
    total: number;
    totalPages: number;
  };
}

// Request interfaces
export interface LoginRequest {
  email: string;
  password: string;
  deviceFingerprint?: string;
}

export interface RegisterStudentRequest {
  email: string;
  password: string;
  matriculationNumber: string;
  firstName: string;
  lastName: string;
  middleName?: string;
  level: StudentLevel;
  phoneNumber: string;
  whatsappNumber?: string;
}

export interface CreateAttendanceSessionRequest {
  rotationId: string;
  attendanceType: AttendanceType;
  sessionDate: string;
  startTime: string;
  endTime: string;
  location?: string;
  gpsLatitude?: number;
  gpsLongitude?: number;
  gpsRadiusMeters?: number;
}

export interface MarkAttendanceRequest {
  sessionId: string;
  qrCodeToken?: string;
  gpsLatitude?: number;
  gpsLongitude?: number;
  deviceFingerprint?: string;
  offlineId?: string;
  clientTimestamp?: string;
}

export interface SubmitAnswerRequest {
  testId: string;
  questionId: string;
  selectedOption: 'A' | 'B' | 'C' | 'D' | 'E';
  timeSpentSeconds: number;
}

export interface TestActivityRequest {
  testId: string;
  activityType: string;
  activityData?: any;
}
