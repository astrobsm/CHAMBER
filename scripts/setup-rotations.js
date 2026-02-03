// Add missing rotations and categories to Supabase
const { Pool } = require('pg');

const DATABASE_URL = 'postgresql://postgres.nznytmaujhmqpygxgkgf:fBfL11Y3qQ5JZF29@aws-1-eu-west-1.pooler.supabase.com:5432/postgres';

const pool = new Pool({
  connectionString: DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});

async function setupRotations() {
  console.log('Setting up rotations and categories...\n');
  
  // First check/create rotation_categories
  const categories = [
    { id: 'a0000001-0000-0000-0000-000000000001', name: 'Surgery 1', code: 'SURG1', level: 'surgery_1', description: 'Basic Surgery Principles and Procedures', duration_weeks: 6 },
    { id: 'a0000002-0000-0000-0000-000000000002', name: 'Surgery 2', code: 'SURG2', level: 'surgery_2', description: 'Abdominal and Gastrointestinal Surgery', duration_weeks: 6 },
    { id: 'a0000003-0000-0000-0000-000000000003', name: 'Surgery 3', code: 'SURG3', level: 'surgery_3', description: 'Specialty Surgery and Advanced Topics', duration_weeks: 8 },
    { id: 'a0000004-0000-0000-0000-000000000004', name: 'Surgery 4', code: 'SURG4', level: 'surgery_4', description: 'Oncology, Trauma and Neurosurgery', duration_weeks: 8 },
  ];
  
  for (const cat of categories) {
    try {
      await pool.query(`
        INSERT INTO rotation_categories (id, name, code, level, description, duration_weeks, is_active) 
        VALUES ($1, $2, $3, $4, $5, $6, true)
        ON CONFLICT (id) DO UPDATE SET name = $2, code = $3, level = $4, description = $5, duration_weeks = $6
      `, [cat.id, cat.name, cat.code, cat.level, cat.description, cat.duration_weeks]);
      console.log(`✅ Category: ${cat.name}`);
    } catch (e) {
      console.log(`⚠️ Category ${cat.name}: ${e.message.substring(0, 50)}`);
    }
  }
  
  // Create rotations
  const rotations = [
    { 
      id: 'c0000001-1111-0000-0000-000000000001', 
      category_id: 'a0000001-0000-0000-0000-000000000001', 
      name: 'Surgery 1 - September 2025',
      start_date: '2025-09-01',
      end_date: '2025-10-31'
    },
    { 
      id: 'c0000002-1111-0000-0000-000000000002', 
      category_id: 'a0000002-0000-0000-0000-000000000002', 
      name: 'Surgery 2 - November 2025',
      start_date: '2025-11-01',
      end_date: '2025-12-31'
    },
    { 
      id: 'c0000003-1111-0000-0000-000000000003', 
      category_id: 'a0000003-0000-0000-0000-000000000003', 
      name: 'Surgery 3 - January 2026',
      start_date: '2026-01-01',
      end_date: '2026-02-28'
    },
    { 
      id: 'c0000004-1111-0000-0000-000000000004', 
      category_id: 'a0000004-0000-0000-0000-000000000004', 
      name: 'Surgery 4 - March 2026',
      start_date: '2026-03-01',
      end_date: '2026-04-30'
    },
  ];
  
  for (const rot of rotations) {
    try {
      await pool.query(`
        INSERT INTO rotations (id, category_id, name, start_date, end_date, is_active)
        VALUES ($1, $2, $3, $4, $5, true)
        ON CONFLICT (id) DO UPDATE SET 
          category_id = $2, name = $3, start_date = $4, end_date = $5
      `, [rot.id, rot.category_id, rot.name, rot.start_date, rot.end_date]);
      console.log(`✅ Rotation: ${rot.name}`);
    } catch (e) {
      console.log(`⚠️ Rotation ${rot.name}: ${e.message.substring(0, 60)}`);
    }
  }
  
  // Check final counts
  console.log('\n========== CURRENT DATABASE COUNTS ==========');
  try {
    const cats = await pool.query('SELECT COUNT(*) FROM rotation_categories');
    const rots = await pool.query('SELECT COUNT(*) FROM rotations');
    const topics = await pool.query('SELECT COUNT(*) FROM topics');
    const questions = await pool.query('SELECT COUNT(*) FROM questions');
    const articles = await pool.query('SELECT COUNT(*) FROM cme_articles');
    
    console.log(`Categories: ${cats.rows[0].count}`);
    console.log(`Rotations: ${rots.rows[0].count}`);
    console.log(`Topics: ${topics.rows[0].count}`);
    console.log(`Questions: ${questions.rows[0].count}`);
    console.log(`CME Articles: ${articles.rows[0].count}`);
  } catch (e) {
    console.log('Error getting counts:', e.message);
  }
  
  await pool.end();
  console.log('\n✅ Setup complete!');
}

setupRotations();
