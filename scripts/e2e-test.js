// End-to-end test: enrollment -> session creation -> attendance marking -> querying
process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';
const { Pool } = require('pg');
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});

async function q(text, params) {
  const r = await pool.query(text, params);
  return r.rows;
}

async function run() {
  console.log('=== E2E TEST START ===\n');

  // 1. Check schemas
  const schemas = await q("SELECT schema_name FROM information_schema.schemata WHERE schema_name IN ('crp','public')");
  console.log('Schemas:', schemas.map(s => s.schema_name).join(', '));
  
  const sp = await q("SHOW search_path");
  console.log('Search path:', sp[0].search_path);

  // 2. Show crp.attendance_records columns
  const arCols = await q("SELECT column_name, data_type, is_nullable FROM information_schema.columns WHERE table_schema='crp' AND table_name='attendance_records' ORDER BY ordinal_position");
  console.log('\n--- crp.attendance_records columns ---');
  arCols.forEach(c => console.log(`  ${c.column_name} (${c.data_type}, nullable=${c.is_nullable})`));

  // 3. Show crp.attendance_sessions columns
  const asCols = await q("SELECT column_name, data_type, is_nullable FROM information_schema.columns WHERE table_schema='crp' AND table_name='attendance_sessions' ORDER BY ordinal_position");
  console.log('\n--- crp.attendance_sessions columns ---');
  asCols.forEach(c => console.log(`  ${c.column_name} (${c.data_type}, nullable=${c.is_nullable})`));

  // 4. Get rotation
  const rotations = await q("SELECT id, name, start_date, end_date FROM rotations LIMIT 5");
  console.log('\n--- Rotations ---');
  rotations.forEach(r => console.log(`  ${r.id} | ${r.name} | ${r.start_date} - ${r.end_date}`));
  if (!rotations.length) { console.log('NO ROTATIONS - cannot test'); await pool.end(); return; }
  // Find rotation with enrolled students
  const rotWithStudents = await q("SELECT sr.rotation_id, COUNT(*) as cnt FROM student_rotations sr GROUP BY sr.rotation_id ORDER BY cnt DESC LIMIT 1");
  const rotId = rotWithStudents.length ? rotWithStudents[0].rotation_id : rotations[0].id;
  console.log('  Using rotation:', rotId);

  // 5. Get enrolled students
  const enrolled = await q("SELECT sr.id as enrollment_id, sr.student_id, s.first_name, s.last_name, u.id as user_id FROM student_rotations sr JOIN students s ON sr.student_id = s.id JOIN users u ON s.user_id = u.id WHERE sr.rotation_id = $1", [rotId]);
  console.log('\n--- Enrolled students in rotation ---');
  enrolled.forEach(e => console.log(`  enrollment=${e.enrollment_id} student_pk=${e.student_id} user_id=${e.user_id} name=${e.first_name} ${e.last_name}`));
  if (!enrolled.length) { console.log('NO ENROLLED STUDENTS - cannot test'); await pool.end(); return; }

  // 5b. Check FK constraints on attendance_records
  console.log('\n--- FK constraints on attendance_records ---');
  const fks = await q(`SELECT tc.constraint_name, kcu.column_name, ccu.table_schema, ccu.table_name, ccu.column_name as ref_column
    FROM information_schema.table_constraints tc
    JOIN information_schema.key_column_usage kcu ON tc.constraint_name = kcu.constraint_name AND tc.table_schema = kcu.table_schema
    JOIN information_schema.constraint_column_usage ccu ON tc.constraint_name = ccu.constraint_name AND tc.table_schema = ccu.table_schema
    WHERE tc.table_schema = 'crp' AND tc.table_name = 'attendance_records' AND tc.constraint_type = 'FOREIGN KEY'`);
  fks.forEach(f => console.log(`  ${f.column_name} -> ${f.table_schema}.${f.table_name}(${f.ref_column})`));

  // 5c. Get assessor info
  console.log('\n--- Assessor info ---');
  const assessorCols = await q("SELECT column_name FROM information_schema.columns WHERE table_schema='crp' AND table_name='assessors' ORDER BY ordinal_position");
  console.log('  assessors columns:', assessorCols.map(c=>c.column_name).join(', '));
  const assessors = await q("SELECT * FROM assessors LIMIT 5");
  assessors.forEach(a => console.log('  ', JSON.stringify(a)));

  // 6. Test: Create attendance session
  console.log('\n--- TEST: Create attendance session ---');
  const crypto = require('crypto');
  try {
    const sessResult = await q(
      `INSERT INTO attendance_sessions (rotation_id, attendance_type, session_date, start_time, end_time, location, is_active, qr_code_token, gps_latitude, gps_longitude, gps_radius_meters)
       VALUES ($1, 'ward_rounds', '2026-04-01', '08:00', '12:00', 'UNTH Ward A', true, $2, 6.4085, 7.5085, 500) RETURNING id, rotation_id, session_date, qr_code_token`,
      [rotId, crypto.randomUUID()]
    );
    console.log('  Session created:', JSON.stringify(sessResult[0]));
    const sessId = sessResult[0].id;

    // 7. Test: Insert attendance record (manual mark)
    console.log('\n--- TEST: Mark attendance (manual) ---');
    const studentPk = enrolled[0].student_id;
    // Get the correct assessor PK from assessors table
    const assessorRow = await q("SELECT id FROM assessors LIMIT 1");
    const assessorPk = assessorRow.length ? assessorRow[0].id : null;
    console.log('  Using assessor PK:', assessorPk);
    try {
      const markResult = await q(
        `INSERT INTO attendance_records (session_id, student_id, status, check_in_time, marked_by_assessor, notes)
         VALUES ($1, $2, 'present', NOW(), $3, 'E2E test manual mark') RETURNING id, session_id, student_id, status, marked_by_assessor`,
        [sessId, studentPk, assessorPk]
      );
      console.log('  Record created:', JSON.stringify(markResult[0]));

      // 8. Test: Update attendance record
      console.log('\n--- TEST: Update attendance record ---');
      const updateResult = await q(
        `UPDATE attendance_records SET status = 'late', notes = 'E2E updated' WHERE id = $1 RETURNING id, status, notes`,
        [markResult[0].id]
      );
      console.log('  Record updated:', JSON.stringify(updateResult[0]));

      // 9. Test: Query attendance by session
      console.log('\n--- TEST: Query attendance by session ---');
      const bySession = await q(
        `SELECT ar.id, ar.status, ar.check_in_time, ar.notes, ar.marked_by_assessor, ar.qr_code_used,
                ar.check_in_gps_latitude, ar.check_in_gps_longitude,
                s.first_name, s.last_name
         FROM attendance_records ar
         JOIN students s ON ar.student_id = s.id
         WHERE ar.session_id = $1`,
        [sessId]
      );
      console.log('  Records found:', bySession.length);
      bySession.forEach(r => console.log(`    ${r.first_name} ${r.last_name}: ${r.status} at ${r.check_in_time}`));

      // 10. Test: GPS check-in style insert
      console.log('\n--- TEST: GPS check-in style insert ---');
      if (enrolled.length > 1) {
        const gpsResult = await q(
          `INSERT INTO attendance_records (session_id, student_id, status, check_in_time, check_in_gps_latitude, check_in_gps_longitude, qr_code_used, notes)
           VALUES ($1, $2, 'present', NOW(), 6.4085, 7.5085, NULL, 'GPS verified: 50m from campus center') RETURNING id, status`,
          [sessId, enrolled[1].student_id]
        );
        console.log('  GPS record created:', JSON.stringify(gpsResult[0]));
      } else {
        console.log('  Skipped (only 1 enrolled student)');
      }

      // 11. Test: my-records style query
      console.log('\n--- TEST: my-records query ---');
      const myRecords = await q(
        `SELECT ar.id, ar.check_in_time, ar.status, ar.notes,
                ar.check_in_gps_latitude, ar.check_in_gps_longitude, ar.marked_by_assessor, ar.qr_code_used,
                as2.session_date as date, as2.attendance_type as session_type, as2.location
         FROM attendance_records ar
         JOIN attendance_sessions as2 ON ar.session_id = as2.id
         WHERE ar.student_id = $1
         ORDER BY as2.session_date DESC LIMIT 10`,
        [studentPk]
      );
      console.log('  Records for student:', myRecords.length);
      myRecords.forEach(r => console.log(`    ${r.date} ${r.session_type}: ${r.status}`));

      // Cleanup test data
      console.log('\n--- CLEANUP ---');
      await q('DELETE FROM attendance_records WHERE session_id = $1', [sessId]);
      await q('DELETE FROM attendance_sessions WHERE id = $1', [sessId]);
      console.log('  Test data cleaned up');

    } catch (markErr) {
      console.error('  MARK FAILED:', markErr.message);
      // Cleanup session
      await q('DELETE FROM attendance_sessions WHERE id = $1', [sessId]);
    }
  } catch (sessErr) {
    console.error('  SESSION CREATE FAILED:', sessErr.message);
  }

  // 12. Verify API code alignment - check what columns the API uses
  console.log('\n--- COLUMN ALIGNMENT CHECK ---');
  const validCols = new Set(arCols.map(c => c.column_name));
  const apiUsedCols = ['session_id', 'student_id', 'status', 'check_in_time', 'check_in_gps_latitude', 'check_in_gps_longitude', 'notes', 'marked_by_assessor', 'qr_code_used'];
  apiUsedCols.forEach(col => {
    const exists = validCols.has(col);
    console.log(`  ${exists ? 'OK' : 'MISSING'}: ${col}`);
  });

  console.log('\n=== E2E TEST COMPLETE ===');
  await pool.end();
}

run().catch(e => { console.error('FATAL:', e.message); pool.end(); });
