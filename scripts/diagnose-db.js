/**
 * Detailed S2 diagnostics + identify all remaining failures
 */
const { Pool } = require('pg');
const path = require('path');
const fs = require('fs');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
});

async function diagnose() {
  // 1. Check S2 topics
  // Check topics table columns first
  const cols = await pool.query(`
    SELECT column_name FROM information_schema.columns 
    WHERE table_name = 'topics' AND table_schema = 'public' 
    ORDER BY ordinal_position
  `);
  console.log('=== Topics table columns ===');
  console.log(cols.rows.map(r => r.column_name).join(', '));
  
  const s2Topics = await pool.query(`
    SELECT id, name FROM topics 
    WHERE category_id = 'a0000002-0000-0000-0000-000000000002' 
    ORDER BY name LIMIT 10
  `);
  console.log('=== S2 Topics (first 10) ===');
  console.log(`Total S2 topics: ${s2Topics.rowCount}`);
  s2Topics.rows.forEach(r => console.log(`  ${r.id} | ${r.name}`));
  
  // 2. Check for c2000XXX topics specifically
  const c2Topics = await pool.query(`
    SELECT COUNT(*) as cnt FROM topics WHERE id::text LIKE 'c2000%'
  `);
  console.log(`\nTopics with c2000xxx IDs: ${c2Topics.rows[0].cnt}`);
  
  // 3. Check all rotations
  const rots = await pool.query('SELECT * FROM rotations ORDER BY start_date');
  console.log('\n=== Rotations ===');
  rots.rows.forEach(r => console.log(`  ${r.id} | cat: ${r.category_id} | ${r.name}`));
  
  // 4. Check what seed files would fail right now
  const SEEDS_DIR = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');
  const failingFiles = [];
  const testFiles = fs.readdirSync(SEEDS_DIR)
    .filter(f => f.endsWith('.sql'))
    .sort((a, b) => {
      const na = parseInt(a.match(/^(\d+)/)?.[1] || '999999');
      const nb = parseInt(b.match(/^(\d+)/)?.[1] || '999999');
      return na - nb;
    });
  
  // Test a sample of S2 qbank files
  const s2QbankSample = testFiles.filter(f => f.startsWith('40') && f.includes('surgery2_qbank'));
  console.log(`\n=== Testing ${s2QbankSample.length} S2 qbank files ===`);
  
  let s2Pass = 0, s2Fail = 0;
  for (const file of s2QbankSample.slice(0, 3)) {
    const sql = fs.readFileSync(path.join(SEEDS_DIR, file), 'utf8');
    try {
      await pool.query(sql);
      s2Pass++;
      console.log(`  ✅ ${file}`);
    } catch (e) {
      s2Fail++;
      console.log(`  ❌ ${file}: ${e.message.substring(0, 120)}`);
    }
  }
  console.log(`S2 qbank sample: ${s2Pass} pass, ${s2Fail} fail`);
  
  // 5. Check S2 article files
  const s2ArticleSample = testFiles.filter(f => f.includes('surgery2_article') && !f.includes('qbank'));
  console.log(`\n=== S2 article files count: ${s2ArticleSample.length} ===`);
  for (const file of s2ArticleSample.slice(0, 3)) {
    const sql = fs.readFileSync(path.join(SEEDS_DIR, file), 'utf8');
    try {
      await pool.query(sql);
      s2Pass++;
      console.log(`  ✅ ${file}`);
    } catch (e) {
      console.log(`  ❌ ${file}: ${e.message.substring(0, 150)}`);
    }
  }
  
  // 6. Check S4 CME/article files
  const s4Files = testFiles.filter(f => f.includes('s4_cme') || f.includes('s4_article') || f.includes('surgery4_article'));
  console.log(`\n=== S4 CME/article files count: ${s4Files.length} ===`);
  for (const file of s4Files.slice(0, 3)) {
    const sql = fs.readFileSync(path.join(SEEDS_DIR, file), 'utf8');
    try {
      await pool.query(sql);
      console.log(`  ✅ ${file}`);
    } catch (e) {
      console.log(`  ❌ ${file}: ${e.message.substring(0, 150)}`);
    }
  }
  
  // 7. Check S1 CME articles count
  const s1Articles = await pool.query(`
    SELECT COUNT(*) as cnt FROM cme_articles 
    WHERE category_id = 'a0000001-0000-0000-0000-000000000001'
  `);
  console.log(`\nS1 CME articles: ${s1Articles.rows[0].cnt}`);
  
  const s4Articles = await pool.query(`
    SELECT COUNT(*) as cnt FROM cme_articles 
    WHERE category_id = 'a0000004-0000-0000-0000-000000000004'
  `);
  console.log(`S4 CME articles: ${s4Articles.rows[0].cnt}`);
  
  const s2Articles = await pool.query(`
    SELECT COUNT(*) as cnt FROM cme_articles 
    WHERE category_id = 'a0000002-0000-0000-0000-000000000002'
  `);
  console.log(`S2 CME articles: ${s2Articles.rows[0].cnt}`);
  
  await pool.end();
}

diagnose().catch(e => { console.error(e); process.exit(1); });
