/**
 * Test running 300_surgery2_complete_setup.sql directly
 */
const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
});

async function test() {
  const client = await pool.connect();
  
  // Check search path
  const sp = await client.query('SHOW search_path');
  console.log('Search path:', sp.rows[0].search_path);
  
  const sqlFile = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds', '300_surgery2_complete_setup.sql');
  const sql = fs.readFileSync(sqlFile, 'utf8');
  
  console.log('\nRunning 300_surgery2_complete_setup.sql...');
  console.log('SQL length:', sql.length, 'chars');
  
  try {
    await client.query(sql);
    console.log('✅ Success!');
  } catch (e) {
    console.log('❌ Error:', e.message);
    console.log('Detail:', e.detail);
    console.log('Hint:', e.hint);
    console.log('Position:', e.position);
    
    // Try to find the problematic line
    if (e.position) {
      const pos = parseInt(e.position);
      const before = sql.substring(Math.max(0, pos - 100), pos);
      const after = sql.substring(pos, pos + 100);
      console.log('\n--- Around error position ---');
      console.log('...', before, '<<<HERE>>>', after, '...');
    }
  }
  
  // Check topics after attempt
  const topics = await client.query(`SELECT COUNT(*) as cnt FROM topics WHERE category_id = 'a0000002-0000-0000-0000-000000000002'`);
  console.log('\nS2 topics after attempt:', topics.rows[0].cnt);
  
  client.release();
  await pool.end();
}

test().catch(e => { console.error('Fatal:', e); process.exit(1); });
