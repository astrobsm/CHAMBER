/**
 * Check actual vs expected schema for critical CRP tables
 */
const { Pool } = require('pg');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
});

async function checkSchemas() {
  const tables = ['rotation_categories', 'rotations', 'topics', 'questions', 'cme_articles', 
                   'article_sections', 'article_self_assessments', 'tests', 'users',
                   'students', 'assessors', 'attendance_sessions'];
  
  for (const table of tables) {
    const r = await pool.query(`
      SELECT column_name, data_type, is_nullable 
      FROM information_schema.columns 
      WHERE table_name = $1 AND table_schema = 'public' 
      ORDER BY ordinal_position
    `, [table]);
    
    if (r.rowCount === 0) {
      console.log(`\n=== ${table}: NOT FOUND ===`);
    } else {
      console.log(`\n=== ${table} (${r.rowCount} columns) ===`);
      r.rows.forEach(c => console.log(`  ${c.column_name} (${c.data_type}, ${c.is_nullable === 'YES' ? 'nullable' : 'not null'})`));
    }
  }
  
  // Check if CRP enums exist
  const enums = await pool.query(`
    SELECT t.typname, array_agg(e.enumlabel ORDER BY e.enumsortorder) as values
    FROM pg_type t JOIN pg_enum e ON t.oid = e.enumtypid 
    WHERE t.typname IN ('user_role', 'student_level', 'attendance_type', 'test_type', 
                         'difficulty_level', 'cognitive_level', 'cme_content_type')
    GROUP BY t.typname
  `);
  console.log('\n=== CRP Enums ===');
  enums.rows.forEach(r => console.log(`  ${r.typname}: ${r.values.join(', ')}`));
  
  if (enums.rowCount === 0) {
    console.log('  NO CRP enums found!');
  }
  
  // Check foreign key constraints on questions
  console.log('\n=== Questions FK constraints ===');
  const fks = await pool.query(`
    SELECT tc.constraint_name, kcu.column_name, ccu.table_name AS foreign_table, ccu.column_name AS foreign_column
    FROM information_schema.table_constraints tc
    JOIN information_schema.key_column_usage kcu ON tc.constraint_name = kcu.constraint_name
    JOIN information_schema.constraint_column_usage ccu ON tc.constraint_name = ccu.constraint_name
    WHERE tc.table_name = 'questions' AND tc.constraint_type = 'FOREIGN KEY'
  `);
  fks.rows.forEach(r => console.log(`  ${r.column_name} -> ${r.foreign_table}(${r.foreign_column})`));
  
  await pool.end();
}

checkSchemas().catch(e => { console.error(e); process.exit(1); });
