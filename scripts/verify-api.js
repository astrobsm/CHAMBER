// Live API endpoint verification
const https = require('https');

const BASE = 'https://clinical-rotation-platform.vercel.app';

function apiCall(method, path, body) {
  return new Promise((resolve, reject) => {
    const url = new URL(path, BASE);
    const opts = {
      hostname: url.hostname,
      path: url.pathname,
      method,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer admin-token-1234',
      },
    };
    const req = https.request(opts, (res) => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        try { resolve({ status: res.statusCode, body: JSON.parse(data) }); }
        catch { resolve({ status: res.statusCode, body: data }); }
      });
    });
    req.on('error', reject);
    if (body) req.write(JSON.stringify(body));
    req.end();
  });
}

async function run() {
  const ROT_ID = '7f8670c2-6b8f-486b-8ac8-a2d027bf7386';
  const STUDENT_USER_ID = '4a99483e-cb11-4d92-9b43-8f35665b6327'; // MICHAEL-MARIA
  const ASSESSOR_USER_ID = 'd15497db-9eec-43f2-8f4f-eea5a50f03b5'; // MR KEN OKPARA

  console.log('=== LIVE API VERIFICATION ===\n');

  // 1. Test session creation
  console.log('1. POST /api/attendance/sessions');
  const sess = await apiCall('POST', '/api/attendance/sessions', {
    rotation_id: ROT_ID,
    session_date: '2026-04-01',
    attendance_type: 'ward_rounds',
    start_time: '08:00',
    end_time: '12:00',
    location: 'UNTH Ward A',
    created_by: ASSESSOR_USER_ID,
  });
  console.log(`   Status: ${sess.status}, Success: ${sess.body?.success}`);
  if (!sess.body?.success) { console.log('   DETAIL:', JSON.stringify(sess.body)); return; }
  const sessId = sess.body.data?.id;
  console.log(`   Session ID: ${sessId}`);

  // 2. Test QR code generation
  console.log('\n2. GET /api/attendance/sessions/:id/qr');
  const qr = await apiCall('GET', `/api/attendance/sessions/${sessId}/qr`);
  console.log(`   Status: ${qr.status}, Success: ${qr.body?.success}`);
  console.log(`   QR Code: ${qr.body?.data?.qrCode?.substring(0, 20)}...`);

  // 3. Test manual attendance mark
  console.log('\n3. POST /api/attendance/mark (manual)');
  const mark = await apiCall('POST', '/api/attendance/mark', {
    rotation_id: ROT_ID,
    student_id: STUDENT_USER_ID,
    status: 'present',
    notes: 'API verification test',
    date: '2026-04-01',
    marked_by: ASSESSOR_USER_ID,
  });
  console.log(`   Status: ${mark.status}, Success: ${mark.body?.success}`);
  if (!mark.body?.success) console.log('   DETAIL:', JSON.stringify(mark.body));
  else console.log(`   Record ID: ${mark.body.data?.id}, Status: ${mark.body.data?.status}`);

  // 4. Test attendance by-date query
  console.log('\n4. GET /api/attendance/by-date');
  const byDate = await apiCall('GET', `/api/attendance/by-date?date=2026-04-01&rotation_id=${ROT_ID}`);
  console.log(`   Status: ${byDate.status}, Success: ${byDate.body?.success}`);
  console.log(`   Records: ${byDate.body?.data?.length || 0}`);

  // 5. Test my-records
  console.log('\n5. GET /api/attendance/my-records');
  const myRec = await apiCall('GET', '/api/attendance/my-records');
  console.log(`   Status: ${myRec.status}, Success: ${myRec.body?.success}`);
  console.log(`   Records: ${myRec.body?.data?.length || 0}`);

  // 6. Test session students
  console.log('\n6. GET /api/attendance/sessions/:id/students');
  const students = await apiCall('GET', `/api/attendance/sessions/${sessId}/students`);
  console.log(`   Status: ${students.status}, Success: ${students.body?.success}`);
  console.log(`   Students: ${students.body?.data?.length || 0}`);

  // 7. Test enrolled students
  console.log('\n7. GET /api/rotations/:id/students');
  const enrolled = await apiCall('GET', `/api/rotations/${ROT_ID}/students`);
  console.log(`   Status: ${enrolled.status}, Success: ${enrolled.body?.success}`);
  console.log(`   Enrolled: ${enrolled.body?.data?.length || 0}`);

  // 8. Test attendance stats
  console.log('\n8. GET /api/attendance/stats');
  const stats = await apiCall('GET', '/api/attendance/stats');
  console.log(`   Status: ${stats.status}, Success: ${stats.body?.success}`);

  // Cleanup: remove test record
  console.log('\n--- Cleanup ---');
  const del = await apiCall('GET', `/api/attendance/by-date?date=2026-04-01&rotation_id=${ROT_ID}`);
  if (del.body?.data?.length > 0) {
    console.log('   Test records exist (will be kept for demo)');
  }

  console.log('\n=== VERIFICATION COMPLETE ===');
}

run().catch(e => console.error('FATAL:', e.message));
