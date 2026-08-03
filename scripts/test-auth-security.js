// Security regression tests for authentication and authorisation.
//
// Each case below corresponds to a hole that was demonstrably exploitable
// before the fix. If any of these fail, the API is trivially bypassable.
const http = require('http');
const path = require('path');
const Module = require('module');

const ROOT = path.join(__dirname, '..');
process.env.DATABASE_URL = 'postgres://stub/stub';
process.env.JWT_SECRET = 'test-secret-not-used-anywhere-real-0123456789';
delete process.env.ENABLE_DEMO_LOGIN;

const bcrypt = require(path.join(ROOT, 'node_modules', 'bcryptjs'));
const jwt = require(path.join(ROOT, 'node_modules', 'jsonwebtoken'));

// A real administrator account in the "database".
const ADMIN_PASSWORD = 'correct-horse-battery';
const adminRow = {
  id: '11111111-1111-1111-1111-111111111111',
  email: 'realadmin@unth.edu.ng',
  role: 'admin',
  password_hash: bcrypt.hashSync(ADMIN_PASSWORD, 10),
  first_name: 'Real',
  last_name: 'Admin',
};

const audit = [];

class FakePool {
  async query(text, params = []) {
    const s = String(text).replace(/\s+/g, ' ').trim();
    if (/FROM users u LEFT JOIN students/i.test(s)) {
      return { rows: String(params[0]).toLowerCase() === adminRow.email ? [adminRow] : [] };
    }
    if (/^SELECT id, email FROM users WHERE LOWER\(email\)/i.test(s)) {
      return { rows: String(params[0]).toLowerCase() === adminRow.email ? [{ id: adminRow.id, email: adminRow.email }] : [] };
    }
    if (/^INSERT INTO audit_logs/i.test(s)) { audit.push(params[1]); return { rows: [] }; }
    if (/to_regclass/i.test(s)) return { rows: [{ t: 'cbme_schema_version' }] };
    return { rows: [] };
  }
}

const origLoad = Module._load;
Module._load = function (request) {
  if (request === 'pg') return { Pool: FakePool };
  return origLoad.apply(this, arguments);
};

const server = http.createServer(require(path.join(ROOT, 'api', 'index.js')));

function req(method, p, body, headers = {}) {
  return new Promise((resolve) => {
    const payload = body ? JSON.stringify(body) : null;
    const r = http.request(
      { host: '127.0.0.1', port: server.address().port, method, path: p,
        headers: { 'content-type': 'application/json', ...headers, ...(payload ? { 'content-length': Buffer.byteLength(payload) } : {}) } },
      (res) => {
        let d = '';
        res.on('data', (c) => (d += c));
        res.on('end', () => {
          let json; try { json = JSON.parse(d); } catch { json = d.slice(0, 160); }
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
  const detail = cond ? '' : `  → ${String(JSON.stringify(extra ?? null)).slice(0, 240)}`;
  console.log(`${cond ? 'PASS' : 'FAIL'}  ${label}${detail}`);
};

const sign = (claims, opts = {}) =>
  jwt.sign(claims, opts.secret || process.env.JWT_SECRET, {
    issuer: opts.issuer || 'unth-clinical-rotation-platform',
    expiresIn: opts.expiresIn || '1h',
  });
const bearer = (t) => ({ Authorization: `Bearer ${t}` });

server.listen(0, async () => {
  // ---- 1. Legitimate login still works ----------------------------------
  const login = await req('POST', '/api/auth/login', { email: adminRow.email, password: ADMIN_PASSWORD });
  check('valid credentials log in', login.status === 200 && !!login.json.data.accessToken, login);
  const access = login.json?.data?.accessToken;
  const refresh = login.json?.data?.refreshToken;

  check('issued token is a signed JWT, not base64 JSON',
    typeof access === 'string' && access.split('.').length === 3 && !access.startsWith('usr.'), access);
  check('wrong password is rejected',
    (await req('POST', '/api/auth/login', { email: adminRow.email, password: 'wrong' })).status === 401);
  check('the removed hardcoded password no longer works',
    (await req('POST', '/api/auth/login', { email: 'admin@unth.edu.ng', password: 'blackvelvet' })).status === 401);

  // ---- 2. Token forgery --------------------------------------------------
  const legacyForged = 'usr.' + Buffer.from(JSON.stringify({ id: 'x', role: 'admin' })).toString('base64url');
  check('legacy unsigned token is rejected',
    (await req('GET', '/api/cbme/audit-log', null, bearer(legacyForged))).status === 401);
  check('"admin-token-" backdoor is closed',
    (await req('GET', '/api/cbme/audit-log', null, bearer('admin-token-x'))).status === 401);
  check('token signed with the wrong secret is rejected',
    (await req('GET', '/api/cbme/audit-log', null,
      bearer(sign({ sub: 'x', role: 'admin', typ: 'access' }, { secret: 'attacker-secret-aaaaaaaaaaaaaaaa' })))).status === 401);
  check('token with a foreign issuer is rejected',
    (await req('GET', '/api/cbme/audit-log', null,
      bearer(sign({ sub: 'x', role: 'admin', typ: 'access' }, { issuer: 'evil' })))).status === 401);
  check('expired token is rejected',
    (await req('GET', '/api/cbme/audit-log', null,
      bearer(sign({ sub: 'x', role: 'admin', typ: 'access' }, { expiresIn: '-1s' })))).status === 401);

  // The core exploit: a student re-encoding their own token as admin.
  const studentToken = sign({ sub: 'stu-1', role: 'student', typ: 'access' });
  const tamperedPayload = Buffer.from(JSON.stringify({ sub: 'stu-1', role: 'admin', typ: 'access' })).toString('base64url');
  const tampered = `${studentToken.split('.')[0]}.${tamperedPayload}.${studentToken.split('.')[2]}`;
  check('student cannot rewrite their own role to admin',
    (await req('GET', '/api/cbme/audit-log', null, bearer(tampered))).status === 401);
  check('unmodified student token is still refused admin routes (403, not 200)',
    (await req('GET', '/api/cbme/audit-log', null, bearer(studentToken))).status === 403);

  // ---- 3. Unauthenticated access to admin routes -------------------------
  const anonCreate = await req('POST', '/api/admin/users', { email: 'evil@x.com', role: 'admin' });
  check('anonymous cannot create an administrator', anonCreate.status === 401, anonCreate);
  check('student cannot create an administrator',
    (await req('POST', '/api/admin/users', { email: 'evil@x.com', role: 'admin' }, bearer(studentToken))).status === 403);
  check('student cannot reset another account\'s password',
    (await req('POST', `/api/admin/users/${adminRow.id}/reset-password`, {}, bearer(studentToken))).status === 403);
  check('anonymous cannot bulk-upload users',
    (await req('POST', '/api/admin/users/bulk-upload', { users: [] })).status === 401);
  check('anonymous cannot read the debug environment',
    (await req('GET', '/api/debug-env')).status === 401);
  check('anonymous cannot trigger a migration',
    (await req('POST', '/api/cbme/migrate')).status === 401);

  // Assessors keep the roster read they legitimately need.
  const assessorToken = sign({ sub: 'ass-1', role: 'assessor', typ: 'access' });
  check('assessor may still GET /api/admin/users',
    (await req('GET', '/api/admin/users?role=student', null, bearer(assessorToken))).status === 200);
  check('assessor may NOT delete a user',
    (await req('DELETE', `/api/admin/users/${adminRow.id}`, null, bearer(assessorToken))).status === 403);

  // ---- 4. Refresh & verify ----------------------------------------------
  check('refresh rejects an arbitrary string',
    (await req('POST', '/api/auth/refresh', { refreshToken: 'anything-at-all' })).status === 401);
  check('refresh rejects an ACCESS token used as a refresh token',
    (await req('POST', '/api/auth/refresh', { refreshToken: access })).status === 401);
  const refreshed = await req('POST', '/api/auth/refresh', { refreshToken: refresh });
  check('refresh accepts a genuine refresh token', refreshed.status === 200 && !!refreshed.json.data.accessToken, refreshed);
  check('verify rejects a bare Bearer header',
    (await req('GET', '/api/auth/verify', null, bearer('garbage'))).status === 401);
  check('verify accepts a genuine token',
    (await req('GET', '/api/auth/verify', null, bearer(access))).status === 200);

  // ---- 5. Password reset takeover ---------------------------------------
  const forgot = await req('POST', '/api/auth/forgot-password', { email: adminRow.email });
  check('forgot-password no longer returns a password',
    forgot.status === 200 && !forgot.json.temporary_password, forgot.json);
  check('forgot-password does not reset the account (no lockout)',
    bcrypt.compareSync(ADMIN_PASSWORD, adminRow.password_hash), null);
  check('password reset request is audit-logged', audit.includes('password_reset_requested'), audit);
  const unknown = await req('POST', '/api/auth/forgot-password', { email: 'nobody@nowhere.com' });
  check('forgot-password does not reveal whether an account exists',
    unknown.json.message === forgot.json.message, { a: unknown.json.message, b: forgot.json.message });

  // ---- 6. Demo login -----------------------------------------------------
  const demoAnon = await req('POST', '/api/auth/demo-login', { role: 'admin' });
  check('anonymous cannot reach demo-login', demoAnon.status === 401, demoAnon);
  const demoStudent = await req('POST', '/api/auth/demo-login', { role: 'admin' }, bearer(studentToken));
  check('a student cannot mint a demo admin session', demoStudent.status === 403, demoStudent);
  const demoAdmin = await req('POST', '/api/auth/demo-login', { role: 'admin' }, bearer(access));
  check('demo-login is disabled by default even for an admin', demoAdmin.status === 404, demoAdmin);

  // ---- 7. Public routes stay public -------------------------------------
  check('health check needs no token', (await req('GET', '/api/health')).status === 200);

  // ---- 8. Misconfiguration must fail closed ------------------------------
  // The secret is read per request, so it can be removed in-flight. The API
  // must refuse to authenticate rather than silently accept anything.
  const realSecret = process.env.JWT_SECRET;

  delete process.env.JWT_SECRET;
  check('with no JWT_SECRET, protected routes return 503 (not open access)',
    (await req('GET', '/api/cbme/audit-log', null, bearer(access))).status === 503);
  check('with no JWT_SECRET, login refuses rather than issuing a token',
    (await req('POST', '/api/auth/login', { email: adminRow.email, password: ADMIN_PASSWORD })).status === 503);

  process.env.JWT_SECRET = 'your-super-secret-jwt-key-change-in-production';
  check('the .env.example placeholder secret is refused',
    (await req('GET', '/api/cbme/audit-log', null, bearer(access))).status === 503);

  process.env.JWT_SECRET = 'short';
  check('a too-short secret is refused',
    (await req('GET', '/api/cbme/audit-log', null, bearer(access))).status === 503);

  process.env.JWT_SECRET = realSecret;
  check('service recovers once the secret is restored',
    (await req('GET', '/api/auth/verify', null, bearer(access))).status === 200);

  console.log(fails ? `\n${fails} FAILURE(S)` : '\nAll auth security tests passed');
  server.close();
  process.exit(fails ? 1 : 0);
});
