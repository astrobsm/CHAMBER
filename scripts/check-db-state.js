/**
 * Quick database state check
 */
const { Pool } = require('pg');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
});

async function check() {
  console.log('DATABASE_URL:', process.env.DATABASE_URL?.replace(/:[^:@]+@/, ':****@'));
  
  try {
    const r0 = await pool.query("SELECT tablename FROM pg_tables WHERE schemaname='public' ORDER BY tablename");
    console.log('\nTables:', r0.rows.map(x => x.tablename).join(', '));
    
    const tables = ['rotation_categories', 'rotations', 'topics', 'questions', 'cme_articles', 
                     'article_sections', 'article_self_assessments', 'users', 'score_weights'];
    
    console.log('\n--- Row Counts ---');
    for (const t of tables) {
      try {
        const r = await pool.query(`SELECT COUNT(*) as cnt FROM ${t}`);
        console.log(`  ${t}: ${r.rows[0].cnt}`);
      } catch (e) {
        console.log(`  ${t}: TABLE NOT FOUND`);
      }
    }
    
    // Questions by category
    try {
      const r = await pool.query(`
        SELECT rc.name, rc.code, COUNT(q.id) as cnt 
        FROM questions q JOIN rotation_categories rc ON q.category_id = rc.id 
        GROUP BY rc.name, rc.code ORDER BY rc.code
      `);
      console.log('\n--- Questions by Surgery Level ---');
      r.rows.forEach(row => console.log(`  ${row.code}: ${row.name} = ${row.cnt}`));
    } catch (e) {
      console.log('No questions breakdown:', e.message.substring(0, 80));
    }
    
    // CME articles by category
    try {
      const r = await pool.query(`
        SELECT rc.name, rc.code, COUNT(ca.id) as cnt 
        FROM cme_articles ca JOIN rotation_categories rc ON ca.category_id = rc.id 
        GROUP BY rc.name, rc.code ORDER BY rc.code
      `);
      console.log('\n--- CME Articles by Surgery Level ---');
      r.rows.forEach(row => console.log(`  ${row.code}: ${row.name} = ${row.cnt}`));
    } catch (e) {
      console.log('No articles breakdown:', e.message.substring(0, 80));
    }
    
  } catch (e) {
    console.error('Error:', e.message);
  }
  
  await pool.end();
}

check();
