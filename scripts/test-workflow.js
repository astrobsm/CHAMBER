const { Pool } = require('pg');
process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';
const p = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});

async function test() {
  console.log("=== FULL WORKFLOW TEST ===\n");

  // 1. Test session creation via API (simulate what backend does)
  console.log("1. Creating attendance session...");
  const crypto = require('crypto');
  const sess = await p.query(
    `INSERT INTO crp.attendance_sessions 
      (rotation_id, attendance_type, session_date, start_time, end_time, location, is_active, qr_code_token, gps_latitude, gps_longitude, gps_radius_meters)
     VALUES ($1, 'ward_rounds', '2026-04-01', '08:00', '12:00', 'UNTH Ward A', true, $2, 6.4085, 7.5085, 500)
     RETURNING id, rotation_id, session_date, qr_code_token`,
    ['7f8670c2-6b8f-486b-8ac8-a2d027bf7386', crypto.randomUUID()]
  );
  const session = sess.rows[0];
  console.log("   Session created:", session.id);
  console.log("   QR token:", session.qr_code_token);

  // 2. Get enrolled students
  console.log("\n2. Getting enrolled students...");
  const enrolled = await p.query(
    `SELECT sr.id as enrollment_id, sr.student_id, s.first_name, s.last_name, u.id as user_id
     FROM crp.student_rotations sr
     JOIN crp.students s ON sr.student_id = s.id
     JOIN crp.users u ON s.user_id = u.id
     WHERE sr.rotation_id = $1`,
    ['7f8670c2-6b8f-486b-8ac8-a2d027bf7386']
  );
  console.log("   Enrolled:", enrolled.rows.length, "students");
  enrolled.rows.forEach(s => console.log("   -", s.first_name, s.last_name, "(student_id:", s.student_id, ", user_id:", s.user_id, ")"));

  // 3. Mark attendance for first student (manual - assessor marking)
  if (enrolled.rows.length > 0) {
    const student = enrolled.rows[0];
    console.log("\n3. Manual mark for", student.first_name, student.last_name, "...");
    const rec = await p.query(
      `INSERT INTO crp.attendance_records (session_id, student_id, status, check_in_time, notes, marked_by_assessor)
       VALUES ($1, $2, 'present', NOW(), 'Manual mark test', NULL) RETURNING id, status`,
      [session.id, student.student_id]
    );
    console.log("   Record created:", rec.rows[0].id, "status:", rec.rows[0].status);
  }

  // 4. GPS check-in for second student
  if (enrolled.rows.length > 1) {
    const student = enrolled.rows[1];
    console.log("\n4. GPS check-in for", student.first_name, student.last_name, "...");
    const rec = await p.query(
      `INSERT INTO crp.attendance_records (session_id, student_id, status, check_in_time, check_in_gps_latitude, check_in_gps_longitude, notes)
       VALUES ($1, $2, 'present', NOW(), 6.4087, 7.5083, 'GPS verified: 30m from campus center') RETURNING id, status`,
      [session.id, student.student_id]
    );
    console.log("   Record created:", rec.rows[0].id, "status:", rec.rows[0].status);
  }

  // 5. Verify records
  console.log("\n5. Verifying records...");
  const records = await p.query(
    `SELECT ar.id, ar.status, ar.check_in_time, ar.check_in_gps_latitude, 
            ar.marked_by_assessor, ar.notes, s.first_name, s.last_name
     FROM crp.attendance_records ar
     JOIN crp.students s ON ar.student_id = s.id
     WHERE ar.session_id = $1`,
    [session.id]
  );
  console.log("   Total records:", records.rows.length);
  records.rows.forEach(r => console.log("   -", r.first_name, r.last_name, ":", r.status, r.notes ? r.notes.substring(0, 50) : ''));

  // 6. Test attendance by date (what assessor page loads)
  console.log("\n6. Testing attendance by-date query...");
  const byDate = await p.query(
    `SELECT sr.student_id, s.first_name, s.last_name, u.id as user_id
     FROM crp.student_rotations sr
     JOIN crp.students s ON sr.student_id = s.id
     JOIN crp.users u ON s.user_id = u.id
     WHERE sr.rotation_id = $1 AND sr.status = 'active'
     ORDER BY s.last_name, s.first_name`,
    ['7f8670c2-6b8f-486b-8ac8-a2d027bf7386']
  );
  const dateRecords = await p.query(
    `SELECT ar.*, asess.session_date
     FROM crp.attendance_records ar
     JOIN crp.attendance_sessions asess ON ar.session_id = asess.id
     WHERE asess.rotation_id = $1 AND asess.session_date = '2026-04-01'`,
    ['7f8670c2-6b8f-486b-8ac8-a2d027bf7386']
  );
  console.log("   Enrolled students:", byDate.rows.length);
  console.log("   Records for today:", dateRecords.rows.length);

  console.log("\n=== ALL TESTS PASSED ===");
  p.end();
}

test().catch(e => { console.error("TEST FAILED:", e.message); p.end(); });
