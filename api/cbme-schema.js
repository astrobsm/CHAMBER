// ============================================================================
// CBME v2 schema — CANONICAL DDL.
//
// This module is the single source of truth so the Vercel serverless bundler
// traces it as a dependency. Regenerate the matching .sql file (for operators
// running psql by hand) with:  npm run db:cbme-sql
//
// DDL runs as one multi-statement batch (an implicit transaction). ALTER TYPE
// ... ADD VALUE cannot run inside a transaction on older PostgreSQL, so enum
// extensions are kept separate and executed one statement at a time.
// ============================================================================

const DDL = `-- ============================================================================
-- CLINICAL ROTATION PLATFORM — COMPETENCY-BASED MEDICAL EDUCATION (CBME) v2
-- University of Nigeria Teaching Hospital, Ituku-Ozalla
--
-- Adds the competency framework on top of the v1 schema:
--   * Extended student profile / rotation definition
--   * Competitive learning groups (Spartans, Myrmidons, Legionnaires, ...)
--   * Seminar topic allocation + structured seminar assessment
--   * Clinical competency assessment (clerking, ward, theatre, wound dressing)
--   * Clinic patient assignment + digital clerking
--   * Auditable competency snapshots & sign-out eligibility
--   * End-of-rotation awards, hall of fame, certificates
--
-- This migration is idempotent — safe to run repeatedly.
-- ============================================================================

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ============================================================================
-- 1. EXTENDED STUDENT PROFILE (Phase 1)
-- ============================================================================

ALTER TABLE students ADD COLUMN IF NOT EXISTS registration_number VARCHAR(60);
ALTER TABLE students ADD COLUMN IF NOT EXISTS institution VARCHAR(200);
ALTER TABLE students ADD COLUMN IF NOT EXISTS faculty VARCHAR(200);
ALTER TABLE students ADD COLUMN IF NOT EXISTS department VARCHAR(200);
-- medical_student | house_officer | intern | junior_resident | senior_resident |
-- nursing_student | allied_health
ALTER TABLE students ADD COLUMN IF NOT EXISTS training_level VARCHAR(60);
ALTER TABLE students ADD COLUMN IF NOT EXISTS emergency_contact_name VARCHAR(150);
ALTER TABLE students ADD COLUMN IF NOT EXISTS emergency_contact_phone VARCHAR(40);
ALTER TABLE students ADD COLUMN IF NOT EXISTS emergency_contact_relationship VARCHAR(80);
ALTER TABLE students ADD COLUMN IF NOT EXISTS previous_units TEXT;
ALTER TABLE students ADD COLUMN IF NOT EXISTS portfolio_notes TEXT;

-- ============================================================================
-- 2. EXTENDED ROTATION DEFINITION (Phase 2)
-- ============================================================================

ALTER TABLE rotations ADD COLUMN IF NOT EXISTS specialty VARCHAR(150);
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS unit VARCHAR(150);
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS academic_session VARCHAR(40);
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS batch VARCHAR(80);
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS expected_students INTEGER;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS consultants TEXT;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS residents TEXT;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS house_officers TEXT;
-- Day-of-week arrays, e.g. ["monday","thursday"]
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS clinic_days JSONB DEFAULT '[]'::jsonb;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS ward_round_days JSONB DEFAULT '[]'::jsonb;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS theatre_days JSONB DEFAULT '[]'::jsonb;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS seminar_days JSONB DEFAULT '[]'::jsonb;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS examination_date DATE;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS sign_out_date DATE;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS groups_allocated_at TIMESTAMP WITH TIME ZONE;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS seminars_allocated_at TIMESTAMP WITH TIME ZONE;
ALTER TABLE rotations ADD COLUMN IF NOT EXISTS awards_computed_at TIMESTAMP WITH TIME ZONE;

-- ============================================================================
-- 3. COMPETITIVE LEARNING GROUPS (Phase 3)
-- ============================================================================

CREATE TABLE IF NOT EXISTS rotation_groups (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    code VARCHAR(40) NOT NULL,          -- spartans | myrmidons | legionnaires | immortals | argonauts
    name VARCHAR(80) NOT NULL,
    motto TEXT,
    meaning TEXT,
    virtues JSONB DEFAULT '[]'::jsonb,  -- ["Discipline","Leadership",...]
    color VARCHAR(20),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_rotation_group UNIQUE (rotation_id, code)
);

CREATE TABLE IF NOT EXISTS group_memberships (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    group_id UUID NOT NULL REFERENCES rotation_groups(id) ON DELETE CASCADE,
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    is_leader BOOLEAN DEFAULT false,
    assigned_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_group_membership UNIQUE (rotation_id, student_id)
);

CREATE INDEX IF NOT EXISTS idx_group_memberships_group ON group_memberships(group_id);
CREATE INDEX IF NOT EXISTS idx_group_memberships_student ON group_memberships(student_id);
CREATE INDEX IF NOT EXISTS idx_rotation_groups_rotation ON rotation_groups(rotation_id);

-- ============================================================================
-- 4. SEMINAR TOPIC ALLOCATION & ASSESSMENT (Phase 4)
-- ============================================================================

CREATE TABLE IF NOT EXISTS seminar_topics (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    title VARCHAR(300) NOT NULL,
    description TEXT,
    order_index INTEGER NOT NULL DEFAULT 0,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_seminar_topics_rotation ON seminar_topics(rotation_id);

CREATE TABLE IF NOT EXISTS seminar_assignments (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    topic_id UUID NOT NULL REFERENCES seminar_topics(id) ON DELETE CASCADE,
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    presentation_date DATE,
    presentation_time TIME,
    venue VARCHAR(200),
    supervisor_id UUID,                 -- assessors.id
    supervisor_name VARCHAR(200),
    -- assigned | presented | assessed | withdrawn
    status VARCHAR(30) NOT NULL DEFAULT 'assigned',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_seminar_topic_assignment UNIQUE (rotation_id, topic_id)
);

CREATE INDEX IF NOT EXISTS idx_seminar_assignments_student ON seminar_assignments(student_id);
CREATE INDEX IF NOT EXISTS idx_seminar_assignments_rotation ON seminar_assignments(rotation_id);

-- ============================================================================
-- 5. UNIFIED COMPETENCY ASSESSMENT (Phases 4 & 6)
--    One row per structured, rubric-based assessment event.
-- ============================================================================

CREATE TABLE IF NOT EXISTS competency_assessments (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    -- seminar | clerking | ward_presentation | clinical_judgement |
    -- theatre | wound_dressing | professional_conduct
    assessment_type VARCHAR(50) NOT NULL,
    reference_id UUID,                  -- seminar_assignments.id / clinic_assignments.id
    assessment_date DATE NOT NULL DEFAULT CURRENT_DATE,
    domain_scores JSONB NOT NULL DEFAULT '{}'::jsonb,
    raw_score NUMERIC(7,2) NOT NULL DEFAULT 0,
    max_score NUMERIC(7,2) NOT NULL DEFAULT 0,
    percentage NUMERIC(5,2) NOT NULL DEFAULT 0,
    assessor_id UUID,                   -- assessors.id
    assessor_user_id UUID,              -- users.id (audit)
    assessor_name VARCHAR(200),
    feedback TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_comp_assess_student ON competency_assessments(student_id);
CREATE INDEX IF NOT EXISTS idx_comp_assess_rotation ON competency_assessments(rotation_id);
CREATE INDEX IF NOT EXISTS idx_comp_assess_type ON competency_assessments(assessment_type);
CREATE INDEX IF NOT EXISTS idx_comp_assess_assessor ON competency_assessments(assessor_id);

-- ============================================================================
-- 6. CLINIC PATIENT ASSIGNMENT & DIGITAL CLERKING (Phase 6)
-- ============================================================================

CREATE TABLE IF NOT EXISTS clinic_assignments (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    clinic_date DATE NOT NULL,
    clinic_name VARCHAR(200),
    patient_code VARCHAR(80),           -- de-identified patient reference
    patient_age INTEGER,
    patient_sex VARCHAR(20),
    provisional_diagnosis VARCHAR(300),
    consultant_id UUID,
    consultant_name VARCHAR(200),
    presentation_order INTEGER,
    -- assigned | clerked | presented | assessed
    status VARCHAR(30) NOT NULL DEFAULT 'assigned',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_clinic_assignments_student ON clinic_assignments(student_id);
CREATE INDEX IF NOT EXISTS idx_clinic_assignments_rotation_date ON clinic_assignments(rotation_id, clinic_date);

CREATE TABLE IF NOT EXISTS clerkings (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    clinic_assignment_id UUID REFERENCES clinic_assignments(id) ON DELETE CASCADE,
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    history TEXT,
    examination TEXT,
    investigations TEXT,
    differential_diagnosis TEXT,
    final_diagnosis TEXT,
    management_plan TEXT,
    evidence_discussion TEXT,
    status VARCHAR(20) NOT NULL DEFAULT 'draft',   -- draft | submitted
    submitted_at TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_clerking_per_assignment UNIQUE (clinic_assignment_id)
);

CREATE INDEX IF NOT EXISTS idx_clerkings_student ON clerkings(student_id);

-- ============================================================================
-- 7. COMPETENCY SNAPSHOTS & SIGN-OUT (Scoring framework)
-- ============================================================================

CREATE TABLE IF NOT EXISTS competency_snapshots (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    attendance_score NUMERIC(6,2) DEFAULT 0,   -- out of 50
    seminar_score NUMERIC(6,2) DEFAULT 0,      -- out of 10
    clinical_score NUMERIC(6,2) DEFAULT 0,     -- out of 20
    academic_score NUMERIC(6,2) DEFAULT 0,     -- out of 20
    total_score NUMERIC(6,2) DEFAULT 0,        -- out of 100
    domain_detail JSONB DEFAULT '{}'::jsonb,   -- full auditable breakdown
    is_eligible BOOLEAN DEFAULT false,
    deficient_domains JSONB DEFAULT '[]'::jsonb,
    computed_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_competency_snapshot UNIQUE (rotation_id, student_id)
);

CREATE INDEX IF NOT EXISTS idx_competency_snapshots_rotation ON competency_snapshots(rotation_id);

CREATE TABLE IF NOT EXISTS sign_out_records (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    status VARCHAR(20) NOT NULL,               -- signed_out | withheld
    total_score NUMERIC(6,2),
    domain_detail JSONB,
    certificate_serial VARCHAR(80),
    signed_by_user_id UUID,
    signed_by_name VARCHAR(200),
    remarks TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_sign_out UNIQUE (rotation_id, student_id)
);

-- ============================================================================
-- 8. AWARDS, HALL OF FAME (End-of-rotation ceremony)
-- ============================================================================

CREATE TABLE IF NOT EXISTS rotation_awards (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    award_code VARCHAR(80) NOT NULL,
    award_name VARCHAR(200) NOT NULL,
    recipient_type VARCHAR(20) NOT NULL,       -- student | group
    student_id UUID REFERENCES students(id) ON DELETE CASCADE,
    group_id UUID REFERENCES rotation_groups(id) ON DELETE CASCADE,
    recipient_name VARCHAR(250),
    score NUMERIC(7,2),
    citation TEXT,
    display_order INTEGER DEFAULT 0,
    awarded_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_rotation_awards_rotation ON rotation_awards(rotation_id);

CREATE TABLE IF NOT EXISTS hall_of_fame (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID NOT NULL REFERENCES rotations(id) ON DELETE CASCADE,
    rotation_name VARCHAR(200),
    academic_session VARCHAR(40),
    specialty VARCHAR(150),
    group_code VARCHAR(40),
    group_name VARCHAR(80),
    total_score NUMERIC(7,2),
    member_count INTEGER,
    recorded_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_hall_of_fame_rotation UNIQUE (rotation_id)
);

-- ============================================================================
-- 9. AUDIT TRAIL FOR ASSESSMENTS
--    Every score written/changed is recorded immutably for academic governance.
-- ============================================================================

CREATE TABLE IF NOT EXISTS assessment_audit_log (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    rotation_id UUID,
    student_id UUID,
    entity_type VARCHAR(50) NOT NULL,          -- competency_assessment | sign_out | awards | groups | seminars
    entity_id UUID,
    action VARCHAR(50) NOT NULL,               -- create | update | delete | compute
    actor_user_id UUID,
    actor_name VARCHAR(200),
    actor_role VARCHAR(40),
    payload JSONB,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_assessment_audit_student ON assessment_audit_log(student_id);
CREATE INDEX IF NOT EXISTS idx_assessment_audit_rotation ON assessment_audit_log(rotation_id);
CREATE INDEX IF NOT EXISTS idx_assessment_audit_created ON assessment_audit_log(created_at DESC);

-- ============================================================================
-- 10. MARKER — used by the API to detect that this migration has been applied
-- ============================================================================

CREATE TABLE IF NOT EXISTS cbme_schema_version (
    version INTEGER PRIMARY KEY,
    applied_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO cbme_schema_version (version) VALUES (1) ON CONFLICT (version) DO NOTHING;

-- ============================================================================
-- END OF MIGRATION
-- ============================================================================
`;

// Attendance is recorded for every posting activity named in the CBME
// framework, not just clinic/theatre/ward rounds.
const ENUM_EXTENSIONS = [
  "ALTER TYPE attendance_type ADD VALUE IF NOT EXISTS 'emergency_call'",
  "ALTER TYPE attendance_type ADD VALUE IF NOT EXISTS 'grand_round'",
  "ALTER TYPE attendance_type ADD VALUE IF NOT EXISTS 'departmental_meeting'",
  "ALTER TYPE attendance_type ADD VALUE IF NOT EXISTS 'seminar'",
];

module.exports = { DDL, ENUM_EXTENSIONS };
