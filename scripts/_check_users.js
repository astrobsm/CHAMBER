const { Pool } = require('pg');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});

async function check() {
  try {
    const r = await pool.query("SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'users' ORDER BY ordinal_position");
    console.log('USERS TABLE COLUMNS:');
    r.rows.forEach(c => console.log('  ', c.column_name, '-', c.data_type));
  } catch(e) {
    console.error('ERROR:', e.message);
  }
  await pool.end();
}
check();
