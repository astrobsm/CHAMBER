// Regression tests for the user-creation paths (registration + bulk upload).
//
// The stub enforces the real schema's constraints — unknown columns, NOT NULL
// on students.level, and the UNIQUE indexes — so a query that would fail
// against PostgreSQL fails here too.
const http = require('http');
const path = require('path');
const Module = require('module');

const ROOT = path.join(__dirname, '..');
process.env.DATABASE_URL = 'postgres://stub/stub';
process.env.JWT_SECRET = 'test-secret-not-used-anywhere-real-0123456789';

const STUDENT_COLUMNS = new Set([
  'id', 'user_id', 'matriculation_number', 'first_name', 'last_name', 'middle_name',
  'level', 'phone_number', 'whatsapp_number', 'profile_photo_url', 'date_of_birth',
  'gender', 'current_rotation_id', 'clearance_status', 'created_at', 'updated_at',
]);
const NOT_NULL_STUDENT = ['user_id', 'matriculation_number', 'first_name', 'last_name', 'level', 'phone_number'];
const LEVEL_ENUM = ['surgery_1', 'surgery_2', 'surgery_3', 'surgery_4'];

const db = { users: [], students: [], assessors: [], administrators: [] };

class FakePool {
  async query(text, params = []) {
    const s = String(text).replace(/\s+/g, ' ').trim();

    if (/^INSERT INTO users/i.test(s)) {
      const email = /LOWER\(\$1\)/.test(s) ? String(params[0]).toLowerCase() : params[0];
      if (db.users.some((u) => u.email === email)) {
        throw new Error('duplicate key value violates unique constraint "users_email_key"');
      }
      const row = { id: `u${db.users.length + 1}`, email, password_hash: params[1], role: params[2] };
      db.users.push(row);
      return { rows: [row] };
    }

    if (/^INSERT INTO students/i.test(s)) {
      const cols = s.match(/INSERT INTO students \(([^)]+)\)/i)[1].split(',').map((c) => c.trim());
      for (const c of cols) {
        if (!STUDENT_COLUMNS.has(c)) throw new Error(`column "${c}" of relation "students" does not exist`);
      }
      const row = {};
      cols.forEach((c, i) => { row[c] = params[i]; });
      for (const c of NOT_NULL_STUDENT) {
        if (row[c] === undefined || row[c] === null) {
          throw new Error(`null value in column "${c}" of relation "students" violates not-null constraint`);
        }
      }
      if (!LEVEL_ENUM.includes(row.level)) {
        throw new Error(`invalid input value for enum student_level: "${row.level}"`);
      }
      if (db.students.some((x) => x.matriculation_number === row.matriculation_number)) {
        throw new Error('duplicate key value violates unique constraint "students_matriculation_number_key"');
      }
      db.students.push(row);
      return { rows: [row] };
    }

    if (/^INSERT INTO assessors/i.test(s)) {
      const row = { user_id: params[0], first_name: params[1], last_name: params[2], staff_id: params[3], department: params[4] };
      if (!row.staff_id) throw new Error('null value in column "staff_id" violates not-null constraint');
      if (db.assessors.some((a) => a.staff_id === row.staff_id)) {
        throw new Error('duplicate key value violates unique constraint "assessors_staff_id_key"');
      }
      db.assessors.push(row);
      return { rows: [row] };
    }

    if (/^INSERT INTO administrators/i.test(s)) {
      const row = { user_id: params[0], staff_id: params[3] };
      db.administrators.push(row);
      return { rows: [row] };
    }

    if (/^SELECT id FROM users WHERE LOWER\(email\)/i.test(s)) {
      return { rows: db.users.filter((u) => u.email === params[0]).map((u) => ({ id: u.id })) };
    }
    if (/FROM users u LEFT JOIN students/i.test(s)) return { rows: [] };
    if (/^SELECT .* FROM users WHERE/i.test(s)) return { rows: [] };
    if (/^DELETE FROM users/i.test(s)) {
      db.users = db.users.filter((u) => u.id !== params[0]);
      return { rows: [] };
    }
    if (/to_regclass/i.test(s)) return { rows: [{ t: 'cbme_schema_version' }] };
    return { rows: [] };
  }
}

const origLoad = Module._load;
Module._load = function (request) {
  if (request === 'pg') return { Pool: FakePool };
  return origLoad.apply(this, arguments);
};

const handler = require(path.join(ROOT, 'api', 'index.js'));
const server = http.createServer(handler);

const jwt = require(path.join(ROOT, 'node_modules', 'jsonwebtoken'));
const ADMIN_TOKEN =
  'Bearer ' +
  jwt.sign({ sub: 'admin-001', role: 'admin', email: 'a@unth', typ: 'access' }, process.env.JWT_SECRET, {
    issuer: 'unth-clinical-rotation-platform',
    expiresIn: '1h',
  });

function req(method, p, body, headers = {}) {
  return new Promise((resolve) => {
    const payload = body ? JSON.stringify(body) : null;
    const r = http.request(
      { host: '127.0.0.1', port: server.address().port, method, path: p,
        headers: { 'content-type': 'application/json', ...headers, ...(payload ? { 'content-length': Buffer.byteLength(payload) } : {}) } },
      (res) => {
        let data = '';
        res.on('data', (c) => (data += c));
        res.on('end', () => {
          let json; try { json = JSON.parse(data); } catch { json = data.slice(0, 160); }
          resolve({ status: res.statusCode, json });
        });
      }
    );
    if (payload) r.write(payload);
    r.end();
  });
}

let fails = 0;
const check = (label, cond, extra) => {
  if (!cond) fails++;
  console.log(`${cond ? 'PASS' : 'FAIL'}  ${label}${cond ? '' : `  → ${JSON.stringify(extra).slice(0, 260)}`}`);
};

server.listen(0, async () => {
  // ---- bulk upload -------------------------------------------------------
  const bulk = await req('POST', '/api/admin/users/bulk-upload', {
    users: [
      { email: 'Ada@unth.edu.ng', role: 'student', first_name: 'Ada', last_name: 'Obi', matric_number: 'MED/2024/001', level: 'surgery_1' },
      { email: 'ben@unth.edu.ng', role: 'student', first_name: 'Ben', last_name: 'Eze', matriculation_number: 'MED/2024/002', level: 'Surgery II' },
      { email: 'cara@unth.edu.ng', role: 'student', first_name: 'Cara', last_name: 'Udo', matric_number: 'MED/2024/003' },
      { email: 'dr.dan@unth.edu.ng', role: 'assessor', first_name: 'Dan', last_name: 'Nwosu', department: 'Surgery' },
      { email: 'dr.eve@unth.edu.ng', role: 'assessor', first_name: 'Eve', last_name: 'Ola', department: 'Surgery' },
      { email: 'ADA@unth.edu.ng', role: 'student', first_name: 'Dup', last_name: 'Licate', matric_number: 'MED/2024/009' },
      { email: 'zoe@unth.edu.ng', role: 'wizard', first_name: 'Zoe', last_name: 'X' },
      { email: 'ken@unth.edu.ng', role: 'student', first_name: 'Ken', last_name: 'Ali', matric_number: 'MED/2024/001' },
    ],
  }, { Authorization: ADMIN_TOKEN });

  check('bulk upload responds 200', bulk.status === 200, bulk);
  check('5 valid rows created', bulk.json?.data?.success?.length === 5, bulk.json?.data);
  check('students actually inserted', db.students.length === 3, db.students);
  check('assessors actually inserted', db.assessors.length === 2, db.assessors);

  check('explicit level is honoured', db.students[0].level === 'surgery_1', db.students[0]);
  check('"Surgery II" maps to the enum', db.students[1].level === 'surgery_2', db.students[1]);
  check('missing level defaults instead of violating NOT NULL', db.students[2].level === 'surgery_1', db.students[2]);
  check('matric_number and matriculation_number both accepted',
    db.students[0].matriculation_number === 'MED/2024/001' && db.students[1].matriculation_number === 'MED/2024/002', db.students);

  check('passwords are bcrypt-hashed, not plaintext',
    db.users.every((u) => /^\$2[aby]\$/.test(u.password_hash)), db.users.map((u) => u.password_hash.slice(0, 8)));
  const temp = bulk.json.data.success[0].temporary_password;
  check('temporary password is returned to the admin', typeof temp === 'string' && temp.length >= 8, temp);
  const bcrypt = require(path.join(ROOT, 'node_modules', 'bcryptjs'));
  check('returned temp password verifies against the stored hash',
    await bcrypt.compare(temp, db.users[0].password_hash), null);

  check('emails normalised to lower case', db.users[0].email === 'ada@unth.edu.ng', db.users[0]);
  const reasons = (bulk.json.data.failed || []).map((f) => f.reason).join(' | ');
  check('case-variant duplicate rejected', /Already exists/.test(reasons), reasons);
  check('unknown role rejected', /Unknown role "wizard"/.test(reasons), reasons);
  check('duplicate matric number rejected', /matriculation_number/.test(reasons), reasons);
  check('blank staff_id does not collide across assessors',
    db.assessors[0].staff_id !== db.assessors[1].staff_id, db.assessors);
  check('no orphaned users left by failed rows', db.users.length === 5, db.users.map((u) => u.email));

  // ---- registration ------------------------------------------------------
  const reg = await req('POST', '/api/auth/register', {
    email: 'new@unth.edu.ng', password: 'secret123', firstName: 'New', lastName: 'Student',
    matricNumber: 'MED/2024/100', level: 'Surgery III', phoneNumber: '080',
  });
  check('registration succeeds', reg.status === 200 && reg.json.success === true, reg);
  const registered = db.students.find((s) => s.matriculation_number === 'MED/2024/100');
  check('registration maps "Surgery III" to the enum', registered && registered.level === 'surgery_3', registered);

  const dupMatric = await req('POST', '/api/auth/register', {
    email: 'other@unth.edu.ng', password: 'secret123', firstName: 'Other', lastName: 'Person',
    matricNumber: 'MED/2024/100', level: 'surgery_1', phoneNumber: '080',
  });
  check('duplicate matric returns 409', dupMatric.status === 409, dupMatric);
  check('duplicate matric is not mislabelled as a duplicate email',
    /matriculation number/i.test(dupMatric.json.message || ''), dupMatric.json);
  check('failed registration leaves no orphaned user',
    !db.users.some((u) => u.email === 'other@unth.edu.ng'), db.users.map((u) => u.email));

  console.log(fails ? `\n${fails} FAILURE(S)` : '\nAll user-creation tests passed');
  server.close();
  process.exit(fails ? 1 : 0);
});
