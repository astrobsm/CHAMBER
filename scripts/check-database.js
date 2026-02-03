const { Pool } = require('pg');
require('dotenv').config();

// Database configuration - uses DATABASE_URL from .env file
const DATABASE_URL = process.env.DATABASE_URL;

if (!DATABASE_URL) {
  console.error('ERROR: DATABASE_URL not found in environment variables');
  console.error('Please set DATABASE_URL in your .env file');
  process.exit(1);
}

const pool = new Pool({
  connectionString: DATABASE_URL,
  ssl: {
    rejectUnauthorized: false
  }
});

async function checkDatabase() {
  try {
    console.log('Connecting to DigitalOcean PostgreSQL...\n');
    
    // Test connection
    const result = await pool.query('SELECT NOW()');
    console.log('✅ Connected successfully at:', result.rows[0].now);
    
    // Check tables
    console.log('\n📋 CHECKING DATABASE TABLES:\n');
    
    const tablesQuery = `
      SELECT table_name 
      FROM information_schema.tables 
      WHERE table_schema = 'public' 
      ORDER BY table_name;
    `;
    const tables = await pool.query(tablesQuery);
    console.log('Tables in database:');
    tables.rows.forEach(t => console.log('  - ' + t.table_name));
    
    // Check questions count
    console.log('\n📝 CHECKING QUESTIONS:\n');
    try {
      const questionsCount = await pool.query('SELECT COUNT(*) FROM questions');
      console.log('Total questions:', questionsCount.rows[0].count);
      
      // Questions by rotation
      const questionsByRotation = await pool.query(`
        SELECT rotation_id, COUNT(*) as count 
        FROM questions 
        GROUP BY rotation_id 
        ORDER BY rotation_id
      `);
      console.log('\nQuestions by rotation:');
      questionsByRotation.rows.forEach(r => console.log(`  Rotation ${r.rotation_id}: ${r.count} questions`));
    } catch (e) {
      console.log('❌ Questions table not found or error:', e.message);
    }
    
    // Check CME articles
    console.log('\n📚 CHECKING CME ARTICLES:\n');
    try {
      const articlesCount = await pool.query('SELECT COUNT(*) FROM cme_articles');
      console.log('Total CME articles:', articlesCount.rows[0].count);
      
      // Articles by rotation
      const articlesByRotation = await pool.query(`
        SELECT rotation_id, COUNT(*) as count 
        FROM cme_articles 
        GROUP BY rotation_id 
        ORDER BY rotation_id
      `);
      console.log('\nArticles by rotation:');
      articlesByRotation.rows.forEach(r => console.log(`  Rotation ${r.rotation_id}: ${r.count} articles`));
    } catch (e) {
      console.log('❌ CME articles table not found or error:', e.message);
    }
    
    // Check rotations
    console.log('\n🔄 CHECKING ROTATIONS:\n');
    try {
      const rotations = await pool.query('SELECT * FROM rotations ORDER BY id');
      console.log('Rotations:');
      rotations.rows.forEach(r => console.log(`  ${r.id}: ${r.name || r.title}`));
    } catch (e) {
      console.log('❌ Rotations table not found or error:', e.message);
    }
    
    // Check topics
    console.log('\n📖 CHECKING TOPICS:\n');
    try {
      const topicsCount = await pool.query('SELECT COUNT(*) FROM topics');
      console.log('Total topics:', topicsCount.rows[0].count);
    } catch (e) {
      console.log('❌ Topics table not found or error:', e.message);
    }
    
    // Check users
    console.log('\n👤 CHECKING USERS:\n');
    try {
      const usersCount = await pool.query('SELECT COUNT(*) FROM users');
      console.log('Total users:', usersCount.rows[0].count);
      
      const adminUsers = await pool.query("SELECT email FROM users WHERE role = 'admin' OR is_admin = true LIMIT 5");
      if (adminUsers.rows.length > 0) {
        console.log('\nAdmin users:');
        adminUsers.rows.forEach(u => console.log('  - ' + u.email));
      }
    } catch (e) {
      console.log('❌ Users table not found or error:', e.message);
    }
    
  } catch (err) {
    console.error('❌ Database connection error:', err.message);
  } finally {
    await pool.end();
  }
}

checkDatabase();
