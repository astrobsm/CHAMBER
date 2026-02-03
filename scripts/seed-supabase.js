// Seed Supabase Database with all questions and articles
const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');

const DATABASE_URL = 'postgresql://postgres.nznytmaujhmqpygxgkgf:fBfL11Y3qQ5JZF29@aws-1-eu-west-1.pooler.supabase.com:5432/postgres';

const pool = new Pool({
  connectionString: DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});

async function runSeedFiles() {
  const seedDir = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');
  
  // Get all SQL files and sort them
  const files = fs.readdirSync(seedDir)
    .filter(f => f.endsWith('.sql'))
    .sort((a, b) => {
      // Extract number prefix for sorting
      const numA = parseInt(a.split('_')[0]) || 0;
      const numB = parseInt(b.split('_')[0]) || 0;
      return numA - numB;
    });
  
  console.log(`Found ${files.length} seed files to process`);
  
  let successCount = 0;
  let errorCount = 0;
  const errors = [];
  
  for (const file of files) {
    const filePath = path.join(seedDir, file);
    try {
      const sql = fs.readFileSync(filePath, 'utf8');
      
      // Skip empty files
      if (!sql.trim()) {
        console.log(`⏭️  Skipping empty file: ${file}`);
        continue;
      }
      
      await pool.query(sql);
      successCount++;
      console.log(`✅ ${file}`);
    } catch (error) {
      errorCount++;
      errors.push({ file, error: error.message });
      console.log(`❌ ${file}: ${error.message.substring(0, 100)}`);
    }
  }
  
  console.log('\n========== SUMMARY ==========');
  console.log(`✅ Successful: ${successCount}`);
  console.log(`❌ Failed: ${errorCount}`);
  
  if (errors.length > 0) {
    console.log('\nFailed files:');
    errors.forEach(e => console.log(`  - ${e.file}: ${e.error.substring(0, 80)}`));
  }
  
  // Check counts
  try {
    const questionCount = await pool.query('SELECT COUNT(*) FROM questions');
    const articleCount = await pool.query('SELECT COUNT(*) FROM cme_articles');
    const rotationCount = await pool.query('SELECT COUNT(*) FROM rotations');
    const topicCount = await pool.query('SELECT COUNT(*) FROM topics');
    
    console.log('\n========== DATABASE COUNTS ==========');
    console.log(`Questions: ${questionCount.rows[0].count}`);
    console.log(`CME Articles: ${articleCount.rows[0].count}`);
    console.log(`Rotations: ${rotationCount.rows[0].count}`);
    console.log(`Topics: ${topicCount.rows[0].count}`);
  } catch (e) {
    console.log('\nCould not get counts:', e.message);
  }
  
  await pool.end();
}

// First run the schema
async function runSchema() {
  const schemaPath = path.join(__dirname, '..', 'packages', 'backend', 'database', 'schema.sql');
  
  if (fs.existsSync(schemaPath)) {
    console.log('Running schema.sql first...\n');
    const sql = fs.readFileSync(schemaPath, 'utf8');
    try {
      await pool.query(sql);
      console.log('✅ Schema created successfully\n');
    } catch (error) {
      console.log('⚠️  Schema error (may already exist):', error.message.substring(0, 100), '\n');
    }
  }
}

async function main() {
  console.log('🚀 Starting Supabase database seeding...\n');
  
  try {
    // Test connection
    const result = await pool.query('SELECT NOW()');
    console.log('✅ Connected to Supabase at:', result.rows[0].now, '\n');
    
    // Run schema first
    await runSchema();
    
    // Then run all seed files
    await runSeedFiles();
    
    console.log('\n🎉 Database seeding complete!');
  } catch (error) {
    console.error('Fatal error:', error.message);
    process.exit(1);
  }
}

main();
