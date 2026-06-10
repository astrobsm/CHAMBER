process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});
pool.query(`SELECT tc.constraint_name, kcu.column_name, ccu.table_schema, ccu.table_name, ccu.column_name as ref_column
  FROM information_schema.table_constraints tc
  JOIN information_schema.key_column_usage kcu ON tc.constraint_name = kcu.constraint_name AND tc.table_schema = kcu.table_schema
  JOIN information_schema.constraint_column_usage ccu ON tc.constraint_name = ccu.constraint_name AND tc.table_schema = ccu.table_schema
  WHERE tc.table_schema = 'crp' AND tc.table_name = 'attendance_sessions' AND tc.constraint_type = 'FOREIGN KEY'`)
  .then(r => { r.rows.forEach(f => console.log(f.column_name, '->', f.table_schema+'.'+f.table_name+'('+f.ref_column+')')); pool.end(); })
  .catch(e => { console.error(e.message); pool.end(); });
