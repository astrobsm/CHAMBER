const { Pool } = require('pg');
process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';
const pool = new Pool({ 
  connectionString: process.env.DATABASE_URL, 
  ssl: { rejectUnauthorized: false } 
});

async function run() {
  try {
    // Check existing CME tables
    const tables = await pool.query(
      "SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND (table_name LIKE '%cme%' OR table_name LIKE '%article%' OR table_name LIKE '%study%' OR table_name LIKE '%assessment%') ORDER BY table_name"
    );
    console.log('CME-related tables found:', tables.rows.map(x => x.table_name));

    // Check if rotation_categories exists (needed for cme_articles FK)
    const rc = await pool.query(
      "SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND table_name='rotation_categories'"
    );
    console.log('rotation_categories exists:', rc.rows.length > 0);

    // Check topics table
    const tp = await pool.query(
      "SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND table_name='topics'"
    );
    console.log('topics exists:', tp.rows.length > 0);

    // Check students table
    const st = await pool.query(
      "SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND table_name='students'"
    );
    console.log('students exists:', st.rows.length > 0);

    // Check users table
    const us = await pool.query(
      "SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND table_name='users'"
    );
    console.log('users exists:', us.rows.length > 0);

    // Check if uuid-ossp extension exists
    const ext = await pool.query(
      "SELECT * FROM pg_extension WHERE extname='uuid-ossp'"
    );
    console.log('uuid-ossp extension:', ext.rows.length > 0);

    // Check what types exist
    const types = await pool.query(
      "SELECT typname FROM pg_type WHERE typname IN ('difficulty_level', 'article_section_type', 'sync_status')"
    );
    console.log('Custom types:', types.rows.map(x => x.typname));

    // Check topics count and sample
    if (tp.rows.length > 0) {
      const topicCount = await pool.query('SELECT COUNT(*) FROM topics');
      console.log('Topics count:', topicCount.rows[0].count);
      const sampleTopics = await pool.query('SELECT id, name, category_id FROM topics LIMIT 3');
      console.log('Sample topics:', sampleTopics.rows);
    }

    // Check rotation_categories sample
    if (rc.rows.length > 0) {
      const rcSample = await pool.query('SELECT id, name FROM rotation_categories LIMIT 5');
      console.log('Rotation categories:', rcSample.rows);
    }

  } catch (e) {
    console.error('Error:', e.message);
  } finally {
    await pool.end();
  }
}

run();
