const { Pool } = require('pg');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});

pool.query("SELECT table_name FROM information_schema.tables WHERE table_schema='public' ORDER BY table_name")
  .then(r => {
    console.log('TABLES:', r.rows.length);
    r.rows.forEach(t => console.log(' -', t.table_name));
    pool.end();
  })
  .catch(e => {
    console.error('ERROR:', e.message);
    pool.end();
  });
