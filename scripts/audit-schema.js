// Static audit: every column named in an INSERT/UPDATE in the API must exist
// in the schema. This is the exact class of bug that broke bulk upload.
const fs = require('fs');
const path = require('path');

const ROOT = path.join(__dirname, '..');

// ---- build table -> columns from all DDL ---------------------------------
const ddlFiles = [
  'packages/backend/database/schema.sql',
  'packages/backend/database/seeds/100_cme_schema_update.sql',
  'packages/backend/database/migrations/001_cbme_v2.sql',
];

const tables = {};

for (const f of ddlFiles) {
  const sql = fs.readFileSync(path.join(ROOT, f), 'utf8');

  // CREATE TABLE [IF NOT EXISTS] name ( ... );
  const re = /CREATE TABLE (?:IF NOT EXISTS )?([a-z_]+)\s*\(([\s\S]*?)\n\);/gi;
  let m;
  while ((m = re.exec(sql))) {
    const name = m[1];
    const body = m[2];
    const cols = new Set(tables[name] || []);
    for (const rawLine of body.split('\n')) {
      const line = rawLine.trim().replace(/--.*$/, '').trim();
      if (!line) continue;
      if (/^(CONSTRAINT|PRIMARY KEY|FOREIGN KEY|UNIQUE|CHECK)\b/i.test(line)) continue;
      const cm = line.match(/^([a-z_]+)\s+/i);
      if (cm) cols.add(cm[1].toLowerCase());
    }
    tables[name] = [...cols];
  }

  // ALTER TABLE x ADD COLUMN [IF NOT EXISTS] col
  const alter = /ALTER TABLE ([a-z_]+) ADD COLUMN (?:IF NOT EXISTS )?([a-z_]+)/gi;
  while ((m = alter.exec(sql))) {
    const t = m[1], c = m[2].toLowerCase();
    tables[t] = tables[t] || [];
    if (!tables[t].includes(c)) tables[t].push(c);
  }
}

// ---- scan API source -----------------------------------------------------
const sources = ['api/index.js', 'api/cbme.js'];
const problems = [];
let insertsChecked = 0;
let updatesChecked = 0;

for (const src of sources) {
  const code = fs.readFileSync(path.join(ROOT, src), 'utf8');
  const lines = code.split('\n');

  // INSERT INTO table (col, col, ...)
  const insRe = /INSERT INTO\s+([a-z_]+)\s*\(([^)]*)\)/gi;
  let m;
  while ((m = insRe.exec(code))) {
    const table = m[1];
    if (!tables[table]) { problems.push({ src, table, col: '(whole table)', kind: 'unknown table', line: lineOf(code, m.index) }); continue; }
    insertsChecked++;
    for (const c of m[2].split(',').map((x) => x.trim().toLowerCase()).filter(Boolean)) {
      if (!/^[a-z_]+$/.test(c)) continue;
      if (!tables[table].includes(c)) {
        problems.push({ src, table, col: c, kind: 'INSERT column missing', line: lineOf(code, m.index) });
      }
    }
  }

  // UPDATE table SET col = ..., col = ...
  const updRe = /UPDATE\s+([a-z_]+)\s+SET\s+([\s\S]{0,600}?)(?:\bWHERE\b|`|'\s*,|\)\s*;)/gi;
  while ((m = updRe.exec(code))) {
    const table = m[1];
    if (!tables[table]) { problems.push({ src, table, col: '(whole table)', kind: 'unknown table', line: lineOf(code, m.index) }); continue; }
    updatesChecked++;
    for (const assign of m[2].split(',')) {
      const cm = assign.trim().match(/^([a-z_]+)\s*=/i);
      if (!cm) continue;
      const c = cm[1].toLowerCase();
      if (!tables[table].includes(c)) {
        problems.push({ src, table, col: c, kind: 'UPDATE column missing', line: lineOf(code, m.index) });
      }
    }
  }

  function lineOf(text, idx) {
    return text.slice(0, idx).split('\n').length;
  }
  void lines;
}

console.log(`Tables known: ${Object.keys(tables).length}`);
console.log(`INSERT statements checked: ${insertsChecked}`);
console.log(`UPDATE statements checked: ${updatesChecked}`);
console.log('');

if (!problems.length) {
  console.log('No schema/code column mismatches found.');
} else {
  console.log(`${problems.length} POTENTIAL MISMATCH(ES):\n`);
  for (const p of problems) {
    console.log(`  ${p.src}:${p.line}  ${p.kind}  →  ${p.table}.${p.col}`);
  }
}

// ---- ON CONFLICT targets must match a declared UNIQUE constraint ----------
// A mismatch here is not caught by any unit test — it fails only at runtime,
// against a real database, at the moment the upsert first collides.
(function auditOnConflict() {
  const allDdl = ddlFiles.map((f) => fs.readFileSync(path.join(ROOT, f), 'utf8')).join('\n');
  const uniques = {};

  const ct = /CREATE TABLE (?:IF NOT EXISTS )?([a-z_]+)\s*\(([\s\S]*?)\n\);/gi;
  let m;
  while ((m = ct.exec(allDdl))) {
    const t = m[1];
    const body = m[2];
    uniques[t] = uniques[t] || [];
    const ur = /UNIQUE\s*\(([^)]+)\)/gi;
    let u;
    while ((u = ur.exec(body))) uniques[t].push(u[1].split(',').map((s) => s.trim()).sort().join(','));
    const pk = body.match(/^\s*([a-z_]+)[^,\n]*PRIMARY KEY/mi);
    if (pk) uniques[t].push(pk[1]);
  }
  const ciu = /CREATE UNIQUE INDEX (?:IF NOT EXISTS )?[a-z_]+ ON ([a-z_]+)\s*\(([^)]+)\)/gi;
  while ((m = ciu.exec(allDdl))) {
    uniques[m[1]] = uniques[m[1]] || [];
    uniques[m[1]].push(m[2].split(',').map((s) => s.trim()).sort().join(','));
  }

  let bad = 0;
  let ok = 0;
  for (const src of sources) {
    const code = fs.readFileSync(path.join(ROOT, src), 'utf8');
    const re = /INSERT INTO\s+([a-z_]+)[\s\S]{0,900}?ON CONFLICT\s*\(([^)]+)\)/gi;
    while ((m = re.exec(code))) {
      const t = m[1];
      const cols = m[2].split(',').map((s) => s.trim()).sort().join(',');
      if ((uniques[t] || []).includes(cols)) {
        ok++;
      } else {
        bad++;
        const line = code.slice(0, m.index).split('\n').length;
        console.log(`  ${src}:${line}  ON CONFLICT  →  ${t}(${cols}) has no matching UNIQUE constraint`);
      }
    }
  }
  console.log('');
  console.log(bad ? `${bad} ON CONFLICT MISMATCH(ES)` : `All ${ok} ON CONFLICT targets match a declared UNIQUE constraint.`);
  if (bad || problems.length) process.exitCode = 1;
})();
