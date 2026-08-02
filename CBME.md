# Competency-Based Medical Education (CBME) v2

The platform manages a clinical posting end-to-end — registration, rotation setup,
team allocation, seminar allocation, attendance, clinical assessment, learning
activity, competency scoring, sign-out eligibility, awards and certificates —
without any manual calculation.

---

## 1. The scoring framework

| Domain | Weight | Minimum required (2/3) |
|---|---:|---:|
| Attendance (ward, clinic, theatre, calls, grand rounds, departmental meetings) | 50% | **33.33%** |
| Seminar presentation | 10% | **6.67%** |
| Clinical competency (clerking, ward presentation, clinical judgement, theatre, wound dressing, conduct) | 20% | **13.33%** |
| Academic learning (CME reading, self-assessment quizzes, daily CBT) | 20% | **13.33%** |
| **Total** | **100%** | |

**The sign-out rule.** A student must reach at least two-thirds of the available
score in **every** domain. Falling short in a single domain makes them *Not
Eligible for Sign-Out* regardless of aggregate score — an 82% aggregate with a
weak academic domain is still a refusal. The API enforces this server-side:
`POST /api/rotations/:id/sign-out` returns **422** with the deficient domains and
remediation advice. Only an administrator can `override`, and the override is
written to the audit log.

### How each domain is computed

- **Attendance** — over every session held to date. `present` = full credit,
  `late` = half credit, `absent`/no record = nil. `excused` is removed from both
  numerator and denominator, so it neither helps nor harms.
- **Seminar** — mean percentage of the student's assessed seminars (nine rubric
  criteria, each scored 0–10).
- **Clinical** — each clinical activity type that has been assessed **at least
  once** contributes equally. A student is not penalised for an activity the unit
  did not run.
- **Academic** — CME reading completion, self-assessment quiz average and daily
  CBT average, weighted equally (one third each).

All rubric criteria are scored 0–10 and converted to a percentage automatically,
so rubrics of different lengths remain comparable.

---

## 2. Applying the database migration

The schema is additive and idempotent. Two equivalent routes:

> **Status: applied.** Verified against the live database (PostgreSQL 17.10) —
> 13 tables, 31 added columns and 4 enum values, all present. Re-running is a
> confirmed no-op.

**Script** (recommended — connects, applies and verifies):

```bash
npm run db:cbme-check     # report current state, change nothing
npm run db:cbme-migrate   # apply and verify
```

**Automatic** — the API applies it on first CBME request per cold start, or on
demand (admin token required):

```bash
curl -X POST https://<host>/api/cbme/migrate -H "Authorization: Bearer <admin token>"
```

**By hand** — for operators with psql access:

```bash
psql "$DATABASE_URL" -f packages/backend/database/migrations/001_cbme_v2.sql
```

### Schema note

This deployment does **not** use the `public` schema. `search_path` is
`crp, public` and the application's tables live in **`crp`**; `public` holds an
unrelated application sharing the same database instance. Any query or probe
that hardcodes `public.` will silently miss. Keep table references unqualified
so they resolve through `search_path`.

The instance allows only **25 connections** and is shared, so the API pool is
deliberately capped at `max: 1`. Do not raise it or parallelise the scoring
engine's query batch — it would exhaust the shared budget.

The canonical DDL lives in `api/cbme-schema.js` (so the Vercel bundler traces it
as a dependency). Regenerate the `.sql` file after editing it — never edit the
`.sql` directly:

```bash
npm run db:cbme-sql
```

---

## 3. Running a posting

1. **Rotation Setup** (`/admin/rotation-setup`) — specialty, unit, academic
   session, batch, staffing, clinic/ward/theatre/seminar days, examination and
   sign-out dates.
2. **Allocate teams** — students are distributed into the five competitive
   houses (Spartans, Myrmidons, Legionnaires, Immortals, Argonauts). Each new
   student joins the smallest team, so intake stays balanced. Allocation is
   seeded per-rotation and therefore reproducible.
3. **Add seminar topics** (one per line) and **allocate** — one student per
   topic, no duplicates until every topic is taken, nobody gets a second topic
   until everyone has one. Withdrawal reassigns the topic to the student
   carrying the lightest seminar load.
4. **Assess** (`/assessor/assess`) — consultants score the structured rubric for
   any activity. Every criterion must be scored; the write is audit-logged
   against the assessor's account.
5. **Competency Board** (`/admin/competency`) — live eligibility per student,
   per-domain pass/fail, recompute-and-snapshot, task reminders, sign-out and
   certificates.
6. **Awards** (`/admin/awards`) — compute the end-of-rotation awards, then run
   the animated ceremony. The winning team is written to the permanent Hall of
   Fame and every member can print an Individual Certificate of Excellence.

---

## 4. Verification

```bash
npm run test:api     # everything below
npm run test:cbme    # scoring engine + CBME HTTP layer
npm run test:users   # user-creation regression tests
```

`test:cbme` covers the scoring engine (domain weights, the two-thirds rule,
late/excused attendance handling, group averaging, ranking) and the HTTP layer
(rubric validation, role enforcement, anonymous-read blocking, sign-out
refusal).

`test:users` guards the registration and bulk-upload paths against a stub that
enforces the real schema constraints — unknown columns, `students.level`
NOT NULL, and the UNIQUE indexes on email and matriculation number.

---

## 5. Auditability

`assessment_audit_log` records every assessment written, sign-out granted,
override applied, and every group/seminar/award computation, with the acting
user, role and full payload. `competency_snapshots` stores the computed
breakdown so the score a student saw can be reproduced later.
`GET /api/cbme/audit-log` (admin only) exposes the trail.
