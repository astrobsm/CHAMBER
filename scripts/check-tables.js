const { Pool } = require('pg');
const pool = new Pool({
  connectionString: 'postgresql://postgres.nznytmaujhmqpygxgkgf:fBfL11Y3qQ5JZF29@aws-1-eu-west-1.pooler.supabase.com:5432/postgres',
  ssl: { rejectUnauthorized: false }
});

async function listTables() {
  const result = await pool.query(`
    SELECT table_name 
    FROM information_schema.tables 
    WHERE table_schema = 'public' 
    ORDER BY table_name
  `);
  console.log('Tables in database:');
  result.rows.forEach(r => console.log('  - ' + r.table_name));
  
  // Check rotations structure
  const rotCols = await pool.query(`
    SELECT column_name, data_type 
    FROM information_schema.columns 
    WHERE table_name = 'rotations'
    ORDER BY ordinal_position
  `);
  console.log('\nRotations table columns:');
  rotCols.rows.forEach(r => console.log(`  - ${r.column_name} (${r.data_type})`));
  
  await pool.end();
}

listTables();
