/**
 * Deploy the Clinical Rotation Platform schema to DigitalOcean PostgreSQL.
 * 
 * Strategy: Deploy all CRP tables into a "crp" schema namespace
 * to avoid conflicts with existing tables from other apps.
 * Then set the search_path so the app uses crp schema first.
 */

const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');

require('dotenv').config({ path: path.join(__dirname, '..', 'packages', 'backend', '.env') });

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false },
  statement_timeout: 120000,
});

async function deploy() {
  const client = await pool.connect();

  try {
    const schemaPath = path.join(__dirname, '..', 'packages', 'backend', 'database', 'schema.sql');
    let schemaSql = fs.readFileSync(schemaPath, 'utf-8');

    console.log('=== Clinical Rotation Platform Schema Deployment ===');
    console.log('Schema file:', schemaPath);
    console.log('Size:', (schemaSql.length / 1024).toFixed(1), 'KB\n');

    // Step 1: Create the crp schema namespace
    console.log('[1/5] Creating "crp" schema namespace...');
    await client.query('CREATE SCHEMA IF NOT EXISTS crp');

    // Step 2: Set search_path so all objects are created in crp schema
    await client.query('SET search_path TO crp, public');

    // Step 3: Make ENUMs safe with DO blocks (IF NOT EXISTS)
    const enumTypes = [
      'user_role', 'student_level', 'attendance_type', 'attendance_status',
      'test_type', 'test_status', 'cognitive_level', 'difficulty_level',
      'cme_content_type', 'clearance_status', 'sync_status'
    ];

    for (const enumName of enumTypes) {
      const regex = new RegExp(
        'CREATE TYPE ' + enumName + ' AS ENUM \\(([^)]+)\\);',
        'g'
      );
      schemaSql = schemaSql.replace(regex, function(match, values) {
        return "DO $$ BEGIN IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = '" 
          + enumName + "') THEN CREATE TYPE " + enumName + " AS ENUM (" 
          + values + "); END IF; END $$;";
      });
    }

    // Step 4: Make CREATE TABLE / INDEX idempotent
    schemaSql = schemaSql.replace(/CREATE TABLE (\w+)/g, 'CREATE TABLE IF NOT EXISTS $1');
    schemaSql = schemaSql.replace(/CREATE INDEX (\w+)/g, 'CREATE INDEX IF NOT EXISTS $1');
    schemaSql = schemaSql.replace(/CREATE UNIQUE INDEX (\w+)/g, 'CREATE UNIQUE INDEX IF NOT EXISTS $1');

    // Step 5: Execute the modified schema
    console.log('[2/5] Executing schema in "crp" namespace...');
    await client.query('BEGIN');
    await client.query(schemaSql);
    await client.query('COMMIT');
    console.log('  -> Schema executed successfully');

    // Step 6: Set default search_path for doadmin role
    console.log('[3/5] Setting default search_path for doadmin...');
    await client.query("ALTER ROLE doadmin SET search_path TO crp, public");

    // Step 7: Verify tables
    console.log('[4/5] Verifying tables...');
    const result = await client.query(
      "SELECT table_name FROM information_schema.tables WHERE table_schema = 'crp' ORDER BY table_name"
    );

    console.log('\n--- CRP Tables Created ---');
    result.rows.forEach(function(t, i) {
      console.log('  ' + (i + 1) + '. ' + t.table_name);
    });
    console.log('\nTotal: ' + result.rows.length + ' tables');

    // Step 8: Verify enums
    console.log('\n[5/5] Verifying enums...');
    const enumResult = await client.query(
      "SELECT t.typname FROM pg_type t JOIN pg_namespace n ON t.typnamespace = n.oid WHERE n.nspname = 'crp' AND t.typtype = 'e' ORDER BY t.typname"
    );
    console.log('Enums created: ' + enumResult.rows.length);
    enumResult.rows.forEach(function(e) {
      console.log('  - ' + e.typname);
    });

    console.log('\n=== Deployment Complete ===');
    console.log('Search path set to: crp, public');

  } catch (error) {
    await client.query('ROLLBACK').catch(function() {});
    console.error('FAILED:', error.message);
    if (error.detail) console.error('Detail:', error.detail);
    if (error.hint) console.error('Hint:', error.hint);
  } finally {
    client.release();
    await pool.end();
  }
}

deploy();
