/**
 * Deep schema investigation
 */
const { Pool } = require('pg');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
});

async function investigate() {
  // 1. Check all schemas
  const schemas = await pool.query("SELECT schema_name FROM information_schema.schemata ORDER BY schema_name");
  console.log('=== All schemas ===');
  schemas.rows.forEach(r => console.log(`  ${r.schema_name}`));
  
  // 2. Find where rotation_categories lives
  const rcTable = await pool.query(`
    SELECT table_schema, table_name FROM information_schema.tables 
    WHERE table_name = 'rotation_categories' ORDER BY table_schema
  `);
  console.log('\n=== rotation_categories found in ===');
  rcTable.rows.forEach(r => console.log(`  schema: ${r.table_schema}`));
  
  // 3. Search path
  const sp = await pool.query('SHOW search_path');
  console.log('\n=== search_path ===');
  console.log(`  ${sp.rows[0].search_path}`);
  
  // 4. Check all CRP tables across all schemas
  const crpTables = ['rotation_categories', 'rotations', 'topics', 'questions', 
                      'cme_articles', 'article_sections', 'article_self_assessments',
                      'students', 'assessors'];
  
  console.log('\n=== CRP tables location ===');
  for (const t of crpTables) {
    const r = await pool.query(`
      SELECT table_schema FROM information_schema.tables WHERE table_name = $1
    `, [t]);
    const schemas = r.rows.map(x => x.table_schema).join(', ');
    console.log(`  ${t}: ${schemas || 'NOT FOUND'}`);
  }
  
  // 5. Try direct query
  console.log('\n=== Direct queries ===');
  try {
    const r = await pool.query('SELECT COUNT(*) as cnt FROM rotation_categories');
    console.log(`  rotation_categories count: ${r.rows[0].cnt}`);
  } catch (e) {
    console.log(`  rotation_categories: ${e.message.substring(0, 80)}`);
  }
  
  try {
    const r = await pool.query('SELECT COUNT(*) as cnt FROM cme_articles');
    console.log(`  cme_articles count: ${r.rows[0].cnt}`);
  } catch (e) {
    console.log(`  cme_articles: ${e.message.substring(0, 80)}`);
  }
  
  await pool.end();
}

investigate().catch(e => { console.error(e); process.exit(1); });
