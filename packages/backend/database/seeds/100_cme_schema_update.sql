-- ============================================================================
-- CME STUDY MODULE SCHEMA UPDATE
-- Comprehensive articles with self-assessment for each topic
-- ============================================================================

-- CME Article content type
DO $$ BEGIN
    CREATE TYPE article_section_type AS ENUM ('introduction', 'learning_objectives', 'content', 'key_points', 'clinical_pearls', 'references', 'self_assessment');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

-- ============================================================================
-- CME ARTICLES TABLE
-- ============================================================================
CREATE TABLE IF NOT EXISTS cme_articles (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    topic_id UUID NOT NULL REFERENCES topics(id),
    category_id UUID NOT NULL REFERENCES rotation_categories(id),
    title VARCHAR(500) NOT NULL,
    subtitle VARCHAR(500),
    abstract TEXT,
    authors TEXT, -- Article authors/contributors
    cme_credits DECIMAL(3,1) DEFAULT 1.0, -- CME credit hours
    estimated_reading_minutes INTEGER DEFAULT 30,
    difficulty_level difficulty_level DEFAULT 'medium',
    version INTEGER DEFAULT 1,
    is_published BOOLEAN DEFAULT true,
    publish_date DATE DEFAULT CURRENT_DATE,
    review_date DATE, -- When article should be reviewed
    keywords TEXT[], -- Searchable keywords
    cover_image_url VARCHAR(500),
    created_by UUID REFERENCES users(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- ARTICLE SECTIONS TABLE
-- ============================================================================
CREATE TABLE IF NOT EXISTS article_sections (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    article_id UUID NOT NULL REFERENCES cme_articles(id) ON DELETE CASCADE,
    section_type article_section_type NOT NULL,
    section_order INTEGER NOT NULL,
    title VARCHAR(255),
    content TEXT NOT NULL, -- Markdown or HTML content
    is_expandable BOOLEAN DEFAULT false, -- Collapsible sections
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- ARTICLE REFERENCES TABLE
-- ============================================================================
CREATE TABLE IF NOT EXISTS article_references (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    article_id UUID NOT NULL REFERENCES cme_articles(id) ON DELETE CASCADE,
    reference_number INTEGER NOT NULL,
    citation TEXT NOT NULL, -- Full citation
    doi VARCHAR(255), -- Digital Object Identifier
    pubmed_id VARCHAR(50),
    url VARCHAR(500),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- SELF-ASSESSMENT QUESTIONS TABLE
-- ============================================================================
CREATE TABLE IF NOT EXISTS article_self_assessments (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    article_id UUID NOT NULL REFERENCES cme_articles(id) ON DELETE CASCADE,
    question_number INTEGER NOT NULL,
    question_text TEXT NOT NULL,
    option_a TEXT NOT NULL,
    option_b TEXT NOT NULL,
    option_c TEXT NOT NULL,
    option_d TEXT NOT NULL,
    option_e TEXT,
    correct_option CHAR(1) NOT NULL,
    explanation TEXT NOT NULL, -- Detailed explanation
    reference_numbers INTEGER[], -- References supporting the answer
    difficulty difficulty_level DEFAULT 'medium',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT valid_correct_option CHECK (correct_option IN ('A', 'B', 'C', 'D', 'E'))
);

-- ============================================================================
-- USER STUDY PROGRESS TABLE
-- ============================================================================
CREATE TABLE IF NOT EXISTS user_study_progress (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    article_id UUID NOT NULL REFERENCES cme_articles(id) ON DELETE CASCADE,
    
    -- Reading progress
    started_at TIMESTAMP WITH TIME ZONE,
    last_accessed_at TIMESTAMP WITH TIME ZONE,
    reading_completed BOOLEAN DEFAULT false,
    reading_completed_at TIMESTAMP WITH TIME ZONE,
    reading_progress_percent DECIMAL(5,2) DEFAULT 0,
    time_spent_seconds INTEGER DEFAULT 0,
    current_section_id UUID REFERENCES article_sections(id),
    
    -- Self-assessment progress
    assessment_started_at TIMESTAMP WITH TIME ZONE,
    assessment_completed BOOLEAN DEFAULT false,
    assessment_completed_at TIMESTAMP WITH TIME ZONE,
    assessment_score DECIMAL(5,2),
    assessment_attempts INTEGER DEFAULT 0,
    
    -- Overall completion
    is_fully_completed BOOLEAN DEFAULT false,
    cme_credits_earned DECIMAL(3,1) DEFAULT 0,
    certificate_generated BOOLEAN DEFAULT false,
    certificate_url VARCHAR(500),
    
    -- Sync support
    sync_status sync_status DEFAULT 'synced',
    offline_id VARCHAR(100),
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_user_article_progress UNIQUE (student_id, article_id)
);

-- ============================================================================
-- USER ASSESSMENT ANSWERS TABLE (Track individual answers)
-- ============================================================================
CREATE TABLE IF NOT EXISTS user_assessment_answers (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    progress_id UUID NOT NULL REFERENCES user_study_progress(id) ON DELETE CASCADE,
    question_id UUID NOT NULL REFERENCES article_self_assessments(id) ON DELETE CASCADE,
    selected_option CHAR(1),
    is_correct BOOLEAN,
    time_spent_seconds INTEGER DEFAULT 0,
    answered_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    attempt_number INTEGER DEFAULT 1,
    CONSTRAINT unique_user_question_attempt UNIQUE (progress_id, question_id, attempt_number)
);

-- ============================================================================
-- STUDY SESSION LOGS (For analytics)
-- ============================================================================
CREATE TABLE IF NOT EXISTS study_session_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    student_id UUID NOT NULL REFERENCES students(id),
    article_id UUID NOT NULL REFERENCES cme_articles(id),
    session_start TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    session_end TIMESTAMP WITH TIME ZONE,
    duration_seconds INTEGER,
    sections_viewed UUID[], -- Array of section IDs viewed
    device_info JSONB,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- INDEXES FOR PERFORMANCE
-- ============================================================================
CREATE INDEX IF NOT EXISTS idx_cme_articles_topic ON cme_articles(topic_id);
CREATE INDEX IF NOT EXISTS idx_cme_articles_category ON cme_articles(category_id);
CREATE INDEX IF NOT EXISTS idx_article_sections_article ON article_sections(article_id);
CREATE INDEX IF NOT EXISTS idx_article_sections_order ON article_sections(article_id, section_order);
CREATE INDEX IF NOT EXISTS idx_article_assessments_article ON article_self_assessments(article_id);
CREATE INDEX IF NOT EXISTS idx_user_study_progress_student ON user_study_progress(student_id);
CREATE INDEX IF NOT EXISTS idx_user_study_progress_article ON user_study_progress(article_id);
CREATE INDEX IF NOT EXISTS idx_user_study_progress_completed ON user_study_progress(student_id, is_fully_completed);
CREATE INDEX IF NOT EXISTS idx_study_session_logs_student ON study_session_logs(student_id);

-- ============================================================================
-- VIEWS FOR REPORTING
-- ============================================================================
CREATE OR REPLACE VIEW v_student_study_summary AS
SELECT 
    s.id AS student_id,
    s.matriculation_number,
    s.first_name || ' ' || s.last_name AS student_name,
    COUNT(DISTINCT a.id) AS total_articles,
    COUNT(DISTINCT CASE WHEN usp.is_fully_completed THEN a.id END) AS completed_articles,
    COALESCE(SUM(usp.cme_credits_earned), 0) AS total_credits_earned,
    COALESCE(AVG(usp.assessment_score), 0) AS average_assessment_score,
    COALESCE(SUM(usp.time_spent_seconds) / 3600.0, 0) AS total_study_hours
FROM students s
CROSS JOIN cme_articles a
LEFT JOIN user_study_progress usp ON s.id = usp.student_id AND a.id = usp.article_id
GROUP BY s.id, s.matriculation_number, s.first_name, s.last_name;

-- Grant permissions
GRANT ALL ON ALL TABLES IN SCHEMA public TO postgres;
GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO postgres;
