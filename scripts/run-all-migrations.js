/**
 * Complete Database Migration & Seeding Script
 * Clinical Rotation Platform - UNTH
 * 
 * Runs: 1) Schema creation  2) All seed files in numeric order
 * Supports: Supabase, DigitalOcean Managed DB, or local PostgreSQL
 * 
 * Usage: node scripts/run-all-migrations.js
 * 
 * Environment: Set DATABASE_URL or individual DB_* vars in .env
 */

const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

// Try loading from root .env as fallback
if (!process.env.DATABASE_URL) {
  require('dotenv').config({ path: path.join(__dirname, '..', '.env') });
}

// === DATABASE CONNECTION ===
const DATABASE_URL = process.env.DATABASE_URL || 
  'postgresql://postgres.nznytmaujhmqpygxgkgf:fBfL11Y3qQ5JZF29@aws-1-eu-west-1.pooler.supabase.com:5432/postgres';

const pool = new Pool({
  connectionString: DATABASE_URL,
  ssl: DATABASE_URL.includes('supabase') || DATABASE_URL.includes('digitalocean') 
    ? { rejectUnauthorized: false } 
    : false,
  max: 5,
  idleTimeoutMillis: 30000,
  connectionTimeoutMillis: 15000,
  statement_timeout: 120000, // 2 min per statement
});

// === PATHS ===
const SCHEMA_PATH = path.join(__dirname, '..', 'packages', 'backend', 'database', 'schema.sql');
const SEEDS_DIR = path.join(__dirname, '..', 'packages', 'backend', 'database', 'seeds');

// === HELPERS ===
function extractNumericPrefix(filename) {
  const match = filename.match(/^(\d+)/);
  return match ? parseInt(match[1], 10) : Infinity;
}

function formatDuration(ms) {
  if (ms < 1000) return `${ms}ms`;
  if (ms < 60000) return `${(ms / 1000).toFixed(1)}s`;
  return `${Math.floor(ms / 60000)}m ${Math.round((ms % 60000) / 1000)}s`;
}

// === MAIN MIGRATION RUNNER ===
async function runMigration() {
  const startTime = Date.now();
  
  console.log('╔══════════════════════════════════════════════════════════════╗');
  console.log('║     CLINICAL ROTATION PLATFORM - DATABASE MIGRATION        ║');
  console.log('║     University of Nigeria Teaching Hospital                 ║');
  console.log('╚══════════════════════════════════════════════════════════════╝');
  console.log();

  // 1. Test Connection
  console.log('🔌 Connecting to database...');
  try {
    const result = await pool.query('SELECT NOW() as now, current_database() as db');
    console.log(`✅ Connected to: ${result.rows[0].db}`);
    console.log(`   Server time: ${result.rows[0].now}`);
    console.log(`   URL: ${DATABASE_URL.replace(/:[^:@]+@/, ':****@')}`);
  } catch (err) {
    console.error('❌ Connection failed:', err.message);
    console.error('\nPlease check your DATABASE_URL in .env file');
    process.exit(1);
  }

  console.log();

  // 2. Run Schema
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  console.log('📋 STEP 1: Running Schema Migration...');
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');

  if (fs.existsSync(SCHEMA_PATH)) {
    const schemaSql = fs.readFileSync(SCHEMA_PATH, 'utf8');
    try {
      await pool.query(schemaSql);
      console.log('✅ Schema created/updated successfully');
    } catch (err) {
      // Many schema errors are just "already exists" which is fine
      if (err.message.includes('already exists')) {
        console.log('⚠️  Schema already exists (continuing with seeds)');
      } else {
        console.log('⚠️  Schema warning:', err.message.substring(0, 120));
        console.log('   Continuing with seeds...');
      }
    }
  } else {
    console.log('⚠️  Schema file not found at:', SCHEMA_PATH);
  }

  console.log();

  // 3. Run All Seed Files
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  console.log('🌱 STEP 2: Running Seed Files...');
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');

  const allFiles = fs.readdirSync(SEEDS_DIR)
    .filter(f => f.endsWith('.sql'))
    .sort((a, b) => extractNumericPrefix(a) - extractNumericPrefix(b));

  console.log(`📁 Found ${allFiles.length} seed files to process\n`);

  let successCount = 0;
  let skipCount = 0;
  let errorCount = 0;
  const errors = [];
  const batchSize = 50;

  for (let i = 0; i < allFiles.length; i++) {
    const file = allFiles[i];
    const filePath = path.join(SEEDS_DIR, file);
    const prefix = extractNumericPrefix(file);

    // Progress indicator every batch
    if (i % batchSize === 0 && i > 0) {
      console.log(`   --- Progress: ${i}/${allFiles.length} files (${Math.round(i/allFiles.length*100)}%) ---`);
    }

    try {
      const sql = fs.readFileSync(filePath, 'utf8');

      if (!sql.trim()) {
        skipCount++;
        continue;
      }

      await pool.query(sql);
      successCount++;

      // Show each file for visibility
      const shortName = file.length > 55 ? file.substring(0, 52) + '...' : file;
      console.log(`  ✅ [${String(i + 1).padStart(3)}/${allFiles.length}] ${shortName}`);

    } catch (err) {
      errorCount++;
      const errMsg = err.message.substring(0, 100);
      
      // Don't count "already exists" or "duplicate key" as real errors
      if (errMsg.includes('duplicate key') || errMsg.includes('already exists')) {
        skipCount++;
        errorCount--;
        const shortName = file.length > 55 ? file.substring(0, 52) + '...' : file;
        console.log(`  ⏭️  [${String(i + 1).padStart(3)}/${allFiles.length}] ${shortName} (already seeded)`);
      } else {
        errors.push({ file, error: errMsg });
        console.log(`  ❌ [${String(i + 1).padStart(3)}/${allFiles.length}] ${file}`);
        console.log(`      Error: ${errMsg}`);
      }
    }
  }

  console.log();

  // 4. Summary
  console.log('╔══════════════════════════════════════════════════════════════╗');
  console.log('║                    MIGRATION SUMMARY                       ║');
  console.log('╚══════════════════════════════════════════════════════════════╝');
  console.log();
  console.log(`  ✅ Successful:      ${successCount}`);
  console.log(`  ⏭️  Skipped/Exists:  ${skipCount}`);
  console.log(`  ❌ Failed:          ${errorCount}`);
  console.log(`  📁 Total Files:     ${allFiles.length}`);
  console.log(`  ⏱️  Duration:        ${formatDuration(Date.now() - startTime)}`);

  if (errors.length > 0) {
    console.log('\n  ⚠️  Failed Files:');
    errors.forEach(e => {
      console.log(`     • ${e.file}`);
      console.log(`       ${e.error}`);
    });
  }

  // 5. Database Counts
  console.log();
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  console.log('📊 DATABASE CONTENT COUNTS:');
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');

  const countQueries = [
    { label: 'Rotation Categories', query: 'SELECT COUNT(*) FROM rotation_categories' },
    { label: 'Rotations',           query: 'SELECT COUNT(*) FROM rotations' },
    { label: 'Topics',              query: 'SELECT COUNT(*) FROM topics' },
    { label: 'Questions (MCQs)',    query: 'SELECT COUNT(*) FROM questions' },
    { label: 'CME Articles',        query: 'SELECT COUNT(*) FROM cme_articles' },
    { label: 'Article Sections',    query: 'SELECT COUNT(*) FROM article_sections' },
    { label: 'Self-Assessments',    query: 'SELECT COUNT(*) FROM article_self_assessments' },
    { label: 'Users',               query: 'SELECT COUNT(*) FROM users' },
    { label: 'Score Weights',       query: 'SELECT COUNT(*) FROM score_weights' },
    { label: 'System Config',       query: 'SELECT COUNT(*) FROM system_config' },
  ];

  for (const cq of countQueries) {
    try {
      const result = await pool.query(cq.query);
      const count = result.rows[0].count;
      console.log(`  ${cq.label.padEnd(22)} ${String(count).padStart(8)}`);
    } catch (e) {
      console.log(`  ${cq.label.padEnd(22)} (table not found)`);
    }
  }

  // Breakdown by surgery level
  console.log();
  console.log('  📋 Questions by Surgery Level:');
  try {
    const qByLevel = await pool.query(`
      SELECT rc.name, rc.code, COUNT(q.id) as count 
      FROM questions q 
      JOIN rotation_categories rc ON q.category_id = rc.id 
      GROUP BY rc.name, rc.code 
      ORDER BY rc.code
    `);
    qByLevel.rows.forEach(r => {
      console.log(`     ${r.name.padEnd(20)} ${String(r.count).padStart(6)} questions`);
    });
  } catch (e) {
    console.log('     Could not get breakdown:', e.message.substring(0, 60));
  }

  console.log();
  console.log('  📚 CME Articles by Surgery Level:');
  try {
    const aByLevel = await pool.query(`
      SELECT rc.name, rc.code, COUNT(ca.id) as count 
      FROM cme_articles ca 
      JOIN rotation_categories rc ON ca.category_id = rc.id 
      GROUP BY rc.name, rc.code 
      ORDER BY rc.code
    `);
    aByLevel.rows.forEach(r => {
      console.log(`     ${r.name.padEnd(20)} ${String(r.count).padStart(6)} articles`);
    });
  } catch (e) {
    console.log('     Could not get breakdown:', e.message.substring(0, 60));
  }

  console.log();
  console.log('🎉 Migration and seeding complete!');
  console.log();

  await pool.end();
  process.exit(errorCount > 0 ? 1 : 0);
}

// === RUN ===
runMigration().catch(err => {
  console.error('💥 Fatal error:', err.message);
  process.exit(1);
});
