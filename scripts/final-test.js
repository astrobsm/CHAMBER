const { Pool } = require('pg');
const p = new Pool({
  connectionString: process.env.DATABASE_URL
});

async function test() {
  try {
    // 1. Check rotation with enrolled students
    const rot = await p.query(`SELECT r.id, r.name, COUNT(sr.id) as enrolled
      FROM crp.rotations r LEFT JOIN crp.student_rotations sr ON r.id = sr.rotation_id
      GROUP BY r.id, r.name ORDER BY enrolled DESC LIMIT 1`);
    const rotation = rot.rows[0];
    console.log('1. Rotation:', rotation.name, '| Enrolled:', rotation.enrolled);

    // 2. Get enrolled students
    const students = await p.query(`SELECT sr.student_id, s.first_name, s.last_name
      FROM crp.student_rotations sr JOIN crp.students s ON sr.student_id = s.id
      WHERE sr.rotation_id = $1`, [rotation.id]);
    console.log('2. Students:', students.rows.map(s => s.first_name + ' ' + s.last_name).join(', '));

    // 3. Create session
    const sess = await p.query(`INSERT INTO crp.attendance_sessions
      (rotation_id, attendance_type, session_date, start_time, end_time, location, is_active, qr_code_token, gps_latitude, gps_longitude, gps_radius_meters)
      VALUES ($1, 'ward_rounds', '2026-04-01', '08:00', '12:00', 'UNTH Ward A', true, $2, 6.4085, 7.5085, 500) RETURNING id`,
      [rotation.id, require('crypto').randomUUID()]);
    console.log('3. Session created:', sess.rows[0].id);

    // 4. Mark attendance for each student
    for (const s of students.rows) {
      const rec = await p.query(`INSERT INTO crp.attendance_records
        (session_id, student_id, status, check_in_time, check_in_gps_latitude, check_in_gps_longitude, notes)
        VALUES ($1, $2, 'present', NOW(), 6.4085, 7.5085, 'Final test') RETURNING id`,
        [sess.rows[0].id, s.student_id]);
      console.log('4. Marked', s.first_name, s.last_name, '-> present | Record:', rec.rows[0].id);
    }

    // 5. Query records back
    const recs = await p.query(`SELECT ar.status, s.first_name, s.last_name, ar.check_in_time
      FROM crp.attendance_records ar JOIN crp.students s ON ar.student_id = s.id
      WHERE ar.session_id = $1`, [sess.rows[0].id]);
    console.log('5. Records found:', recs.rows.length);
    recs.rows.forEach(r => console.log('   -', r.first_name, r.last_name, ':', r.status, 'at', r.check_in_time));

    // 6. Clean up test data
    await p.query('DELETE FROM crp.attendance_records WHERE session_id = $1', [sess.rows[0].id]);
    await p.query('DELETE FROM crp.attendance_sessions WHERE id = $1', [sess.rows[0].id]);
    console.log('6. Cleanup done');

    console.log('\n=== ALL TESTS PASSED ===');
  } catch (e) {
    console.error('FAILED:', e.message);
  } finally {
    p.end();
  }
}
test();
