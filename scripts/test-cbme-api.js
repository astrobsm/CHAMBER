// End-to-end smoke test of the serverless handler with a stubbed Postgres.
const http = require('http');
const Module = require('module');

const path = require('path');
const ROOT = path.join(__dirname, '..');
process.env.DATABASE_URL = 'postgres://stub/stub';
process.env.JWT_SECRET = 'test-secret-not-used-anywhere-real-0123456789';

// --- stub `pg` ------------------------------------------------------------
const executed = [];
class FakePool {
  async query(text, params) {
    executed.push(String(text).replace(/\s+/g, ' ').slice(0, 70));
    const s = String(text).replace(/\s+/g, ' ');
    if (s.includes("to_regclass")) return { rows: [{ t: 'cbme_schema_version' }] }; // schema already applied
    if (s.includes('FROM student_rotations sr JOIN students s')) {
      return { rows: [{ id: 'stu-1', first_name: 'Ada', last_name: 'Star', matriculation_number: 'M1', email: 'a@x' }] };
    }
    if (s.includes('SELECT * FROM rotations WHERE id')) return { rows: [{ id: 'rot-1', name: 'Surgery 1', category_id: null }] };
    if (s.includes('INSERT INTO competency_assessments')) {
      return { rows: [{ id: 'assess-1', rotation_id: params[0], student_id: params[1], percentage: params[8] }] };
    }
    if (s.includes('FROM group_memberships gm')) {
      return { rows: [{ student_id: 'stu-1', is_leader: true, group_id: 'g1', code: 'spartans', name: 'Spartans', color: '#b91c1c', motto: 'm' }] };
    }
    return { rows: [] };
  }
}
const origLoad = Module._load;
Module._load = function (request, parent, isMain) {
  if (request === 'pg') return { Pool: FakePool };
  return origLoad.apply(this, arguments);
};

const handler = require(path.join(ROOT, 'api', 'index.js'));
const server = http.createServer(handler);

function req(method, path, body, headers = {}) {
  return new Promise((resolve) => {
    const payload = body ? JSON.stringify(body) : null;
    const r = http.request(
      { host: '127.0.0.1', port: server.address().port, method, path,
        headers: { 'content-type': 'application/json', ...headers, ...(payload ? { 'content-length': Buffer.byteLength(payload) } : {}) } },
      (res) => {
        let data = '';
        res.on('data', (c) => (data += c));
        res.on('end', () => {
          let json; try { json = JSON.parse(data); } catch { json = data.slice(0, 120); }
          resolve({ status: res.statusCode, json });
        });
      }
    );
    if (payload) r.write(payload);
    r.end();
  });
}

const jwt = require(path.join(ROOT, 'node_modules', 'jsonwebtoken'));
const tokenFor = (u) =>
  'Bearer ' +
  jwt.sign({ sub: u.id, role: u.role, email: u.email || null, typ: 'access' }, process.env.JWT_SECRET, {
    issuer: 'unth-clinical-rotation-platform',
    expiresIn: '1h',
  });
const ADMIN = { Authorization: tokenFor({ id: 'admin-001', role: 'admin', email: 'a@unth' }) };
const STUDENT = { Authorization: tokenFor({ id: 'user-1', role: 'student', email: 's@unth' }) };

let fails = 0;
function check(label, cond, extra) {
  if (!cond) fails++;
  console.log(`${cond ? 'PASS' : 'FAIL'}  ${label}${cond ? '' : `  → ${JSON.stringify(extra).slice(0, 220)}`}`);
}

server.listen(0, async () => {
  // v1 routes still work after the CBME module was mounted
  const health = await req('GET', '/api/health');
  check('v1 /api/health still routes', health.status === 200 && health.json.status === 'healthy', health);

  const fw = await req('GET', '/api/cbme/framework', null, ADMIN);
  check('framework weights sum to 100',
    fw.status === 200 && Object.values(fw.json.data.weights).reduce((a, b) => a + b, 0) === 100, fw);
  check('framework exposes 5 houses', fw.json?.data?.houses?.length === 5, fw.json?.data?.houses?.length);
  check('framework exposes 7 rubrics', fw.json?.data?.rubrics?.length === 7, fw.json?.data?.rubrics?.length);
  check('domain minimums are 2/3 of weight',
    JSON.stringify(fw.json.data.domains.map((d) => d.required)) === JSON.stringify([33.33, 6.67, 13.33, 13.33]),
    fw.json.data.domains);

  // Authorisation
  const noAuth = await req('POST', '/api/rotations/rot-1/groups/allocate', {});
  check('group allocation rejects anonymous callers', noAuth.status === 401, noAuth);

  const asStudent = await req('POST', '/api/rotations/rot-1/groups/allocate', {}, STUDENT);
  check('group allocation rejects students', asStudent.status === 403, asStudent);

  // Rubric validation
  const badType = await req('POST', '/api/cbme/assessments',
    { rotationId: 'rot-1', studentId: 'stu-1', assessmentType: 'nonsense', scores: {} }, ADMIN);
  check('unknown assessment type is rejected', badType.status === 400 && /Unknown assessment type/.test(badType.json.message), badType);

  const partial = await req('POST', '/api/cbme/assessments',
    { rotationId: 'rot-1', studentId: 'stu-1', assessmentType: 'seminar', scores: { knowledge: 8 } }, ADMIN);
  check('incomplete rubric is rejected', partial.status === 400 && /Missing score/.test(partial.json.message), partial);

  const outOfRange = await req('POST', '/api/cbme/assessments', {
    rotationId: 'rot-1', studentId: 'stu-1', assessmentType: 'ward_presentation',
    scores: { attendance_engagement: 11, patient_presentation: 5, clinical_judgement: 5, decision_making: 5, professional_conduct: 5 },
  }, ADMIN);
  check('out-of-range criterion is rejected', outOfRange.status === 400 && /between 0 and 10/.test(outOfRange.json.message), outOfRange);

  const valid = await req('POST', '/api/cbme/assessments', {
    rotationId: 'rot-1', studentId: 'stu-1', assessmentType: 'ward_presentation',
    scores: { attendance_engagement: 8, patient_presentation: 7, clinical_judgement: 9, decision_making: 6, professional_conduct: 10 },
  }, ADMIN);
  check('valid rubric is accepted and scored', valid.status === 200 && /80%/.test(valid.json.message || ''), valid);

  // Sign-out must refuse an ineligible student (stub cohort has no data → all domains fail)
  const so = await req('POST', '/api/rotations/rot-1/sign-out', { studentId: 'stu-1' }, ADMIN);
  check('sign-out refused for ineligible student', so.status === 422 && so.json.data.deficientDomains.length === 4, so);
  check('sign-out refusal returns remediation advice', (so.json.data.remediation || []).length === 4, so.json.data?.remediation?.length);

  const soAssessor = await req('POST', '/api/rotations/rot-1/sign-out', { studentId: 'stu-1', override: true }, tokenFor ? { Authorization: tokenFor({ id: 'ass-1', role: 'assessor' }) } : {});
  check('assessor cannot override a failed domain', soAssessor.status === 403, soAssessor);

  // Read endpoints
  // Cohort-wide reads require an authenticated caller
  for (const p of [
    '/api/rotations/rot-1/competency',
    '/api/rotations/rot-1/leaderboard',
    '/api/rotations/rot-1/groups',
    '/api/rotations/rot-1/analytics',
    '/api/cbme/assessments',
    '/api/cbme/certificate?rotationId=rot-1&studentId=stu-1',
  ]) {
    const anon = await req('GET', p);
    check(`anonymous read blocked: ${p.split('?')[0]}`, anon.status === 401, anon);
  }

  const board = await req('GET', '/api/rotations/rot-1/competency', null, ADMIN);
  check('competency board returns the cohort', board.status === 200 && board.json.data.summary.cohortSize === 1, board.json?.data?.summary);
  check('board reports the student as not eligible', board.json.data.summary.notEligible === 1, board.json?.data?.summary);

  const lb = await req('GET', '/api/rotations/rot-1/leaderboard', null, ADMIN);
  check('leaderboard returns group standings', lb.status === 200 && lb.json.data.groups[0].code === 'spartans', lb.json?.data?.groups);

  const unknown = await req('GET', '/api/cbme/does-not-exist', null, ADMIN);
  check('unknown CBME path falls through to 404', unknown.status === 404, unknown);

  console.log(fails ? `\n${fails} FAILURE(S)` : '\nAll API smoke tests passed');
  server.close();
  process.exit(fails ? 1 : 0);
});
