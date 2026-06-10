const { Pool } = require('pg');
const p = new Pool({
  connectionString: process.env.DATABASE_URL
});

async function run() {
  try {
    // 1. Check search_path
    const sp = await p.query("SHOW search_path");
    console.log("search_path:", sp.rows[0].search_path);

    // 2. Get crp.attendance_records columns
    const ar = await p.query("SELECT column_name, data_type, is_nullable FROM information_schema.columns WHERE table_schema='crp' AND table_name='attendance_records' ORDER BY ordinal_position");
    console.log("\n=== crp.attendance_records ===");
    ar.rows.forEach(r => console.log(`  ${r.column_name} (${r.data_type}, nullable=${r.is_nullable})`));

    // 3. Get crp.attendance_sessions columns
    const as2 = await p.query("SELECT column_name, data_type, is_nullable FROM information_schema.columns WHERE table_schema='crp' AND table_name='attendance_sessions' ORDER BY ordinal_position");
    console.log("\n=== crp.attendance_sessions ===");
    as2.rows.forEach(r => console.log(`  ${r.column_name} (${r.data_type}, nullable=${r.is_nullable})`));

    // 4. Check attendance status enum values
    const en = await p.query("SELECT e.enumlabel FROM pg_type t JOIN pg_enum e ON t.oid = e.enumtypid WHERE t.typname LIKE '%attendance%' OR t.typname LIKE '%status%' ORDER BY t.typname, e.enumsortorder");
    console.log("\n=== status enum values ===");
    en.rows.forEach(r => console.log(`  ${r.enumlabel}`));

    // 5. Check student PKs and enrollment
    const stu = await p.query("SELECT s.id as student_pk, s.user_id, u.first_name, u.last_name FROM students s JOIN users u ON s.user_id = u.id");
    console.log("\n=== students ===");
    stu.rows.forEach(r => console.log(`  PK=${r.student_pk} user=${r.user_id} name=${r.first_name} ${r.last_name}`));

    // 6. Check student_rotations
    const sr = await p.query("SELECT sr.id, sr.student_id, sr.rotation_id, sr.status FROM student_rotations sr");
    console.log("\n=== student_rotations ===");
    sr.rows.forEach(r => console.log(`  id=${r.id} student=${r.student_id} rotation=${r.rotation_id} status=${r.status}`));

    // 7. Check existing sessions
    const sess = await p.query("SELECT id, rotation_id, attendance_type, session_date, created_by FROM attendance_sessions ORDER BY session_date DESC LIMIT 5");
    console.log("\n=== recent sessions ===");
    sess.rows.forEach(r => console.log(`  id=${r.id} type=${r.attendance_type} date=${r.session_date} created_by=${r.created_by}`));

    // 8. Check existing records
    const rec = await p.query("SELECT * FROM attendance_records LIMIT 3");
    console.log("\n=== sample attendance_records ===");
    if (rec.rows.length > 0) {
      console.log("  columns:", Object.keys(rec.rows[0]).join(', '));
      rec.rows.forEach(r => console.log(`  `, JSON.stringify(r)));
    } else {
      console.log("  (empty)");
    }

  } catch(e) {
    console.error("ERROR:", e.message);
  } finally {
    p.end();
  }
}
run();
