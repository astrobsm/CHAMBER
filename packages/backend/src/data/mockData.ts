// Mock data for development/demo without database
import { v4 as uuidv4 } from 'uuid';

// Mock Users
export const mockUsers = [
  {
    id: uuidv4(),
    email: 'student@unth.edu.ng',
    password_hash: '$2a$10$XQxBtLNfVh1XTvGqPFiJW.MxXEJfvD3VT1nIQhX9eGn.5rXt8nJQO', // password: student123
    role: 'student',
    first_name: 'John',
    last_name: 'Okonkwo',
    phone: '+2348012345678',
    is_active: true,
    created_at: new Date().toISOString(),
    matric_number: 'MED/2022/001',
    level: 'Surgery II',
  },
  {
    id: uuidv4(),
    email: 'assessor@unth.edu.ng',
    password_hash: '$2a$10$XQxBtLNfVh1XTvGqPFiJW.MxXEJfvD3VT1nIQhX9eGn.5rXt8nJQO', // password: assessor123
    role: 'assessor',
    first_name: 'Dr. Adaeze',
    last_name: 'Nnamdi',
    phone: '+2348087654321',
    is_active: true,
    created_at: new Date().toISOString(),
    department: 'General Surgery',
    specialization: 'Consultant Surgeon',
  },
  {
    id: uuidv4(),
    email: 'admin@unth.edu.ng',
    password_hash: '$2a$10$XQxBtLNfVh1XTvGqPFiJW.MxXEJfvD3VT1nIQhX9eGn.5rXt8nJQO', // password: admin123
    role: 'admin',
    first_name: 'System',
    last_name: 'Administrator',
    phone: '+2348098765432',
    is_active: true,
    created_at: new Date().toISOString(),
  },
];

// Mock Rotations
export const mockRotations = [
  {
    id: uuidv4(),
    name: 'General Surgery',
    code: 'SUR-101',
    level: 'Surgery I',
    duration_weeks: 6,
    description: 'Introduction to surgical principles and basic procedures',
    is_active: true,
    requirements: {
      min_attendance: 75,
      min_tests: 2,
      min_participation: 75,
    },
    created_at: new Date().toISOString(),
  },
  {
    id: uuidv4(),
    name: 'Orthopedic Surgery',
    code: 'SUR-201',
    level: 'Surgery II',
    duration_weeks: 4,
    description: 'Musculoskeletal surgery and trauma management',
    is_active: true,
    requirements: {
      min_attendance: 80,
      min_tests: 3,
      min_participation: 75,
    },
    created_at: new Date().toISOString(),
  },
  {
    id: uuidv4(),
    name: 'Pediatric Surgery',
    code: 'SUR-301',
    level: 'Surgery III',
    duration_weeks: 4,
    description: 'Surgical management of pediatric conditions',
    is_active: true,
    requirements: {
      min_attendance: 80,
      min_tests: 2,
      min_participation: 80,
    },
    created_at: new Date().toISOString(),
  },
  {
    id: uuidv4(),
    name: 'Cardiothoracic Surgery',
    code: 'SUR-401',
    level: 'Surgery IV',
    duration_weeks: 6,
    description: 'Advanced cardiac and thoracic surgical procedures',
    is_active: true,
    requirements: {
      min_attendance: 85,
      min_tests: 4,
      min_participation: 80,
    },
    created_at: new Date().toISOString(),
  },
];

// Mock Questions
export const mockQuestions = [
  {
    id: uuidv4(),
    rotation_id: mockRotations[0].id,
    question_text: 'What is the most common indication for appendectomy?',
    options: JSON.stringify([
      'Acute appendicitis',
      'Chronic abdominal pain',
      'Intestinal obstruction',
      'Diverticulitis',
    ]),
    correct_answer: 0,
    difficulty: 'easy',
    topic: 'Appendicitis',
    explanation: 'Acute appendicitis is the most common surgical emergency and the primary indication for appendectomy.',
    is_active: true,
    created_at: new Date().toISOString(),
  },
  {
    id: uuidv4(),
    rotation_id: mockRotations[0].id,
    question_text: 'Which of the following is a contraindication for laparoscopic cholecystectomy?',
    options: JSON.stringify([
      'Uncorrected coagulopathy',
      'Mild jaundice',
      'Previous abdominal surgery',
      'Obesity',
    ]),
    correct_answer: 0,
    difficulty: 'medium',
    topic: 'Cholecystectomy',
    explanation: 'Uncorrected coagulopathy is an absolute contraindication due to bleeding risk.',
    is_active: true,
    created_at: new Date().toISOString(),
  },
  {
    id: uuidv4(),
    rotation_id: mockRotations[1].id,
    question_text: 'What is the most common type of hip fracture in elderly patients?',
    options: JSON.stringify([
      'Intertrochanteric fracture',
      'Femoral head fracture',
      'Subtrochanteric fracture',
      'Greater trochanter fracture',
    ]),
    correct_answer: 0,
    difficulty: 'medium',
    topic: 'Hip Fractures',
    explanation: 'Intertrochanteric fractures account for approximately 50% of all hip fractures in elderly patients.',
    is_active: true,
    created_at: new Date().toISOString(),
  },
];

// Mock Attendance Records
export const mockAttendance = [
  {
    id: uuidv4(),
    student_id: mockUsers[0].id,
    rotation_id: mockRotations[1].id,
    date: new Date().toISOString().split('T')[0],
    status: 'present',
    check_in_time: '08:15:00',
    method: 'qr_code',
    created_at: new Date().toISOString(),
  },
];

// Mock Test Sessions
export const mockTests = [
  {
    id: uuidv4(),
    student_id: mockUsers[0].id,
    rotation_id: mockRotations[1].id,
    started_at: new Date(Date.now() - 86400000).toISOString(), // Yesterday
    completed_at: new Date(Date.now() - 86400000 + 600000).toISOString(), // 10 min later
    score: 76,
    total_questions: 50,
    correct_answers: 38,
    status: 'completed',
    time_taken: 598,
    created_at: new Date().toISOString(),
  },
];

// Mock Performance Data
export const mockPerformance = {
  attendance_rate: 85,
  test_average: 76,
  participation_rate: 78,
  overall_score: 79.67,
  clearance_status: 'cleared',
  tests_completed: 3,
  tests_required: 3,
  days_attended: 17,
  total_days: 20,
};

// Mock CME Content
export const mockCME = [
  {
    id: uuidv4(),
    title: 'Introduction to Surgical Asepsis',
    description: 'Learn the principles of maintaining a sterile surgical environment',
    content_type: 'video',
    duration_minutes: 45,
    rotation_id: mockRotations[0].id,
    is_required: true,
    order: 1,
    created_at: new Date().toISOString(),
  },
  {
    id: uuidv4(),
    title: 'Pre-operative Patient Assessment',
    description: 'Comprehensive guide to evaluating surgical patients',
    content_type: 'document',
    duration_minutes: 30,
    rotation_id: mockRotations[0].id,
    is_required: true,
    order: 2,
    created_at: new Date().toISOString(),
  },
  {
    id: uuidv4(),
    title: 'Wound Care and Suturing Techniques',
    description: 'Practical guide to wound management and closure',
    content_type: 'video',
    duration_minutes: 60,
    rotation_id: mockRotations[0].id,
    is_required: false,
    order: 3,
    created_at: new Date().toISOString(),
  },
];

// Mock Analytics
export const mockAnalytics = {
  totalStudents: 156,
  activeRotations: 8,
  averageAttendance: 82,
  averageTestScore: 71,
  totalTestsTaken: 1248,
  totalQuestionsAsked: 62400,
  studentsByLevel: {
    'Surgery I': 45,
    'Surgery II': 42,
    'Surgery III': 38,
    'Surgery IV': 31,
  },
  attendanceTrend: [
    { date: '2025-12-30', rate: 78 },
    { date: '2025-12-31', rate: 82 },
    { date: '2026-01-02', rate: 85 },
    { date: '2026-01-03', rate: 80 },
    { date: '2026-01-06', rate: 84 },
  ],
  testPerformanceTrend: [
    { date: '2025-12-30', average: 68 },
    { date: '2025-12-31', average: 72 },
    { date: '2026-01-02', average: 70 },
    { date: '2026-01-03', average: 74 },
    { date: '2026-01-06', average: 71 },
  ],
};

export default {
  users: mockUsers,
  rotations: mockRotations,
  questions: mockQuestions,
  attendance: mockAttendance,
  tests: mockTests,
  performance: mockPerformance,
  cme: mockCME,
  analytics: mockAnalytics,
};
