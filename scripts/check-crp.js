/**
 * Check CRP schema state and S2 topics
 */
const { Pool } = require('pg');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
});

async function check() {
  // Set search path explicitly
  await pool.query('SET search_path TO crp, public');
  
  // 1. Check crp.topics columns
  const cols = await pool.query(`
    SELECT column_name, data_type FROM information_schema.columns 
    WHERE table_name = 'topics' AND table_schema = 'crp' ORDER BY ordinal_position
  `);
  console.log('=== crp.topics columns ===');
  cols.rows.forEach(r => console.log(`  ${r.column_name} (${r.data_type})`));
  
  // 2. S2 topics count
  const s2t = await pool.query(`SELECT COUNT(*) as cnt FROM crp.topics WHERE category_id = 'a0000002-0000-0000-0000-000000000002'`);
  console.log(`\nS2 topics in crp: ${s2t.rows[0].cnt}`);
  
  // 3. All topics by category
  const allT = await pool.query(`
    SELECT rc.code, rc.name, COUNT(t.id) as cnt 
    FROM crp.topics t JOIN crp.rotation_categories rc ON t.category_id = rc.id 
    GROUP BY rc.code, rc.name ORDER BY rc.code
  `);
  console.log('\n=== Topics by category ===');
  allT.rows.forEach(r => console.log(`  ${r.code}: ${r.cnt}`));
  
  // 4. Questions by category
  const allQ = await pool.query(`
    SELECT rc.code, rc.name, COUNT(q.id) as cnt 
    FROM crp.questions q JOIN crp.rotation_categories rc ON q.category_id = rc.id 
    GROUP BY rc.code, rc.name ORDER BY rc.code
  `);
  console.log('\n=== Questions by category ===');
  allQ.rows.forEach(r => console.log(`  ${r.code}: ${r.cnt}`));
  
  // 5. CME articles by category
  const allA = await pool.query(`
    SELECT rc.code, COUNT(ca.id) as cnt 
    FROM crp.cme_articles ca JOIN crp.rotation_categories rc ON ca.category_id = rc.id 
    GROUP BY rc.code ORDER BY rc.code
  `);
  console.log('\n=== CME Articles by category ===');
  allA.rows.forEach(r => console.log(`  ${r.code}: ${r.cnt}`));
  
  // 6. Check for c2000 topic IDs
  const c2 = await pool.query(`SELECT id, name FROM crp.topics WHERE id::text LIKE 'c2000%' LIMIT 5`);
  console.log(`\n=== c2000xxx topics: ${c2.rowCount} ===`);
  c2.rows.forEach(r => console.log(`  ${r.id} | ${r.name}`));
  
  // 7. Article sections + self-assessments
  const sec = await pool.query('SELECT COUNT(*) as cnt FROM crp.article_sections');
  const sa = await pool.query('SELECT COUNT(*) as cnt FROM crp.article_self_assessments');
  console.log(`\nArticle sections: ${sec.rows[0].cnt}`);
  console.log(`Self-assessments: ${sa.rows[0].cnt}`);
  
  // 8. Rotations
  const rots = await pool.query('SELECT id, name, category_id FROM crp.rotations');
  console.log(`\n=== Rotations (${rots.rowCount}) ===`);
  rots.rows.forEach(r => console.log(`  ${r.name} (cat: ${r.category_id})`));
  
  await pool.end();
}

check().catch(e => { console.error(e); process.exit(1); });
