const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');

process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';
const connStr = process.env.DATABASE_URL;
const pool = new Pool({ connectionString: connStr, ssl: { rejectUnauthorized: false } });

async function run() {
  try {
    console.log('=== CME Database Migration (v2) ===\n');

    // 1. Ensure uuid-ossp extension
    await pool.query('CREATE EXTENSION IF NOT EXISTS "uuid-ossp"');
    console.log('uuid-ossp extension OK');

    // 2. Create enums if missing (using DO $$ blocks to handle duplicates)
    const enums = [
      ["student_level", "'surgery_1', 'surgery_2', 'surgery_3', 'surgery_4'"],
      ["clearance_status", "'active', 'pending_clearance', 'cleared', 'extended'"],
      ["article_section_type", "'introduction', 'learning_objectives', 'content', 'key_points', 'clinical_pearls', 'references', 'self_assessment'"],
    ];
    for (const [name, vals] of enums) {
      await pool.query(`DO $$ BEGIN CREATE TYPE ${name} AS ENUM (${vals}); EXCEPTION WHEN duplicate_object THEN null; END $$;`);
    }
    // Check if difficulty_level exists - if not, create it
    await pool.query(`DO $$ BEGIN CREATE TYPE difficulty_level AS ENUM ('easy', 'medium', 'hard'); EXCEPTION WHEN duplicate_object THEN null; END $$;`);
    // Check if sync_status exists - if not, create it
    await pool.query(`DO $$ BEGIN CREATE TYPE sync_status AS ENUM ('synced', 'pending', 'failed'); EXCEPTION WHEN duplicate_object THEN null; END $$;`);
    console.log('Enums OK');

    // 3. Create rotation_categories (NO FK to other tables)
    await pool.query(`
      CREATE TABLE IF NOT EXISTS rotation_categories (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        name VARCHAR(100) NOT NULL,
        code VARCHAR(20) UNIQUE NOT NULL,
        level student_level NOT NULL DEFAULT 'surgery_1',
        description TEXT,
        duration_weeks INTEGER NOT NULL DEFAULT 6,
        is_active BOOLEAN DEFAULT true,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      )
    `);
    console.log('rotation_categories OK');

    // Seed rotation categories
    await pool.query(`
      INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks) VALUES
      ('a0000001-0000-0000-0000-000000000001', 'General Surgery', 'GEN', 'surgery_1', 'General Surgery rotation', 6),
      ('a0000002-0000-0000-0000-000000000002', 'Orthopaedics', 'ORT', 'surgery_1', 'Orthopaedic Surgery rotation', 6),
      ('a0000003-0000-0000-0000-000000000003', 'Surgery 1', 'SUR1', 'surgery_1', 'Surgery 1 rotation', 6),
      ('a0000004-0000-0000-0000-000000000004', 'Surgery 2', 'SUR2', 'surgery_2', 'Surgery 2 rotation', 6)
      ON CONFLICT (id) DO NOTHING
    `);
    console.log('rotation_categories seeded');

    // 4. Create cme_articles - NO FK to topics (topics has integer IDs, we use UUID)
    await pool.query(`
      CREATE TABLE IF NOT EXISTS cme_articles (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        topic_id UUID,
        category_id UUID REFERENCES rotation_categories(id),
        title VARCHAR(500) NOT NULL,
        subtitle VARCHAR(500),
        abstract TEXT,
        authors TEXT,
        cme_credits DECIMAL(3,1) DEFAULT 1.0,
        estimated_reading_minutes INTEGER DEFAULT 30,
        difficulty_level difficulty_level DEFAULT 'medium',
        version INTEGER DEFAULT 1,
        is_published BOOLEAN DEFAULT true,
        publish_date DATE DEFAULT CURRENT_DATE,
        review_date DATE,
        keywords TEXT[],
        cover_image_url VARCHAR(500),
        created_by INTEGER,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      )
    `);
    console.log('cme_articles OK');

    // 5. Create article_sections
    await pool.query(`
      CREATE TABLE IF NOT EXISTS article_sections (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        article_id UUID NOT NULL REFERENCES cme_articles(id) ON DELETE CASCADE,
        section_type article_section_type NOT NULL,
        section_order INTEGER NOT NULL,
        title VARCHAR(255),
        content TEXT NOT NULL,
        is_expandable BOOLEAN DEFAULT false,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      )
    `);
    console.log('article_sections OK');

    // 6. Create article_references
    await pool.query(`
      CREATE TABLE IF NOT EXISTS article_references (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        article_id UUID NOT NULL REFERENCES cme_articles(id) ON DELETE CASCADE,
        reference_number INTEGER NOT NULL,
        citation TEXT NOT NULL,
        doi VARCHAR(255),
        pubmed_id VARCHAR(50),
        url VARCHAR(500),
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      )
    `);
    console.log('article_references OK');

    // 7. Create article_self_assessments
    await pool.query(`
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
        explanation TEXT NOT NULL,
        reference_numbers INTEGER[],
        difficulty difficulty_level DEFAULT 'medium',
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT valid_correct_option CHECK (correct_option IN ('A', 'B', 'C', 'D', 'E'))
      )
    `);
    console.log('article_self_assessments OK');

    // 8. Create user_study_progress - NO FK to students (UUID mismatch)
    await pool.query(`
      CREATE TABLE IF NOT EXISTS user_study_progress (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        student_id UUID,
        article_id UUID REFERENCES cme_articles(id) ON DELETE CASCADE,
        started_at TIMESTAMP WITH TIME ZONE,
        last_accessed_at TIMESTAMP WITH TIME ZONE,
        reading_completed BOOLEAN DEFAULT false,
        reading_completed_at TIMESTAMP WITH TIME ZONE,
        reading_progress_percent DECIMAL(5,2) DEFAULT 0,
        time_spent_seconds INTEGER DEFAULT 0,
        current_section_id UUID,
        assessment_started_at TIMESTAMP WITH TIME ZONE,
        assessment_completed BOOLEAN DEFAULT false,
        assessment_completed_at TIMESTAMP WITH TIME ZONE,
        assessment_score DECIMAL(5,2),
        assessment_attempts INTEGER DEFAULT 0,
        is_fully_completed BOOLEAN DEFAULT false,
        cme_credits_earned DECIMAL(3,1) DEFAULT 0,
        certificate_generated BOOLEAN DEFAULT false,
        certificate_url VARCHAR(500),
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      )
    `);
    console.log('user_study_progress OK');

    // 9. Create study_session_logs
    await pool.query(`
      CREATE TABLE IF NOT EXISTS study_session_logs (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        student_id UUID,
        article_id UUID REFERENCES cme_articles(id),
        session_start TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        session_end TIMESTAMP WITH TIME ZONE,
        duration_seconds INTEGER,
        sections_viewed UUID[],
        device_info JSONB,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      )
    `);
    console.log('study_session_logs OK');

    // 10. Create indexes
    const indexes = [
      'CREATE INDEX IF NOT EXISTS idx_cme_articles_topic ON cme_articles(topic_id)',
      'CREATE INDEX IF NOT EXISTS idx_cme_articles_category ON cme_articles(category_id)',
      'CREATE INDEX IF NOT EXISTS idx_article_sections_article ON article_sections(article_id)',
      'CREATE INDEX IF NOT EXISTS idx_article_assessments_article ON article_self_assessments(article_id)',
      'CREATE INDEX IF NOT EXISTS idx_user_study_progress_student ON user_study_progress(student_id)',
      'CREATE INDEX IF NOT EXISTS idx_user_study_progress_article ON user_study_progress(article_id)',
    ];
    for (const idx of indexes) {
      try { await pool.query(idx); } catch(e) { /* ignore */ }
    }
    console.log('Indexes OK');

    // 11. Verify
    const count = await pool.query('SELECT COUNT(*) FROM cme_articles');
    console.log('\ncme_articles count:', count.rows[0].count);

    console.log('\n=== Migration complete! Now seeding articles... ===\n');

    // 12. Seed articles from SQL files
    const seedDir = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');
    const seedFiles = fs.readdirSync(seedDir)
      .filter(f => f.match(/^1[0-1]\d_cme_article/))
      .sort();
    
    console.log('Found', seedFiles.length, 'CME seed files');
    
    for (const file of seedFiles) {
      try {
        const sql = fs.readFileSync(path.join(seedDir, file), 'utf8');
        await pool.query(sql);
        console.log('  Seeded:', file);
      } catch (e) {
        if (e.message.includes('duplicate key') || e.message.includes('already exists')) {
          console.log('  Skipped (already exists):', file);
        } else {
          console.error('  FAILED:', file, '-', e.message);
        }
      }
    }

    // Final count
    const finalCount = await pool.query('SELECT COUNT(*) FROM cme_articles');
    const sectionsCount = await pool.query('SELECT COUNT(*) FROM article_sections');
    const assessCount = await pool.query('SELECT COUNT(*) FROM article_self_assessments');
    const refsCount = await pool.query('SELECT COUNT(*) FROM article_references');
    console.log('\n=== Final Counts ===');
    console.log('Articles:', finalCount.rows[0].count);
    console.log('Sections:', sectionsCount.rows[0].count);
    console.log('Self-assessments:', assessCount.rows[0].count);
    console.log('References:', refsCount.rows[0].count);
    console.log('\nDone!');

  } catch (e) {
    console.error('Error:', e.message);
    console.error(e.stack);
  } finally {
    await pool.end();
  }
}

run();
