#!/usr/bin/env node
// Writes packages/backend/database/migrations/001_cbme_v2.sql from the
// canonical DDL in api/cbme-schema.js, so operators running psql by hand and
// the API's self-migration can never diverge.
//
//   npm run db:cbme-sql

const fs = require('fs');
const path = require('path');

const { DDL, ENUM_EXTENSIONS } = require(path.join(__dirname, '..', 'api', 'cbme-schema.js'));
const target = path.join(__dirname, '..', 'packages', 'backend', 'database', 'migrations', '001_cbme_v2.sql');

// psql executes each statement separately, so the enum extensions are safe to
// append here even though the API has to run them outside the batched DDL.
const sql = `${DDL}
-- ============================================================================
-- 11. ENUM EXTENSIONS
--     Attendance is recorded for every activity in the CBME framework.
--     Run these individually — ALTER TYPE ... ADD VALUE cannot run inside a
--     transaction block on PostgreSQL below 12.
-- ============================================================================

${ENUM_EXTENSIONS.map((s) => `${s};`).join('\n')}
`;

fs.mkdirSync(path.dirname(target), { recursive: true });
fs.writeFileSync(target, sql, 'utf8');

console.log(`Wrote ${path.relative(process.cwd(), target)} (${sql.length} bytes)`);
