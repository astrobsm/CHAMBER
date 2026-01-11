-- ============================================================================
-- CLINICAL ROTATION PLATFORM - DATABASE SCHEMA
-- University of Nigeria Teaching Hospital, Ituku-Ozalla
-- Version: 1.0.0
-- ============================================================================

-- Enable required extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- ============================================================================
-- ENUMS
-- ============================================================================

-- User roles
CREATE TYPE user_role AS ENUM ('student', 'assessor', 'admin');

-- Student levels (Surgery categories)
CREATE TYPE student_level AS ENUM ('surgery_1', 'surgery_2', 'surgery_3', 'surgery_4');

-- Attendance types
CREATE TYPE attendance_type AS ENUM ('clinic', 'theatre', 'ward_rounds');

-- Attendance status
CREATE TYPE attendance_status AS ENUM ('present', 'absent', 'excused', 'late');

-- Test types
CREATE TYPE test_type AS ENUM ('pre_test', 'mid_test', 'post_test');

-- Test status
CREATE TYPE test_status AS ENUM ('not_started', 'in_progress', 'completed', 'abandoned', 'invalidated');

-- Cognitive levels (Bloom's Taxonomy)
CREATE TYPE cognitive_level AS ENUM ('knowledge', 'comprehension', 'application', 'analysis', 'synthesis', 'evaluation');

-- Difficulty levels
CREATE TYPE difficulty_level AS ENUM ('easy', 'medium', 'hard');

-- CME content types
CREATE TYPE cme_content_type AS ENUM ('pdf', 'video', 'slides', 'document');

-- Clearance status
CREATE TYPE clearance_status AS ENUM ('active', 'pending_clearance', 'cleared', 'extended');

-- Sync status for offline support
CREATE TYPE sync_status AS ENUM ('pending', 'synced', 'conflict', 'failed');

-- ============================================================================
-- CORE TABLES
-- ============================================================================

-- Users table (all system users)
CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role user_role NOT NULL,
    is_active BOOLEAN DEFAULT true,
    email_verified BOOLEAN DEFAULT false,
    last_login TIMESTAMP WITH TIME ZONE,
    password_reset_token VARCHAR(255),
    password_reset_expires TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Student profiles
CREATE TABLE students (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    matriculation_number VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    level student_level NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    whatsapp_number VARCHAR(20),
    profile_photo_url VARCHAR(500),
    date_of_birth DATE,
    gender VARCHAR(10),
    current_rotation_id UUID,
    clearance_status clearance_status DEFAULT 'active',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_student_user UNIQUE (user_id)
);

-- Assessors (Consultants/Residents)
CREATE TABLE assessors (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    staff_id VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    title VARCHAR(50), -- Dr., Prof., etc.
    designation VARCHAR(100), -- Consultant, Senior Resident, etc.
    department VARCHAR(100),
    unit VARCHAR(100),
    phone_number VARCHAR(20),
    profile_photo_url VARCHAR(500),
    can_mark_attendance BOOLEAN DEFAULT true,
    can_grade_participation BOOLEAN DEFAULT true,
    can_grade_seminars BOOLEAN DEFAULT true,
    can_assess_clinical BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_assessor_user UNIQUE (user_id)
);

-- Administrators
CREATE TABLE administrators (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    staff_id VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    permissions JSONB DEFAULT '{}',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_admin_user UNIQUE (user_id)
);

-- ============================================================================
-- ROTATION & SCHEDULING TABLES
-- ============================================================================

-- Rotation categories/groups
CREATE TABLE rotation_categories (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(100) NOT NULL,
    code VARCHAR(20) UNIQUE NOT NULL,
    level student_level NOT NULL,
    description TEXT,
    duration_weeks INTEGER NOT NULL DEFAULT 6,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Rotation periods
CREATE TABLE rotations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    category_id UUID NOT NULL REFERENCES rotation_categories(id),
    name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    is_active BOOLEAN DEFAULT true,
    attendance_weight_clinic DECIMAL(5,2) DEFAULT 33.33,
    attendance_weight_theatre DECIMAL(5,2) DEFAULT 33.33,
    attendance_weight_ward DECIMAL(5,2) DEFAULT 33.34,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT valid_rotation_dates CHECK (end_date > start_date)
);

-- Student rotation assignments
CREATE TABLE student_rotations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status clearance_status DEFAULT 'active',
    final_score DECIMAL(5,2),
    is_cleared BOOLEAN DEFAULT false,
    cleared_at TIMESTAMP WITH TIME ZONE,
    cleared_by UUID REFERENCES users(id),
    remarks TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_student_rotation UNIQUE (student_id, rotation_id)
);

-- ============================================================================
-- ATTENDANCE TABLES
-- ============================================================================

-- Attendance sessions (for QR code generation)
CREATE TABLE attendance_sessions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id),
    attendance_type attendance_type NOT NULL,
    session_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    location VARCHAR(200),
    gps_latitude DECIMAL(10, 8),
    gps_longitude DECIMAL(11, 8),
    gps_radius_meters INTEGER DEFAULT 500,
    qr_code_token VARCHAR(255) UNIQUE,
    qr_code_expires_at TIMESTAMP WITH TIME ZONE,
    created_by UUID NOT NULL REFERENCES users(id),
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Attendance records
CREATE TABLE attendance_records (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    session_id UUID NOT NULL REFERENCES attendance_sessions(id),
    student_id UUID NOT NULL REFERENCES students(id),
    student_rotation_id UUID REFERENCES student_rotations(id),
    status attendance_status NOT NULL DEFAULT 'present',
    check_in_time TIMESTAMP WITH TIME ZONE,
    check_in_gps_latitude DECIMAL(10, 8),
    check_in_gps_longitude DECIMAL(11, 8),
    qr_code_used VARCHAR(255),
    marked_by_assessor UUID REFERENCES assessors(id),
    device_fingerprint VARCHAR(255),
    is_verified BOOLEAN DEFAULT false,
    verified_by UUID REFERENCES users(id),
    verified_at TIMESTAMP WITH TIME ZONE,
    notes TEXT,
    sync_status sync_status DEFAULT 'synced',
    offline_id VARCHAR(100),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_attendance_record UNIQUE (session_id, student_id)
);

-- ============================================================================
-- PARTICIPATION TRACKING TABLES
-- ============================================================================

-- Participation activity types
CREATE TABLE participation_types (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(100) NOT NULL,
    code VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    max_score INTEGER NOT NULL DEFAULT 100,
    weight DECIMAL(5,2) NOT NULL DEFAULT 1.00,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Pre-populate participation types
INSERT INTO participation_types (name, code, description, max_score, weight) VALUES
    ('Seminar Presentation', 'seminar', 'Student seminar presentations', 100, 1.0),
    ('History Taking', 'history', 'Patient history taking assessment', 100, 1.0),
    ('Physical Examination', 'physical_exam', 'Physical examination skills', 100, 1.0),
    ('Professional Conduct', 'conduct', 'Professional behavior and ethics', 100, 1.0),
    ('Team Participation', 'team', 'Participation in team activities', 100, 1.0);

-- Participation records
CREATE TABLE participation_records (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id),
    student_rotation_id UUID REFERENCES student_rotations(id),
    participation_type_id UUID NOT NULL REFERENCES participation_types(id),
    session_date DATE NOT NULL,
    score DECIMAL(5,2) NOT NULL,
    max_score INTEGER NOT NULL DEFAULT 100,
    assessor_id UUID NOT NULL REFERENCES assessors(id),
    rubric_scores JSONB, -- Detailed rubric breakdown
    feedback TEXT,
    is_verified BOOLEAN DEFAULT true,
    sync_status sync_status DEFAULT 'synced',
    offline_id VARCHAR(100),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Participation rubrics
CREATE TABLE participation_rubrics (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    participation_type_id UUID NOT NULL REFERENCES participation_types(id),
    criterion_name VARCHAR(100) NOT NULL,
    criterion_description TEXT,
    max_points INTEGER NOT NULL,
    order_index INTEGER NOT NULL DEFAULT 0,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- QUESTION BANK & TEST ENGINE TABLES
-- ============================================================================

-- Topics (from posting syllabus)
CREATE TABLE topics (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    category_id UUID NOT NULL REFERENCES rotation_categories(id),
    name VARCHAR(200) NOT NULL,
    description TEXT,
    order_index INTEGER NOT NULL DEFAULT 0,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Questions
CREATE TABLE questions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    topic_id UUID NOT NULL REFERENCES topics(id),
    category_id UUID NOT NULL REFERENCES rotation_categories(id),
    question_text TEXT NOT NULL,
    option_a TEXT NOT NULL,
    option_b TEXT NOT NULL,
    option_c TEXT NOT NULL,
    option_d TEXT NOT NULL,
    option_e TEXT NOT NULL,
    correct_option CHAR(1) NOT NULL CHECK (correct_option IN ('A', 'B', 'C', 'D', 'E')),
    explanation TEXT NOT NULL,
    difficulty difficulty_level NOT NULL DEFAULT 'medium',
    cognitive_level cognitive_level NOT NULL DEFAULT 'knowledge',
    image_url VARCHAR(500),
    is_active BOOLEAN DEFAULT true,
    times_used INTEGER DEFAULT 0,
    times_correct INTEGER DEFAULT 0,
    discrimination_index DECIMAL(5,4),
    created_by UUID REFERENCES users(id),
    reviewed_by UUID REFERENCES users(id),
    reviewed_at TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Tests (generated per student per type)
CREATE TABLE tests (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id),
    student_rotation_id UUID REFERENCES student_rotations(id),
    rotation_id UUID NOT NULL REFERENCES rotations(id),
    test_type test_type NOT NULL,
    status test_status DEFAULT 'not_started',
    total_questions INTEGER NOT NULL DEFAULT 50,
    duration_minutes INTEGER NOT NULL DEFAULT 10,
    started_at TIMESTAMP WITH TIME ZONE,
    completed_at TIMESTAMP WITH TIME ZONE,
    time_spent_seconds INTEGER,
    score DECIMAL(5,2),
    percentage DECIMAL(5,2),
    questions_answered INTEGER DEFAULT 0,
    correct_answers INTEGER DEFAULT 0,
    question_order JSONB, -- Array of question IDs in randomized order
    option_orders JSONB, -- Object mapping question ID to randomized option order
    integrity_hash VARCHAR(255),
    device_fingerprint VARCHAR(255),
    user_agent TEXT,
    ip_address VARCHAR(45),
    tab_switches INTEGER DEFAULT 0,
    focus_losses INTEGER DEFAULT 0,
    suspicious_activities JSONB DEFAULT '[]',
    is_invalidated BOOLEAN DEFAULT false,
    invalidation_reason TEXT,
    invalidated_by UUID REFERENCES users(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_test UNIQUE (student_id, rotation_id, test_type)
);

-- Test answers (individual responses)
CREATE TABLE test_answers (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    test_id UUID NOT NULL REFERENCES tests(id) ON DELETE CASCADE,
    question_id UUID NOT NULL REFERENCES questions(id),
    question_index INTEGER NOT NULL, -- Position in the test
    selected_option CHAR(1) CHECK (selected_option IN ('A', 'B', 'C', 'D', 'E')),
    is_correct BOOLEAN,
    time_spent_seconds INTEGER,
    answered_at TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_test_answer UNIQUE (test_id, question_id)
);

-- Test activity logs (for anti-cheating)
CREATE TABLE test_activity_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    test_id UUID NOT NULL REFERENCES tests(id) ON DELETE CASCADE,
    activity_type VARCHAR(50) NOT NULL, -- tab_switch, focus_loss, copy_attempt, etc.
    activity_data JSONB,
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- CME MODULE TABLES
-- ============================================================================

-- CME content
CREATE TABLE cme_contents (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    category_id UUID NOT NULL REFERENCES rotation_categories(id),
    topic_id UUID REFERENCES topics(id),
    title VARCHAR(255) NOT NULL,
    description TEXT,
    content_type cme_content_type NOT NULL,
    file_url VARCHAR(500) NOT NULL,
    file_size_bytes BIGINT,
    duration_minutes INTEGER, -- For videos
    thumbnail_url VARCHAR(500),
    is_required BOOLEAN DEFAULT false,
    points_value INTEGER DEFAULT 1,
    is_active BOOLEAN DEFAULT true,
    created_by UUID REFERENCES users(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- CME completion tracking
CREATE TABLE cme_completions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id),
    student_rotation_id UUID REFERENCES student_rotations(id),
    cme_content_id UUID NOT NULL REFERENCES cme_contents(id),
    started_at TIMESTAMP WITH TIME ZONE,
    completed_at TIMESTAMP WITH TIME ZONE,
    progress_percentage DECIMAL(5,2) DEFAULT 0,
    time_spent_seconds INTEGER DEFAULT 0,
    is_completed BOOLEAN DEFAULT false,
    points_earned INTEGER DEFAULT 0,
    sync_status sync_status DEFAULT 'synced',
    offline_id VARCHAR(100),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_cme_completion UNIQUE (student_id, cme_content_id)
);

-- ============================================================================
-- PERFORMANCE & SCORING TABLES
-- ============================================================================

-- Performance summaries (calculated aggregates)
CREATE TABLE performance_summaries (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id),
    student_rotation_id UUID NOT NULL REFERENCES student_rotations(id),
    rotation_id UUID NOT NULL REFERENCES rotations(id),
    
    -- Attendance scores
    attendance_clinic_score DECIMAL(5,2) DEFAULT 0,
    attendance_clinic_sessions INTEGER DEFAULT 0,
    attendance_clinic_present INTEGER DEFAULT 0,
    attendance_theatre_score DECIMAL(5,2) DEFAULT 0,
    attendance_theatre_sessions INTEGER DEFAULT 0,
    attendance_theatre_present INTEGER DEFAULT 0,
    attendance_ward_score DECIMAL(5,2) DEFAULT 0,
    attendance_ward_sessions INTEGER DEFAULT 0,
    attendance_ward_present INTEGER DEFAULT 0,
    attendance_total_score DECIMAL(5,2) DEFAULT 0,
    
    -- Participation scores
    participation_seminar_score DECIMAL(5,2) DEFAULT 0,
    participation_history_score DECIMAL(5,2) DEFAULT 0,
    participation_physical_score DECIMAL(5,2) DEFAULT 0,
    participation_conduct_score DECIMAL(5,2) DEFAULT 0,
    participation_team_score DECIMAL(5,2) DEFAULT 0,
    participation_total_score DECIMAL(5,2) DEFAULT 0,
    
    -- Test scores
    test_pre_score DECIMAL(5,2),
    test_mid_score DECIMAL(5,2),
    test_post_score DECIMAL(5,2),
    test_average_score DECIMAL(5,2) DEFAULT 0,
    
    -- CME scores
    cme_completed INTEGER DEFAULT 0,
    cme_total INTEGER DEFAULT 0,
    cme_score DECIMAL(5,2) DEFAULT 0,
    
    -- Overall
    overall_score DECIMAL(5,2) DEFAULT 0,
    is_eligible_for_clearance BOOLEAN DEFAULT false,
    deficit_percentage DECIMAL(5,2) DEFAULT 0,
    
    last_calculated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_performance_summary UNIQUE (student_id, rotation_id)
);

-- Score weighting configuration
CREATE TABLE score_weights (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID REFERENCES rotations(id), -- NULL for global defaults
    component_name VARCHAR(50) NOT NULL,
    weight_percentage DECIMAL(5,2) NOT NULL,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Default score weights
INSERT INTO score_weights (component_name, weight_percentage) VALUES
    ('attendance', 25.00),
    ('participation', 25.00),
    ('tests', 40.00),
    ('cme', 10.00);

-- ============================================================================
-- CLEARANCE & REPORTS TABLES
-- ============================================================================

-- Clearance records
CREATE TABLE clearance_records (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id),
    student_rotation_id UUID NOT NULL REFERENCES student_rotations(id),
    rotation_id UUID NOT NULL REFERENCES rotations(id),
    final_score DECIMAL(5,2) NOT NULL,
    threshold_met BOOLEAN NOT NULL,
    cleared_at TIMESTAMP WITH TIME ZONE,
    cleared_by UUID REFERENCES users(id),
    report_generated BOOLEAN DEFAULT false,
    report_url VARCHAR(500),
    report_generated_at TIMESTAMP WITH TIME ZONE,
    whatsapp_sent BOOLEAN DEFAULT false,
    whatsapp_sent_at TIMESTAMP WITH TIME ZONE,
    email_sent BOOLEAN DEFAULT false,
    email_sent_at TIMESTAMP WITH TIME ZONE,
    remarks TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Generated reports archive
CREATE TABLE reports (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id),
    rotation_id UUID NOT NULL REFERENCES rotations(id),
    report_type VARCHAR(50) NOT NULL, -- performance, clearance, attendance, etc.
    file_url VARCHAR(500) NOT NULL,
    file_size_bytes BIGINT,
    report_data JSONB, -- Snapshot of data used to generate report
    generated_by UUID REFERENCES users(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- NOTIFICATION & MESSAGING TABLES
-- ============================================================================

-- Notification queue
CREATE TABLE notifications (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id),
    title VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    notification_type VARCHAR(50) NOT NULL, -- system, attendance, test, clearance, etc.
    data JSONB,
    is_read BOOLEAN DEFAULT false,
    read_at TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- WhatsApp message queue
CREATE TABLE whatsapp_queue (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    phone_number VARCHAR(20) NOT NULL,
    message_type VARCHAR(50) NOT NULL, -- text, pdf, image
    message_content TEXT,
    attachment_url VARCHAR(500),
    status VARCHAR(20) DEFAULT 'pending', -- pending, sent, failed
    attempts INTEGER DEFAULT 0,
    last_attempt_at TIMESTAMP WITH TIME ZONE,
    sent_at TIMESTAMP WITH TIME ZONE,
    error_message TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- OFFLINE SYNC TABLES
-- ============================================================================

-- Sync queue for offline operations
CREATE TABLE sync_queue (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id),
    entity_type VARCHAR(50) NOT NULL, -- attendance, participation, cme_completion, etc.
    entity_id UUID,
    operation VARCHAR(20) NOT NULL, -- create, update, delete
    payload JSONB NOT NULL,
    client_timestamp TIMESTAMP WITH TIME ZONE NOT NULL,
    server_timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    sync_status sync_status DEFAULT 'pending',
    conflict_resolution JSONB,
    processed_at TIMESTAMP WITH TIME ZONE,
    error_message TEXT,
    retry_count INTEGER DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Device registrations (for sync and fingerprinting)
CREATE TABLE device_registrations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id),
    device_fingerprint VARCHAR(255) NOT NULL,
    device_name VARCHAR(100),
    device_type VARCHAR(50), -- mobile, tablet, desktop
    browser VARCHAR(100),
    os VARCHAR(100),
    last_seen_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    is_trusted BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_device UNIQUE (user_id, device_fingerprint)
);

-- ============================================================================
-- AUDIT & LOGGING TABLES
-- ============================================================================

-- Offline sync log (tracks what has been synced)
CREATE TABLE offline_sync_log (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    offline_id VARCHAR(100) UNIQUE NOT NULL,
    user_id UUID NOT NULL REFERENCES users(id),
    data_type VARCHAR(50) NOT NULL, -- attendance, test_answer, participation
    synced_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_offline_sync_offline_id ON offline_sync_log(offline_id);
CREATE INDEX idx_offline_sync_user ON offline_sync_log(user_id);

-- System configurations (alternative naming for routes)
CREATE TABLE system_configurations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    key VARCHAR(100) UNIQUE NOT NULL,
    value TEXT NOT NULL,
    category VARCHAR(50) DEFAULT 'general',
    description TEXT,
    updated_by UUID REFERENCES users(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Audit logs
CREATE TABLE audit_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES users(id),
    action VARCHAR(100) NOT NULL,
    entity_type VARCHAR(50),
    entity_id UUID,
    old_values JSONB,
    new_values JSONB,
    ip_address VARCHAR(45),
    user_agent TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Session logs
CREATE TABLE session_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id),
    session_token VARCHAR(255),
    ip_address VARCHAR(45),
    user_agent TEXT,
    device_fingerprint VARCHAR(255),
    login_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    logout_at TIMESTAMP WITH TIME ZONE,
    is_active BOOLEAN DEFAULT true
);

-- Refresh tokens
CREATE TABLE refresh_tokens (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    token_hash VARCHAR(255) NOT NULL,
    device_fingerprint VARCHAR(255),
    expires_at TIMESTAMP WITH TIME ZONE NOT NULL,
    is_revoked BOOLEAN DEFAULT false,
    revoked_at TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- CONFIGURATION TABLES
-- ============================================================================

-- System configuration
CREATE TABLE system_config (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    config_key VARCHAR(100) UNIQUE NOT NULL,
    config_value JSONB NOT NULL,
    description TEXT,
    is_public BOOLEAN DEFAULT false, -- Can be sent to frontend
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Default configurations
INSERT INTO system_config (config_key, config_value, description, is_public) VALUES
    ('clearance_threshold', '{"percentage": 75}', 'Minimum percentage required for clearance', true),
    ('test_duration', '{"minutes": 10}', 'Test duration in minutes', true),
    ('test_questions', '{"count": 50}', 'Number of questions per test', true),
    ('qr_validity', '{"minutes": 15}', 'QR code validity duration', true),
    ('max_tab_switches', '{"count": 3}', 'Maximum tab switches before warning', true),
    ('suspicious_threshold', '{"count": 5}', 'Suspicious activities before auto-submit', true),
    ('gps_radius', '{"meters": 500}', 'GPS radius for attendance validation', true);

-- ============================================================================
-- INDEXES
-- ============================================================================

-- Users
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_role ON users(role);

-- Students
CREATE INDEX idx_students_matric ON students(matriculation_number);
CREATE INDEX idx_students_level ON students(level);
CREATE INDEX idx_students_user ON students(user_id);
CREATE INDEX idx_students_rotation ON students(current_rotation_id);

-- Attendance
CREATE INDEX idx_attendance_session ON attendance_records(session_id);
CREATE INDEX idx_attendance_student ON attendance_records(student_id);
CREATE INDEX idx_attendance_date ON attendance_sessions(session_date);
CREATE INDEX idx_attendance_rotation ON attendance_sessions(rotation_id);

-- Participation
CREATE INDEX idx_participation_student ON participation_records(student_id);
CREATE INDEX idx_participation_type ON participation_records(participation_type_id);
CREATE INDEX idx_participation_date ON participation_records(session_date);

-- Questions
CREATE INDEX idx_questions_topic ON questions(topic_id);
CREATE INDEX idx_questions_category ON questions(category_id);
CREATE INDEX idx_questions_difficulty ON questions(difficulty);
CREATE INDEX idx_questions_cognitive ON questions(cognitive_level);

-- Tests
CREATE INDEX idx_tests_student ON tests(student_id);
CREATE INDEX idx_tests_rotation ON tests(rotation_id);
CREATE INDEX idx_tests_type ON tests(test_type);
CREATE INDEX idx_tests_status ON tests(status);

-- Test answers
CREATE INDEX idx_test_answers_test ON test_answers(test_id);

-- CME
CREATE INDEX idx_cme_category ON cme_contents(category_id);
CREATE INDEX idx_cme_completions_student ON cme_completions(student_id);

-- Performance
CREATE INDEX idx_performance_student ON performance_summaries(student_id);
CREATE INDEX idx_performance_rotation ON performance_summaries(rotation_id);

-- Sync
CREATE INDEX idx_sync_user ON sync_queue(user_id);
CREATE INDEX idx_sync_status ON sync_queue(sync_status);

-- Audit
CREATE INDEX idx_audit_user ON audit_logs(user_id);
CREATE INDEX idx_audit_action ON audit_logs(action);
CREATE INDEX idx_audit_created ON audit_logs(created_at);

-- ============================================================================
-- TRIGGERS
-- ============================================================================

-- Update timestamp trigger function
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Apply update triggers to relevant tables
CREATE TRIGGER update_users_updated_at BEFORE UPDATE ON users
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_students_updated_at BEFORE UPDATE ON students
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_assessors_updated_at BEFORE UPDATE ON assessors
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_rotations_updated_at BEFORE UPDATE ON rotations
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_tests_updated_at BEFORE UPDATE ON tests
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_performance_updated_at BEFORE UPDATE ON performance_summaries
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- VIEWS
-- ============================================================================

-- Student dashboard view
CREATE VIEW v_student_dashboard AS
SELECT 
    s.id AS student_id,
    s.matriculation_number,
    s.first_name,
    s.last_name,
    s.level,
    s.clearance_status,
    sr.id AS student_rotation_id,
    r.id AS rotation_id,
    r.name AS rotation_name,
    r.start_date AS rotation_start,
    r.end_date AS rotation_end,
    ps.attendance_total_score,
    ps.participation_total_score,
    ps.test_average_score,
    ps.cme_score,
    ps.overall_score,
    ps.is_eligible_for_clearance,
    ps.deficit_percentage
FROM students s
LEFT JOIN student_rotations sr ON s.id = sr.student_id AND sr.status = 'active'
LEFT JOIN rotations r ON sr.rotation_id = r.id
LEFT JOIN performance_summaries ps ON s.id = ps.student_id AND r.id = ps.rotation_id;

-- Attendance summary view
CREATE VIEW v_attendance_summary AS
SELECT 
    ar.student_id,
    sr.rotation_id,
    ats.attendance_type,
    COUNT(*) AS total_sessions,
    COUNT(CASE WHEN ar.status = 'present' THEN 1 END) AS present_count,
    COUNT(CASE WHEN ar.status = 'absent' THEN 1 END) AS absent_count,
    COUNT(CASE WHEN ar.status = 'late' THEN 1 END) AS late_count,
    ROUND(
        COUNT(CASE WHEN ar.status IN ('present', 'late') THEN 1 END)::DECIMAL / 
        NULLIF(COUNT(*), 0) * 100, 2
    ) AS attendance_percentage
FROM attendance_records ar
JOIN attendance_sessions ats ON ar.session_id = ats.id
JOIN student_rotations sr ON ar.student_rotation_id = sr.id
GROUP BY ar.student_id, sr.rotation_id, ats.attendance_type;

-- Test performance view
CREATE VIEW v_test_performance AS
SELECT 
    t.student_id,
    t.rotation_id,
    t.test_type,
    t.status,
    t.percentage,
    t.correct_answers,
    t.total_questions,
    t.time_spent_seconds,
    t.tab_switches,
    t.focus_losses,
    t.is_invalidated
FROM tests t
WHERE t.status = 'completed';

-- ============================================================================
-- END OF SCHEMA
-- ============================================================================
