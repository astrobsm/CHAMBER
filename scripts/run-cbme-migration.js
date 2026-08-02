#!/usr/bin/env node
// Applies the CBME v2 migration to the database in DATABASE_URL.
//
// The DDL is additive and idempotent — CREATE TABLE IF NOT EXISTS and
// ADD COLUMN IF NOT EXISTS only. Nothing is dropped and no row is modified,
// so re-running is safe.
//
//   node scripts/run-cbme-migration.js            # apply
//   node scripts/run-cbme-migration.js --dry-run  # report state, change nothing

require('dotenv').config();
const path = require('path');
const { Pool } = require('pg');
const { DDL, ENUM_EXTENSIONS } = require(path.join(__dirname, '..', 'api', 'cbme-schema.js'));

// DigitalOcean managed Postgres presents a self-signed chain.
process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';

const DRY_RUN = process.argv.includes('--dry-run');

// Everything the migration is expected to create.
const EXPECTED_TABLES = [
  'rotation_groups', 'group_memberships', 'seminar_topics', 'seminar_assignments',
  'competency_assessments', 'clinic_assignments', 'clerkings', 'competency_snapshots',
  'sign_out_records', 'rotation_awards', 'hall_of_fame', 'assessment_audit_log',
  'cbme_schema_version',
];

const EXPECTED_COLUMNS = {
  students: ['registration_number', 'institution', 'faculty', 'department', 'training_level',
    'emergency_contact_name', 'emergency_contact_phone', 'emergency_contact_relationship',
    'previous_units', 'portfolio_notes'],
  rotations: ['assessor_id', 'description', 'level', 'duration_weeks', 'specialty', 'unit',
    'academic_session', 'batch', 'expected_students', 'consultants', 'residents',
    'house_officers', 'clinic_days', 'ward_round_days', 'theatre_days', 'seminar_days',
    'examination_date', 'sign_out_date', 'groups_allocated_at', 'seminars_allocated_at',
    'awards_computed_at'],
};

const EXPECTED_ENUM_VALUES = ['emergency_call', 'grand_round', 'departmental_meeting', 'seminar'];

// Resolve through search_path rather than assuming "public" — this
// deployment keeps the application's tables in the "crp" schema.
async function tablesPresent(pool, names) {
  const r = await pool.query(
    `SELECT n AS table_name FROM unnest($1::text[]) AS n WHERE to_regclass(n) IS NOT NULL`,
    [names]
  );
  return new Set(r.rows.map((x) => x.table_name));
}

async function columnsPresent(pool, table, cols) {
  const r = await pool.query(
    `SELECT a.attname AS column_name
       FROM pg_attribute a
      WHERE a.attrelid = to_regclass($1)
        AND a.attnum > 0 AND NOT a.attisdropped
        AND a.attname = ANY($2)`,
    [table, cols]
  );
  return new Set(r.rows.map((x) => x.column_name));
}

async function enumValues(pool, typeName) {
  const r = await pool.query(
    `SELECT e.enumlabel FROM pg_enum e
       JOIN pg_type t ON t.oid = e.enumtypid
      WHERE t.typname = $1`,
    [typeName]
  );
  return new Set(r.rows.map((x) => x.enumlabel));
}

(async () => {
  if (!process.env.DATABASE_URL) {
    console.error('DATABASE_URL is not set.');
    process.exit(1);
  }

  const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false, require: true },
    connectionTimeoutMillis: 15000,
    max: 1,
  });

  try {
    const v = await pool.query('SELECT version(), current_database() AS db, current_user AS usr');
    console.log(`Connected  : ${v.rows[0].db} as ${v.rows[0].usr}`);
    console.log(`PostgreSQL : ${v.rows[0].version.split(' ').slice(0, 2).join(' ')}`);

    const sp = await pool.query("SELECT current_schema() AS s, current_setting('search_path') AS p");
    console.log(`Schema     : ${sp.rows[0].s}   (search_path: ${sp.rows[0].p})`);

    const countTables = async () =>
      (await pool.query(
        "SELECT COUNT(*)::int AS c FROM pg_tables WHERE schemaname = current_schema()"
      )).rows[0].c;

    const before = await countTables();
    console.log(`Tables before: ${before} in ${sp.rows[0].s}`);

    const haveBefore = await tablesPresent(pool, EXPECTED_TABLES);
    console.log(`CBME tables already present: ${haveBefore.size}/${EXPECTED_TABLES.length}`);

    if (DRY_RUN) {
      console.log('\n--dry-run: no changes made.');
      return;
    }

    // ---- apply -----------------------------------------------------------
    console.log('\nApplying DDL...');
    await pool.query(DDL);
    console.log('  DDL applied.');

    console.log('Applying enum extensions...');
    for (const stmt of ENUM_EXTENSIONS) {
      try {
        await pool.query(stmt);
        console.log(`  ok   ${stmt.replace(/ADD VALUE IF NOT EXISTS/, '+')}`);
      } catch (e) {
        console.log(`  SKIP ${stmt}  → ${e.message}`);
      }
    }

    // ---- verify ----------------------------------------------------------
    console.log('\nVerifying...');
    let failures = 0;

    const haveAfter = await tablesPresent(pool, EXPECTED_TABLES);
    const missing = EXPECTED_TABLES.filter((t) => !haveAfter.has(t));
    if (missing.length) { failures++; console.log(`  FAIL tables missing: ${missing.join(', ')}`); }
    else console.log(`  ok   all ${EXPECTED_TABLES.length} CBME tables exist`);

    for (const [table, cols] of Object.entries(EXPECTED_COLUMNS)) {
      const have = await columnsPresent(pool, table, cols);
      const miss = cols.filter((c) => !have.has(c));
      if (miss.length) { failures++; console.log(`  FAIL ${table} missing columns: ${miss.join(', ')}`); }
      else console.log(`  ok   ${table}: all ${cols.length} columns present`);
    }

    const vals = await enumValues(pool, 'attendance_type');
    const missVals = EXPECTED_ENUM_VALUES.filter((x) => !vals.has(x));
    if (missVals.length) { failures++; console.log(`  FAIL attendance_type missing: ${missVals.join(', ')}`); }
    else console.log(`  ok   attendance_type: ${[...vals].sort().join(', ')}`);

    const ver = await pool.query('SELECT version, applied_at FROM cbme_schema_version ORDER BY version');
    console.log(`  ok   cbme_schema_version: ${ver.rows.map((r) => `v${r.version} @ ${new Date(r.applied_at).toISOString()}`).join('; ')}`);

    const after = await countTables();
    console.log(`\nTables after: ${after} (was ${before})`);

    if (failures) {
      console.log(`\n${failures} VERIFICATION FAILURE(S)`);
      process.exitCode = 1;
    } else {
      console.log('\nMigration applied and verified.');
    }
  } catch (e) {
    console.error('\nMigration FAILED:', e.message);
    if (e.position) console.error('  at character position', e.position);
    process.exitCode = 1;
  } finally {
    await pool.end();
  }
})();
