// ============================================================================
// CBME v2 — Competency-Based Medical Education layer
//
// Registered onto the main Express app by api/index.js. Everything here is
// additive: groups, seminars, clinical assessment, the competency scoring
// engine, sign-out eligibility, awards and analytics.
//
// The scoring framework is fixed by academic governance:
//   Attendance 50% | Seminar 10% | Clinical Competency 20% | Academic 20%
// and a student must reach two-thirds of EACH domain to be signed out.
// ============================================================================

const { DDL, ENUM_EXTENSIONS } = require('./cbme-schema');

// ============================================================================
// CONSTANTS — competency framework
// ============================================================================

const WEIGHTS = {
  attendance: 50,
  seminar: 10,
  clinical: 20,
  academic: 20,
};

// Two-thirds of the available score in each domain.
const THRESHOLD_RATIO = 2 / 3;

const DOMAIN_META = [
  { key: 'attendance', label: 'Attendance', weight: WEIGHTS.attendance, description: 'Ward rounds, clinics, theatre, calls, grand rounds' },
  { key: 'seminar', label: 'Seminar Presentation', weight: WEIGHTS.seminar, description: 'Structured rubric assessment of the allocated seminar topic' },
  { key: 'clinical', label: 'Clinical Competency', weight: WEIGHTS.clinical, description: 'Clerking, ward presentation, clinical judgement, theatre, wound dressing' },
  { key: 'academic', label: 'Academic Learning', weight: WEIGHTS.academic, description: 'CME reading, self-assessment quizzes and daily CBT' },
];

// The five competitive learning teams.
const HOUSES = [
  {
    code: 'spartans',
    name: 'Spartans',
    motto: 'Come back with your shield, or on it.',
    meaning: 'Elite warriors of ancient Sparta renowned for unmatched discipline, endurance, courage, resilience and excellence under pressure.',
    virtues: ['Discipline', 'Leadership', 'Professionalism', 'Excellence'],
    color: '#b91c1c',
  },
  {
    code: 'myrmidons',
    name: 'Myrmidons',
    motto: 'Loyal unto the last call.',
    meaning: 'Legendary warriors led by Achilles in Greek mythology, celebrated for loyalty, precision, courage and unwavering commitment.',
    virtues: ['Loyalty', 'Teamwork', 'Commitment', 'Reliability'],
    color: '#1d4ed8',
  },
  {
    code: 'legionnaires',
    name: 'Legionnaires',
    motto: 'Order conquers chaos.',
    meaning: 'Inspired by the Roman Legions, famous for organization, tactical excellence, discipline and collective strength.',
    virtues: ['Organization', 'Clinical precision', 'Accountability', 'Team coordination'],
    color: '#b45309',
  },
  {
    code: 'immortals',
    name: 'Immortals',
    motto: 'Always ten thousand strong.',
    meaning: 'Named after the elite Persian Imperial Guard whose numbers were always maintained at ten thousand, symbolizing consistency, readiness and excellence.',
    virtues: ['Consistency', 'Readiness', 'Perseverance', 'Professional competence'],
    color: '#6d28d9',
  },
  {
    code: 'argonauts',
    name: 'Argonauts',
    motto: 'Seek the fleece; question everything.',
    meaning: 'The legendary explorers who journeyed with Jason in search of the Golden Fleece, representing curiosity, discovery, intelligence and innovation.',
    virtues: ['Curiosity', 'Innovation', 'Learning', 'Clinical reasoning'],
    color: '#047857',
  },
];

// Structured rubrics. Every criterion is scored 0–10 by the assessor; the
// engine converts the total to a percentage so rubrics of different lengths
// remain comparable.
const CRITERION_MAX = 10;

const RUBRICS = {
  seminar: {
    label: 'Seminar Presentation',
    domain: 'seminar',
    criteria: [
      { key: 'knowledge', label: 'Knowledge of subject' },
      { key: 'presentation_skills', label: 'Presentation skills' },
      { key: 'communication', label: 'Communication' },
      { key: 'slide_quality', label: 'Slide quality' },
      { key: 'clinical_relevance', label: 'Clinical relevance' },
      { key: 'evidence_based', label: 'Evidence-based medicine' },
      { key: 'question_handling', label: 'Ability to answer questions' },
      { key: 'time_management', label: 'Time management' },
      { key: 'professionalism', label: 'Professionalism' },
    ],
  },
  clerking: {
    label: 'Clinical Clerking',
    domain: 'clinical',
    criteria: [
      { key: 'history', label: 'History taking' },
      { key: 'examination', label: 'Physical examination' },
      { key: 'clinical_reasoning', label: 'Clinical reasoning' },
      { key: 'diagnosis', label: 'Diagnosis' },
      { key: 'management', label: 'Management plan' },
      { key: 'presentation', label: 'Case presentation' },
      { key: 'professionalism', label: 'Professionalism' },
      { key: 'communication', label: 'Communication' },
    ],
  },
  ward_presentation: {
    label: 'Ward Round Presentation',
    domain: 'clinical',
    criteria: [
      { key: 'attendance_engagement', label: 'Attendance & engagement' },
      { key: 'patient_presentation', label: 'Patient presentation' },
      { key: 'clinical_judgement', label: 'Clinical judgement' },
      { key: 'decision_making', label: 'Decision making' },
      { key: 'professional_conduct', label: 'Professional conduct' },
    ],
  },
  clinical_judgement: {
    label: 'Clinical Judgement',
    domain: 'clinical',
    criteria: [
      { key: 'problem_identification', label: 'Problem identification' },
      { key: 'differential_reasoning', label: 'Differential reasoning' },
      { key: 'investigation_choice', label: 'Rational choice of investigations' },
      { key: 'prioritisation', label: 'Prioritisation & safety' },
      { key: 'evidence_application', label: 'Application of evidence' },
    ],
  },
  theatre: {
    label: 'Theatre Performance',
    domain: 'clinical',
    criteria: [
      { key: 'attendance_punctuality', label: 'Attendance & punctuality' },
      { key: 'case_preparation', label: 'Case preparation' },
      { key: 'anatomy_knowledge', label: 'Knowledge of anatomy' },
      { key: 'procedure_knowledge', label: 'Knowledge of procedure' },
      { key: 'sterility', label: 'Sterility' },
      { key: 'scrubbing', label: 'Scrubbing technique' },
      { key: 'instruments', label: 'Instrument identification' },
      { key: 'assistant_skills', label: 'Assistant skills' },
      { key: 'operative_understanding', label: 'Operative understanding' },
      { key: 'professional_conduct', label: 'Professional conduct' },
    ],
  },
  wound_dressing: {
    label: 'Wound Dressing',
    domain: 'clinical',
    criteria: [
      { key: 'preparation', label: 'Preparation' },
      { key: 'aseptic_technique', label: 'Aseptic technique' },
      { key: 'wound_assessment', label: 'Assessment of wound' },
      { key: 'dressing_selection', label: 'Dressing selection' },
      { key: 'application_technique', label: 'Application technique' },
      { key: 'documentation', label: 'Documentation' },
      { key: 'patient_communication', label: 'Patient communication' },
      { key: 'overall_competence', label: 'Overall competence' },
    ],
  },
  professional_conduct: {
    label: 'Professional Conduct',
    domain: 'clinical',
    criteria: [
      { key: 'punctuality', label: 'Punctuality & reliability' },
      { key: 'teamwork', label: 'Teamwork' },
      { key: 'respect', label: 'Respect for patients & colleagues' },
      { key: 'integrity', label: 'Integrity & honesty' },
      { key: 'responsiveness', label: 'Responsiveness to feedback' },
    ],
  },
};

const CLINICAL_TYPES = Object.keys(RUBRICS).filter((k) => RUBRICS[k].domain === 'clinical');

// Award catalogue — computed automatically at the end of the rotation.
const AWARD_CATALOGUE = [
  { code: 'overall_best_group', name: 'Overall Best Group', recipient: 'group', metric: 'group_total' },
  { code: 'best_student_overall', name: 'Best Student Overall', recipient: 'student', metric: 'total' },
  { code: 'best_seminar_presenter', name: 'Best Seminar Presenter', recipient: 'student', metric: 'seminar_pct' },
  { code: 'best_attendance', name: 'Best Attendance', recipient: 'student', metric: 'attendance_pct' },
  { code: 'best_clinical_clerk', name: 'Best Clinical Clerk', recipient: 'student', metric: 'type:clerking' },
  { code: 'best_clinical_reasoning', name: 'Best Clinical Reasoning', recipient: 'student', metric: 'type:clinical_judgement' },
  { code: 'best_ward_presentation', name: 'Best Ward Presentation', recipient: 'student', metric: 'type:ward_presentation' },
  { code: 'best_theatre_participation', name: 'Best Theatre Participation', recipient: 'student', metric: 'type:theatre' },
  { code: 'best_wound_dressing', name: 'Best Wound Dressing', recipient: 'student', metric: 'type:wound_dressing' },
  { code: 'best_professional_conduct', name: 'Best Professional Conduct', recipient: 'student', metric: 'type:professional_conduct' },
  { code: 'highest_cbt_score', name: 'Highest CBT Score', recipient: 'student', metric: 'cbt_pct' },
  { code: 'highest_cme_completion', name: 'Highest CME Completion', recipient: 'student', metric: 'cme_pct' },
  { code: 'most_improved_student', name: 'Most Improved Student', recipient: 'student', metric: 'improvement' },
];

// ============================================================================
// SMALL HELPERS
// ============================================================================

const round2 = (n) => Math.round((Number(n) || 0) * 100) / 100;
const pct = (num, den) => (den > 0 ? (Number(num) / Number(den)) * 100 : 0);

function shuffle(arr, seed) {
  // Deterministic Fisher–Yates so re-running an allocation on the same cohort
  // is reproducible and defensible.
  const a = arr.slice();
  let s = seed >>> 0 || 1;
  const next = () => {
    s ^= s << 13; s >>>= 0;
    s ^= s >> 17;
    s ^= s << 5; s >>>= 0;
    return s / 4294967296;
  };
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(next() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

function stringSeed(str) {
  let h = 2166136261;
  for (let i = 0; i < String(str).length; i++) {
    h ^= String(str).charCodeAt(i);
    h = Math.imul(h, 16777619);
  }
  return h >>> 0;
}

module.exports = function registerCbmeRoutes(app, ctx) {
  const { query, getAuthUser, resolveStudentId } = ctx;

  // --------------------------------------------------------------------------
  // Schema bootstrap — run the CBME migration once per warm lambda.
  // --------------------------------------------------------------------------
  let schemaReady = false;

  async function ensureSchema() {
    if (schemaReady) return true;
    try {
      // Unqualified on purpose — the deployment resolves through search_path
      // (the live database uses the "crp" schema, not "public"). Hardcoding a
      // schema here makes the probe always miss and re-runs the DDL on every
      // cold start.
      const marker = await query("SELECT to_regclass('cbme_schema_version') AS t");
      if (marker.rows[0] && marker.rows[0].t) {
        schemaReady = true;
        return true;
      }
    } catch (e) {
      // fall through and attempt to apply
    }
    try {
      await query(DDL);
      // Enum values must be added one statement at a time — ALTER TYPE ... ADD
      // VALUE cannot run inside the implicit transaction of a batched query on
      // older PostgreSQL. Each is independently optional.
      for (const stmt of ENUM_EXTENSIONS) {
        try {
          await query(stmt);
        } catch (e) {
          console.warn('CBME enum extension skipped:', stmt, '—', e.message);
        }
      }
      schemaReady = true;
      return true;
    } catch (e) {
      console.error('CBME schema bootstrap failed:', e.message);
      return false;
    }
  }

  // Wrap a handler so the schema exists before it runs and errors are uniform.
  function handler(fn) {
    return async (req, res) => {
      try {
        await ensureSchema();
        await fn(req, res);
      } catch (error) {
        console.error(`CBME ${req.method} ${req.path} error:`, error.message);
        if (!res.headersSent) {
          res.status(500).json({ success: false, message: error.message });
        }
      }
    };
  }

  async function audit(entry) {
    try {
      await query(
        `INSERT INTO assessment_audit_log
           (rotation_id, student_id, entity_type, entity_id, action, actor_user_id, actor_name, actor_role, payload)
         VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9)`,
        [
          entry.rotationId || null,
          entry.studentId || null,
          entry.entityType,
          entry.entityId || null,
          entry.action,
          entry.actorUserId || null,
          entry.actorName || null,
          entry.actorRole || null,
          JSON.stringify(entry.payload || {}),
        ]
      );
    } catch (e) {
      console.error('audit write failed:', e.message);
    }
  }

  function requireRole(req, res, roles) {
    const auth = getAuthUser(req);
    if (!auth) {
      res.status(401).json({ success: false, message: 'Authentication required' });
      return null;
    }
    if (roles && roles.length && !roles.includes(auth.role)) {
      res.status(403).json({ success: false, message: 'You do not have permission to perform this action' });
      return null;
    }
    return auth;
  }

  // Cohort-wide data (other students' scores, rosters, clinical assignments) is
  // never served to an unauthenticated caller.
  const requireAuth = (req, res) => requireRole(req, res, null);

  // Resolve the assessors.id row (if any) for the logged-in user.
  async function resolveAssessor(auth) {
    if (!auth || !auth.id) return null;
    try {
      const r = await query(
        'SELECT id, first_name, last_name, title FROM assessors WHERE user_id = $1',
        [auth.id]
      );
      if (!r.rows.length) return null;
      const a = r.rows[0];
      return { id: a.id, name: `${a.title || ''} ${a.first_name} ${a.last_name}`.trim() };
    } catch (e) {
      return null;
    }
  }

  // The rotation a student is currently posted to.
  async function activeRotationFor(studentId) {
    const r = await query(
      `SELECT sr.rotation_id, r.name, r.start_date, r.end_date, r.category_id
         FROM student_rotations sr
         JOIN rotations r ON r.id = sr.rotation_id
        WHERE sr.student_id = $1
        ORDER BY (sr.status = 'active') DESC, r.start_date DESC
        LIMIT 1`,
      [studentId]
    );
    return r.rows[0] || null;
  }

  // ==========================================================================
  // SCORING ENGINE
  //
  // computeCohort() evaluates every student in a rotation in a fixed number of
  // queries (no N+1) and returns a fully auditable breakdown per student.
  // ==========================================================================

  async function safeRows(sql, params) {
    try {
      const r = await query(sql, params);
      return r.rows;
    } catch (e) {
      console.warn('CBME scoring sub-query skipped:', e.message);
      return [];
    }
  }

  async function computeCohort(rotationId) {
    const students = await safeRows(
      `SELECT s.id, s.first_name, s.last_name, s.matriculation_number, s.registration_number,
              s.profile_photo_url, s.training_level, u.email
         FROM student_rotations sr
         JOIN students s ON s.id = sr.student_id
         LEFT JOIN users u ON u.id = s.user_id
        WHERE sr.rotation_id = $1
        ORDER BY s.last_name, s.first_name`,
      [rotationId]
    );

    const rotationRow = (await safeRows('SELECT * FROM rotations WHERE id = $1', [rotationId]))[0] || {};

    // ---- Attendance -------------------------------------------------------
    const sessions = await safeRows(
      `SELECT id, attendance_type, session_date
         FROM attendance_sessions
        WHERE rotation_id = $1 AND session_date <= CURRENT_DATE`,
      [rotationId]
    );
    const records = await safeRows(
      `SELECT ar.student_id, ar.session_id, ar.status, ats.attendance_type
         FROM attendance_records ar
         JOIN attendance_sessions ats ON ats.id = ar.session_id
        WHERE ats.rotation_id = $1`,
      [rotationId]
    );

    const sessionsByType = {};
    sessions.forEach((s) => {
      const t = s.attendance_type || 'other';
      sessionsByType[t] = (sessionsByType[t] || 0) + 1;
    });

    const attendanceByStudent = {};
    records.forEach((r) => {
      const bucket = (attendanceByStudent[r.student_id] = attendanceByStudent[r.student_id] || {
        present: 0, late: 0, excused: 0, absent: 0, byType: {},
      });
      const status = r.status || 'present';
      if (bucket[status] !== undefined) bucket[status] += 1;
      const t = r.attendance_type || 'other';
      const tb = (bucket.byType[t] = bucket.byType[t] || { present: 0, late: 0, excused: 0, absent: 0 });
      if (tb[status] !== undefined) tb[status] += 1;
    });

    // ---- Structured assessments ------------------------------------------
    const assessments = await safeRows(
      `SELECT student_id, assessment_type, percentage, assessment_date
         FROM competency_assessments
        WHERE rotation_id = $1`,
      [rotationId]
    );
    const assessByStudent = {};
    assessments.forEach((a) => {
      const b = (assessByStudent[a.student_id] = assessByStudent[a.student_id] || {});
      (b[a.assessment_type] = b[a.assessment_type] || []).push(Number(a.percentage) || 0);
    });

    // ---- Academic: CME reading + self-assessment quizzes ------------------
    let totalArticles = 0;
    if (rotationRow.category_id) {
      const t = await safeRows(
        'SELECT COUNT(*)::int AS c FROM cme_articles WHERE category_id = $1 AND is_published = true',
        [rotationRow.category_id]
      );
      totalArticles = t[0] ? t[0].c : 0;
    }
    if (!totalArticles) {
      const t = await safeRows('SELECT COUNT(*)::int AS c FROM cme_articles WHERE is_published = true', []);
      totalArticles = t[0] ? t[0].c : 0;
    }

    const studyRows = await safeRows(
      `SELECT usp.student_id,
              COUNT(*) FILTER (WHERE usp.reading_completed) ::int AS read_done,
              COUNT(*) FILTER (WHERE usp.assessment_completed)::int AS quiz_done,
              AVG(usp.assessment_score) FILTER (WHERE usp.assessment_completed) AS quiz_avg
         FROM user_study_progress usp
         JOIN student_rotations sr ON sr.student_id = usp.student_id
        WHERE sr.rotation_id = $1
        GROUP BY usp.student_id`,
      [rotationId]
    );
    const studyByStudent = {};
    studyRows.forEach((r) => { studyByStudent[r.student_id] = r; });

    // ---- Academic: daily CBT ---------------------------------------------
    const cbtRows = await safeRows(
      `SELECT student_id, percentage, completed_at
         FROM tests
        WHERE rotation_id = $1 AND status = 'completed' AND COALESCE(is_invalidated, false) = false
        ORDER BY completed_at ASC NULLS LAST`,
      [rotationId]
    );
    const cbtByStudent = {};
    cbtRows.forEach((r) => {
      (cbtByStudent[r.student_id] = cbtByStudent[r.student_id] || []).push(Number(r.percentage) || 0);
    });

    // ---- Groups -----------------------------------------------------------
    const groupRows = await safeRows(
      `SELECT gm.student_id, gm.is_leader, rg.id AS group_id, rg.code, rg.name, rg.color, rg.motto
         FROM group_memberships gm
         JOIN rotation_groups rg ON rg.id = gm.group_id
        WHERE gm.rotation_id = $1`,
      [rotationId]
    );
    const groupByStudent = {};
    groupRows.forEach((g) => { groupByStudent[g.student_id] = g; });

    // ---- Per-student computation -----------------------------------------
    const results = students.map((s) => {
      // Attendance ---------------------------------------------------------
      const att = attendanceByStudent[s.id] || { present: 0, late: 0, excused: 0, absent: 0, byType: {} };
      const totalSessions = sessions.length;
      // Excused sessions are neutral: removed from both numerator and denominator.
      const eligibleSessions = Math.max(totalSessions - att.excused, 0);
      // A late arrival earns half credit; an unrecorded session counts as absent.
      const credited = att.present + att.late * 0.5;
      const attendancePct = eligibleSessions > 0 ? pct(credited, eligibleSessions) : 0;
      const attendanceScore = (attendancePct / 100) * WEIGHTS.attendance;

      const attendanceByType = Object.keys(sessionsByType).map((t) => {
        const tb = att.byType[t] || { present: 0, late: 0, excused: 0, absent: 0 };
        const den = Math.max(sessionsByType[t] - tb.excused, 0);
        return {
          type: t,
          sessions: sessionsByType[t],
          present: tb.present,
          late: tb.late,
          excused: tb.excused,
          absent: Math.max(sessionsByType[t] - tb.present - tb.late - tb.excused, 0),
          percentage: round2(den > 0 ? pct(tb.present + tb.late * 0.5, den) : 0),
        };
      });

      // Seminar ------------------------------------------------------------
      const seminarScores = (assessByStudent[s.id] || {}).seminar || [];
      const seminarPct = seminarScores.length
        ? seminarScores.reduce((a, b) => a + b, 0) / seminarScores.length
        : 0;
      const seminarScore = (seminarPct / 100) * WEIGHTS.seminar;

      // Clinical competency --------------------------------------------------
      // Each clinical activity type that has at least one assessment
      // contributes equally, so a student is not penalised for a type the
      // department did not run.
      const clinicalDetail = CLINICAL_TYPES.map((t) => {
        const arr = (assessByStudent[s.id] || {})[t] || [];
        return {
          type: t,
          label: RUBRICS[t].label,
          count: arr.length,
          percentage: arr.length ? round2(arr.reduce((a, b) => a + b, 0) / arr.length) : null,
        };
      });
      const assessedClinical = clinicalDetail.filter((d) => d.count > 0);
      const clinicalPct = assessedClinical.length
        ? assessedClinical.reduce((a, d) => a + d.percentage, 0) / assessedClinical.length
        : 0;
      const clinicalScore = (clinicalPct / 100) * WEIGHTS.clinical;

      // Academic learning ----------------------------------------------------
      const study = studyByStudent[s.id] || { read_done: 0, quiz_done: 0, quiz_avg: null };
      const cmePct = totalArticles > 0 ? Math.min(pct(study.read_done, totalArticles), 100) : 0;
      const quizPct = study.quiz_avg !== null && study.quiz_avg !== undefined ? Number(study.quiz_avg) : 0;
      const cbtScores = cbtByStudent[s.id] || [];
      const cbtPct = cbtScores.length ? cbtScores.reduce((a, b) => a + b, 0) / cbtScores.length : 0;
      // CME reading, self-assessment and daily CBT weigh equally within the domain.
      const academicPct = (cmePct + quizPct + cbtPct) / 3;
      const academicScore = (academicPct / 100) * WEIGHTS.academic;

      // Improvement (first half vs second half of CBT attempts) --------------
      let improvement = null;
      if (cbtScores.length >= 4) {
        const mid = Math.floor(cbtScores.length / 2);
        const first = cbtScores.slice(0, mid);
        const second = cbtScores.slice(mid);
        improvement = round2(
          second.reduce((a, b) => a + b, 0) / second.length -
          first.reduce((a, b) => a + b, 0) / first.length
        );
      }

      // Domain verdicts ------------------------------------------------------
      const domains = [
        { key: 'attendance', label: 'Attendance', weight: WEIGHTS.attendance, score: round2(attendanceScore), percentage: round2(attendancePct) },
        { key: 'seminar', label: 'Seminar Presentation', weight: WEIGHTS.seminar, score: round2(seminarScore), percentage: round2(seminarPct) },
        { key: 'clinical', label: 'Clinical Competency', weight: WEIGHTS.clinical, score: round2(clinicalScore), percentage: round2(clinicalPct) },
        { key: 'academic', label: 'Academic Learning', weight: WEIGHTS.academic, score: round2(academicScore), percentage: round2(academicPct) },
      ].map((d) => {
        const required = round2(d.weight * THRESHOLD_RATIO);
        return { ...d, required, passed: d.score >= required - 0.005, shortfall: round2(Math.max(required - d.score, 0)) };
      });

      const deficient = domains.filter((d) => !d.passed).map((d) => d.key);
      const total = round2(domains.reduce((a, d) => a + d.score, 0));
      const group = groupByStudent[s.id] || null;

      return {
        studentId: s.id,
        name: `${s.first_name || ''} ${s.last_name || ''}`.trim(),
        firstName: s.first_name,
        lastName: s.last_name,
        matricNumber: s.matriculation_number,
        registrationNumber: s.registration_number,
        email: s.email,
        photoUrl: s.profile_photo_url,
        trainingLevel: s.training_level,
        group: group
          ? { id: group.group_id, code: group.code, name: group.name, color: group.color, motto: group.motto, isLeader: group.is_leader }
          : null,
        domains,
        totalScore: total,
        isEligible: deficient.length === 0,
        deficientDomains: deficient,
        detail: {
          attendance: {
            totalSessions,
            eligibleSessions,
            present: att.present,
            late: att.late,
            excused: att.excused,
            absent: Math.max(eligibleSessions - att.present - att.late, 0),
            percentage: round2(attendancePct),
            byType: attendanceByType,
          },
          seminar: { assessments: seminarScores.length, percentage: round2(seminarPct) },
          clinical: { breakdown: clinicalDetail, assessedTypes: assessedClinical.length, percentage: round2(clinicalPct) },
          academic: {
            cme: { completed: study.read_done || 0, total: totalArticles, percentage: round2(cmePct) },
            selfAssessment: { completed: study.quiz_done || 0, averageScore: round2(quizPct) },
            cbt: { attempts: cbtScores.length, averageScore: round2(cbtPct) },
            percentage: round2(academicPct),
          },
          improvement,
        },
      };
    });

    // Rank by total score (dense ranking).
    const ranked = results.slice().sort((a, b) => b.totalScore - a.totalScore);
    ranked.forEach((r, i) => {
      r.rank = i > 0 && ranked[i - 1].totalScore === r.totalScore ? ranked[i - 1].rank : i + 1;
    });

    return { rotation: rotationRow, students: results, cohortSize: results.length };
  }

  // Persist the computed snapshot so the score shown to a student is the same
  // one an examiner can audit later.
  async function persistSnapshots(rotationId, cohort) {
    for (const s of cohort.students) {
      try {
        await query(
          `INSERT INTO competency_snapshots
             (rotation_id, student_id, attendance_score, seminar_score, clinical_score,
              academic_score, total_score, domain_detail, is_eligible, deficient_domains, computed_at)
           VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10, NOW())
           ON CONFLICT (rotation_id, student_id) DO UPDATE SET
             attendance_score = EXCLUDED.attendance_score,
             seminar_score = EXCLUDED.seminar_score,
             clinical_score = EXCLUDED.clinical_score,
             academic_score = EXCLUDED.academic_score,
             total_score = EXCLUDED.total_score,
             domain_detail = EXCLUDED.domain_detail,
             is_eligible = EXCLUDED.is_eligible,
             deficient_domains = EXCLUDED.deficient_domains,
             computed_at = NOW()`,
          [
            rotationId,
            s.studentId,
            s.domains[0].score,
            s.domains[1].score,
            s.domains[2].score,
            s.domains[3].score,
            s.totalScore,
            JSON.stringify({ domains: s.domains, detail: s.detail }),
            s.isEligible,
            JSON.stringify(s.deficientDomains),
          ]
        );
      } catch (e) {
        console.error('snapshot persist failed for', s.studentId, e.message);
      }
    }
  }

  // Aggregate the cohort into the group competition table.
  function buildGroupStandings(cohort) {
    const groups = {};
    cohort.students.forEach((s) => {
      if (!s.group) return;
      const g = (groups[s.group.code] = groups[s.group.code] || {
        id: s.group.id,
        code: s.group.code,
        name: s.group.name,
        color: s.group.color,
        motto: s.group.motto,
        members: [],
        leader: null,
      });
      g.members.push(s);
      if (s.group.isLeader) g.leader = s.name;
    });

    const standings = Object.values(groups).map((g) => {
      const n = g.members.length || 1;
      const avg = (fn) => round2(g.members.reduce((a, m) => a + (fn(m) || 0), 0) / n);
      return {
        id: g.id,
        code: g.code,
        name: g.name,
        color: g.color,
        motto: g.motto,
        leader: g.leader,
        memberCount: g.members.length,
        totalScore: avg((m) => m.totalScore),
        categories: {
          attendance: avg((m) => m.detail.attendance.percentage),
          seminar: avg((m) => m.detail.seminar.percentage),
          clinical: avg((m) => m.detail.clinical.percentage),
          academic: avg((m) => m.detail.academic.percentage),
          cbt: avg((m) => m.detail.academic.cbt.averageScore),
          cme: avg((m) => m.detail.academic.cme.percentage),
          conduct: avg((m) => {
            const d = m.detail.clinical.breakdown.find((b) => b.type === 'professional_conduct');
            return d ? d.percentage : 0;
          }),
          woundDressing: avg((m) => {
            const d = m.detail.clinical.breakdown.find((b) => b.type === 'wound_dressing');
            return d ? d.percentage : 0;
          }),
        },
        members: g.members
          .slice()
          .sort((a, b) => b.totalScore - a.totalScore)
          .map((m) => ({
            studentId: m.studentId,
            name: m.name,
            matricNumber: m.matricNumber,
            photoUrl: m.photoUrl,
            totalScore: m.totalScore,
            isLeader: !!m.group.isLeader,
            isEligible: m.isEligible,
          })),
      };
    });

    standings.sort((a, b) => b.totalScore - a.totalScore);
    standings.forEach((g, i) => { g.rank = i + 1; });
    return standings;
  }

  // ==========================================================================
  // META — rubric definitions & framework constants for the client
  // ==========================================================================

  app.get('/api/cbme/framework', (req, res) => {
    res.json({
      success: true,
      data: {
        weights: WEIGHTS,
        thresholdRatio: THRESHOLD_RATIO,
        domains: DOMAIN_META.map((d) => ({ ...d, required: round2(d.weight * THRESHOLD_RATIO) })),
        houses: HOUSES,
        rubrics: Object.keys(RUBRICS).map((k) => ({
          type: k,
          label: RUBRICS[k].label,
          domain: RUBRICS[k].domain,
          criterionMax: CRITERION_MAX,
          criteria: RUBRICS[k].criteria,
        })),
        awards: AWARD_CATALOGUE.map((a) => ({ code: a.code, name: a.name, recipient: a.recipient })),
      },
    });
  });

  // Explicit migration trigger for operators.
  app.post('/api/cbme/migrate', handler(async (req, res) => {
    schemaReady = false;
    const ok = await ensureSchema();
    res.json({ success: ok, message: ok ? 'CBME schema is up to date' : 'Migration failed — check server logs' });
  }));

  // ==========================================================================
  // PHASE 3 — GROUP ALLOCATION & COMPETITION
  // ==========================================================================

  // Allocate every enrolled student into balanced competitive teams.
  app.post('/api/rotations/:id/groups/allocate', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin']);
    if (!auth) return;
    const rotationId = req.params.id;
    const { reallocate = false, houseCount } = req.body || {};

    const enrolled = await safeRows(
      `SELECT s.id, s.first_name, s.last_name
         FROM student_rotations sr
         JOIN students s ON s.id = sr.student_id
        WHERE sr.rotation_id = $1
        ORDER BY s.id`,
      [rotationId]
    );
    if (!enrolled.length) {
      return res.status(400).json({ success: false, message: 'No students are enrolled in this rotation yet' });
    }

    // Never fragment a small cohort into empty teams.
    const requested = Number(houseCount) || HOUSES.length;
    const count = Math.max(2, Math.min(requested, HOUSES.length, enrolled.length));
    const houses = HOUSES.slice(0, count);

    // Ensure the group rows exist.
    const groupIds = {};
    for (const h of houses) {
      const existing = await query(
        `INSERT INTO rotation_groups (rotation_id, code, name, motto, meaning, virtues, color)
         VALUES ($1,$2,$3,$4,$5,$6,$7)
         ON CONFLICT (rotation_id, code) DO UPDATE SET
           name = EXCLUDED.name, motto = EXCLUDED.motto, meaning = EXCLUDED.meaning,
           virtues = EXCLUDED.virtues, color = EXCLUDED.color
         RETURNING id`,
        [rotationId, h.code, h.name, h.motto, h.meaning, JSON.stringify(h.virtues), h.color]
      );
      groupIds[h.code] = existing.rows[0].id;
    }

    // Students already placed keep their team unless a reallocation is forced.
    const existingMembers = await safeRows(
      'SELECT student_id FROM group_memberships WHERE rotation_id = $1',
      [rotationId]
    );
    const placed = new Set(existingMembers.map((m) => m.student_id));
    if (reallocate) {
      await query('DELETE FROM group_memberships WHERE rotation_id = $1', [rotationId]);
      placed.clear();
    }

    // Current team sizes drive balancing so incremental intake stays even.
    const sizes = {};
    houses.forEach((h) => { sizes[h.code] = 0; });
    if (placed.size) {
      const counts = await safeRows(
        `SELECT rg.code, COUNT(*)::int AS c
           FROM group_memberships gm JOIN rotation_groups rg ON rg.id = gm.group_id
          WHERE gm.rotation_id = $1 GROUP BY rg.code`,
        [rotationId]
      );
      counts.forEach((c) => { if (sizes[c.code] !== undefined) sizes[c.code] = c.c; });
    }

    const toPlace = shuffle(enrolled.filter((s) => !placed.has(s.id)), stringSeed(rotationId));
    let assignedCount = 0;
    for (const student of toPlace) {
      // Always drop into the smallest team — keeps the competition fair.
      const target = houses.reduce((best, h) => (sizes[h.code] < sizes[best.code] ? h : best), houses[0]);
      await query(
        `INSERT INTO group_memberships (group_id, rotation_id, student_id)
         VALUES ($1,$2,$3)
         ON CONFLICT (rotation_id, student_id) DO NOTHING`,
        [groupIds[target.code], rotationId, student.id]
      );
      sizes[target.code] += 1;
      assignedCount += 1;
    }

    // Elect a leader per team (highest current total score, else first member).
    const cohort = await computeCohort(rotationId);
    for (const h of houses) {
      const members = cohort.students.filter((s) => s.group && s.group.code === h.code);
      if (!members.length) continue;
      const leader = members.slice().sort((a, b) => b.totalScore - a.totalScore)[0];
      await query('UPDATE group_memberships SET is_leader = false WHERE rotation_id = $1 AND group_id = $2', [rotationId, groupIds[h.code]]);
      await query('UPDATE group_memberships SET is_leader = true WHERE rotation_id = $1 AND student_id = $2', [rotationId, leader.studentId]);
    }

    await query('UPDATE rotations SET groups_allocated_at = NOW() WHERE id = $1', [rotationId]);

    // Tell every newly-placed student which house they belong to.
    for (const student of toPlace) {
      const membership = cohort.students.find((s) => s.studentId === student.id);
      const houseName = membership && membership.group ? membership.group.name : 'your team';
      await notifyStudent(student.id, 'Team allocation', `You are a member of the ${String(houseName).toUpperCase()}. Compete with honour.`, 'group');
    }

    await audit({
      rotationId, entityType: 'groups', action: 'compute', actorUserId: auth.id, actorRole: auth.role,
      payload: { assigned: assignedCount, houses: houses.map((h) => h.code), reallocate: !!reallocate },
    });

    const fresh = await computeCohort(rotationId);
    res.json({
      success: true,
      message: `Allocated ${assignedCount} student(s) across ${houses.length} teams`,
      data: { groups: buildGroupStandings(fresh) },
    });
  }));

  // Group standings / live leaderboard for a rotation.
  app.get('/api/rotations/:id/groups', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const cohort = await computeCohort(req.params.id);
    res.json({ success: true, data: { groups: buildGroupStandings(cohort), cohortSize: cohort.cohortSize } });
  }));

  // The logged-in student's own team identity.
  app.get('/api/cbme/my-group', handler(async (req, res) => {
    const studentId = await resolveStudentId(req);
    if (!studentId) return res.status(403).json({ success: false, message: 'Student profile not found' });
    const rotation = await activeRotationFor(studentId);
    if (!rotation) return res.json({ success: true, data: null });

    const cohort = await computeCohort(rotation.rotation_id);
    const standings = buildGroupStandings(cohort);
    const me = cohort.students.find((s) => s.studentId === studentId);
    if (!me || !me.group) return res.json({ success: true, data: null });

    const mine = standings.find((g) => g.code === me.group.code);
    const house = HOUSES.find((h) => h.code === me.group.code) || {};
    res.json({
      success: true,
      data: {
        rotation: { id: rotation.rotation_id, name: rotation.name },
        group: {
          ...mine,
          meaning: house.meaning,
          virtues: house.virtues,
        },
        standings: standings.map((g) => ({ rank: g.rank, code: g.code, name: g.name, color: g.color, totalScore: g.totalScore, memberCount: g.memberCount })),
        me: { studentId: me.studentId, name: me.name, rank: me.rank, totalScore: me.totalScore, isLeader: me.group.isLeader },
      },
    });
  }));

  // Move a student between teams (admin override).
  app.patch('/api/rotations/:id/groups/membership', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin']);
    if (!auth) return;
    const { studentId, groupCode, isLeader } = req.body || {};
    if (!studentId || !groupCode) {
      return res.status(400).json({ success: false, message: 'studentId and groupCode are required' });
    }
    const g = await safeRows('SELECT id FROM rotation_groups WHERE rotation_id = $1 AND code = $2', [req.params.id, groupCode]);
    if (!g.length) return res.status(404).json({ success: false, message: 'Team not found for this rotation' });

    await query(
      `INSERT INTO group_memberships (group_id, rotation_id, student_id, is_leader)
       VALUES ($1,$2,$3,$4)
       ON CONFLICT (rotation_id, student_id) DO UPDATE SET group_id = EXCLUDED.group_id, is_leader = EXCLUDED.is_leader`,
      [g[0].id, req.params.id, studentId, !!isLeader]
    );
    if (isLeader) {
      await query('UPDATE group_memberships SET is_leader = false WHERE rotation_id = $1 AND group_id = $2 AND student_id <> $3', [req.params.id, g[0].id, studentId]);
    }
    await audit({ rotationId: req.params.id, studentId, entityType: 'groups', action: 'update', actorUserId: auth.id, actorRole: auth.role, payload: { groupCode, isLeader: !!isLeader } });
    res.json({ success: true, message: 'Team membership updated' });
  }));

  // ==========================================================================
  // PHASE 4 — SEMINAR TOPICS & ALLOCATION
  // ==========================================================================

  app.get('/api/rotations/:id/seminar-topics', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const topics = await safeRows(
      `SELECT st.*, sa.id AS assignment_id, sa.student_id, sa.presentation_date, sa.presentation_time,
              sa.venue, sa.supervisor_name, sa.status,
              s.first_name, s.last_name, s.matriculation_number
         FROM seminar_topics st
         LEFT JOIN seminar_assignments sa ON sa.topic_id = st.id
         LEFT JOIN students s ON s.id = sa.student_id
        WHERE st.rotation_id = $1 AND st.is_active = true
        ORDER BY st.order_index, st.title`,
      [req.params.id]
    );
    res.json({
      success: true,
      data: {
        topics: topics.map((t) => ({
          id: t.id,
          title: t.title,
          description: t.description,
          orderIndex: t.order_index,
          assignment: t.assignment_id
            ? {
                id: t.assignment_id,
                studentId: t.student_id,
                studentName: `${t.first_name || ''} ${t.last_name || ''}`.trim(),
                matricNumber: t.matriculation_number,
                presentationDate: t.presentation_date,
                presentationTime: t.presentation_time,
                venue: t.venue,
                supervisorName: t.supervisor_name,
                status: t.status,
              }
            : null,
        })),
      },
    });
  }));

  // Replace / append the seminar topic list for a rotation.
  app.post('/api/rotations/:id/seminar-topics', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const { topics, replace = false } = req.body || {};
    const list = (Array.isArray(topics) ? topics : String(topics || '').split('\n'))
      .map((t) => (typeof t === 'string' ? { title: t } : t))
      .map((t) => ({ title: String(t.title || '').trim(), description: t.description || null }))
      .filter((t) => t.title.length > 0);

    if (!list.length) return res.status(400).json({ success: false, message: 'Provide at least one seminar topic' });

    if (replace) {
      // Only topics that have not been assigned yet can be cleared.
      await query(
        `DELETE FROM seminar_topics
          WHERE rotation_id = $1
            AND id NOT IN (SELECT topic_id FROM seminar_assignments WHERE rotation_id = $1)`,
        [req.params.id]
      );
    }

    let created = 0;
    for (let i = 0; i < list.length; i++) {
      const existing = await safeRows(
        'SELECT id FROM seminar_topics WHERE rotation_id = $1 AND lower(title) = lower($2)',
        [req.params.id, list[i].title]
      );
      if (existing.length) continue;
      await query(
        'INSERT INTO seminar_topics (rotation_id, title, description, order_index) VALUES ($1,$2,$3,$4)',
        [req.params.id, list[i].title, list[i].description, i]
      );
      created += 1;
    }

    await audit({ rotationId: req.params.id, entityType: 'seminars', action: 'create', actorUserId: auth.id, actorRole: auth.role, payload: { created, replace: !!replace } });
    res.json({ success: true, message: `${created} topic(s) added`, data: { created } });
  }));

  app.delete('/api/seminar-topics/:topicId', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    await query('DELETE FROM seminar_topics WHERE id = $1', [req.params.topicId]);
    res.json({ success: true, message: 'Topic removed' });
  }));

  // Automatic, fair, duplicate-free seminar allocation.
  app.post('/api/rotations/:id/seminars/allocate', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const rotationId = req.params.id;
    const { startDate, venue, defaultTime, reallocate = false } = req.body || {};

    if (reallocate) {
      await query("DELETE FROM seminar_assignments WHERE rotation_id = $1 AND status = 'assigned'", [rotationId]);
    }

    const topics = await safeRows(
      `SELECT id, title FROM seminar_topics
        WHERE rotation_id = $1 AND is_active = true
          AND id NOT IN (SELECT topic_id FROM seminar_assignments WHERE rotation_id = $1)
        ORDER BY order_index, title`,
      [rotationId]
    );
    const students = await safeRows(
      `SELECT s.id, s.first_name, s.last_name,
              (SELECT COUNT(*) FROM seminar_assignments sa
                WHERE sa.rotation_id = $1 AND sa.student_id = s.id AND sa.status <> 'withdrawn')::int AS current_load
         FROM student_rotations sr
         JOIN students s ON s.id = sr.student_id
        WHERE sr.rotation_id = $1 AND sr.status = 'active'
        ORDER BY s.id`,
      [rotationId]
    );

    if (!topics.length) return res.status(400).json({ success: false, message: 'No unassigned seminar topics remain' });
    if (!students.length) return res.status(400).json({ success: false, message: 'No active students enrolled in this rotation' });

    const rotation = (await safeRows('SELECT start_date, end_date, seminar_days FROM rotations WHERE id = $1', [rotationId]))[0] || {};
    const scheduleFrom = startDate ? new Date(startDate) : new Date(rotation.start_date || Date.now());

    // Round-robin over a shuffled student list, seeded per-rotation so an
    // allocation can always be reproduced. Nobody gets a second topic until
    // everyone has one.
    const order = shuffle(students, stringSeed(rotationId + ':seminars'));
    order.sort((a, b) => a.current_load - b.current_load);

    const assignments = [];
    for (let i = 0; i < topics.length; i++) {
      const student = order[i % order.length];
      // Space presentations a week apart per cycle through the cohort.
      const date = new Date(scheduleFrom);
      date.setDate(date.getDate() + Math.floor(i / Math.max(order.length, 1)) * 7 + (i % Math.max(order.length, 1)));
      const dateStr = date.toISOString().split('T')[0];

      const inserted = await query(
        `INSERT INTO seminar_assignments
           (rotation_id, topic_id, student_id, presentation_date, presentation_time, venue, status)
         VALUES ($1,$2,$3,$4,$5,$6,'assigned')
         ON CONFLICT (rotation_id, topic_id) DO NOTHING
         RETURNING id`,
        [rotationId, topics[i].id, student.id, dateStr, defaultTime || '08:00', venue || null]
      );
      if (inserted.rows.length) {
        assignments.push({ topic: topics[i].title, studentId: student.id, date: dateStr });
        await notifyStudent(
          student.id,
          'Seminar topic allocated',
          `You have been allocated the seminar topic "${topics[i].title}" on ${dateStr}${venue ? ` at ${venue}` : ''}.`,
          'seminar'
        );
      }
    }

    await query('UPDATE rotations SET seminars_allocated_at = NOW() WHERE id = $1', [rotationId]);
    await audit({ rotationId, entityType: 'seminars', action: 'compute', actorUserId: auth.id, actorRole: auth.role, payload: { assigned: assignments.length } });

    res.json({ success: true, message: `${assignments.length} seminar topic(s) allocated`, data: { assignments } });
  }));

  // Update the logistics of one seminar (date / time / venue / supervisor).
  app.patch('/api/seminars/:assignmentId', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const { presentationDate, presentationTime, venue, supervisorId, supervisorName, status } = req.body || {};
    const r = await query(
      `UPDATE seminar_assignments SET
         presentation_date = COALESCE($1, presentation_date),
         presentation_time = COALESCE($2, presentation_time),
         venue = COALESCE($3, venue),
         supervisor_id = COALESCE($4, supervisor_id),
         supervisor_name = COALESCE($5, supervisor_name),
         status = COALESCE($6, status),
         updated_at = NOW()
       WHERE id = $7 RETURNING *`,
      [presentationDate || null, presentationTime || null, venue || null, supervisorId || null, supervisorName || null, status || null, req.params.assignmentId]
    );
    if (!r.rows.length) return res.status(404).json({ success: false, message: 'Seminar assignment not found' });
    res.json({ success: true, data: r.rows[0] });
  }));

  // Withdraw a student — the topic returns to the pool and is reassigned.
  app.post('/api/seminars/:assignmentId/withdraw', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const existing = await safeRows('SELECT * FROM seminar_assignments WHERE id = $1', [req.params.assignmentId]);
    if (!existing.length) return res.status(404).json({ success: false, message: 'Seminar assignment not found' });
    const a = existing[0];

    // Give the topic to whoever currently carries the lightest seminar load.
    const candidates = await safeRows(
      `SELECT s.id,
              (SELECT COUNT(*) FROM seminar_assignments sa
                WHERE sa.rotation_id = $1 AND sa.student_id = s.id AND sa.status <> 'withdrawn')::int AS load
         FROM student_rotations sr
         JOIN students s ON s.id = sr.student_id
        WHERE sr.rotation_id = $1 AND sr.status = 'active' AND s.id <> $2
        ORDER BY load ASC, s.id ASC
        LIMIT 1`,
      [a.rotation_id, a.student_id]
    );

    if (!candidates.length) {
      await query("UPDATE seminar_assignments SET status = 'withdrawn', updated_at = NOW() WHERE id = $1", [a.id]);
      return res.json({ success: true, message: 'Assignment withdrawn; no replacement student available', data: { reassignedTo: null } });
    }

    const replacement = candidates[0].id;
    await query(
      "UPDATE seminar_assignments SET student_id = $1, status = 'assigned', updated_at = NOW() WHERE id = $2",
      [replacement, a.id]
    );
    const topic = await safeRows('SELECT title FROM seminar_topics WHERE id = $1', [a.topic_id]);
    await notifyStudent(
      replacement,
      'Seminar topic reassigned to you',
      `You have been assigned the seminar topic "${topic[0] ? topic[0].title : ''}" following a withdrawal.`,
      'seminar'
    );
    await audit({ rotationId: a.rotation_id, studentId: a.student_id, entityType: 'seminars', action: 'update', actorUserId: auth.id, actorRole: auth.role, payload: { withdrawn: a.student_id, reassignedTo: replacement } });

    res.json({ success: true, message: 'Topic reassigned', data: { reassignedTo: replacement } });
  }));

  // The logged-in student's seminar schedule.
  app.get('/api/cbme/my-seminars', handler(async (req, res) => {
    const studentId = await resolveStudentId(req);
    if (!studentId) return res.status(403).json({ success: false, message: 'Student profile not found' });
    const rows = await safeRows(
      `SELECT sa.*, st.title, st.description, r.name AS rotation_name,
              (SELECT percentage FROM competency_assessments ca
                WHERE ca.reference_id = sa.id AND ca.assessment_type = 'seminar'
                ORDER BY ca.created_at DESC LIMIT 1) AS score
         FROM seminar_assignments sa
         JOIN seminar_topics st ON st.id = sa.topic_id
         JOIN rotations r ON r.id = sa.rotation_id
        WHERE sa.student_id = $1 AND sa.status <> 'withdrawn'
        ORDER BY sa.presentation_date NULLS LAST`,
      [studentId]
    );
    res.json({
      success: true,
      data: {
        seminars: rows.map((s) => ({
          id: s.id,
          topic: s.title,
          description: s.description,
          rotationName: s.rotation_name,
          presentationDate: s.presentation_date,
          presentationTime: s.presentation_time,
          venue: s.venue,
          supervisorName: s.supervisor_name,
          status: s.status,
          score: s.score !== null && s.score !== undefined ? Number(s.score) : null,
        })),
      },
    });
  }));

  // ==========================================================================
  // ASSESSMENT CAPTURE (seminar + all clinical activity types)
  // ==========================================================================

  app.post('/api/cbme/assessments', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const { rotationId, studentId, assessmentType, referenceId, assessmentDate, scores, feedback } = req.body || {};

    const rubric = RUBRICS[assessmentType];
    if (!rubric) {
      return res.status(400).json({ success: false, message: `Unknown assessment type "${assessmentType}"` });
    }
    if (!rotationId || !studentId) {
      return res.status(400).json({ success: false, message: 'rotationId and studentId are required' });
    }
    if (!scores || typeof scores !== 'object') {
      return res.status(400).json({ success: false, message: 'Rubric scores are required' });
    }

    // Score every criterion; reject an incomplete or out-of-range rubric so a
    // partial assessment can never silently deflate a student's competency.
    const domainScores = {};
    for (const c of rubric.criteria) {
      const raw = scores[c.key];
      if (raw === undefined || raw === null || raw === '') {
        return res.status(400).json({ success: false, message: `Missing score for "${c.label}"` });
      }
      const value = Number(raw);
      if (!Number.isFinite(value) || value < 0 || value > CRITERION_MAX) {
        return res.status(400).json({ success: false, message: `"${c.label}" must be between 0 and ${CRITERION_MAX}` });
      }
      domainScores[c.key] = value;
    }

    const rawScore = Object.values(domainScores).reduce((a, b) => a + b, 0);
    const maxScore = rubric.criteria.length * CRITERION_MAX;
    const percentage = round2(pct(rawScore, maxScore));

    const assessor = await resolveAssessor(auth);
    const result = await query(
      `INSERT INTO competency_assessments
         (rotation_id, student_id, assessment_type, reference_id, assessment_date,
          domain_scores, raw_score, max_score, percentage, assessor_id, assessor_user_id, assessor_name, feedback)
       VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13)
       RETURNING *`,
      [
        rotationId, studentId, assessmentType, referenceId || null,
        assessmentDate || new Date().toISOString().split('T')[0],
        JSON.stringify(domainScores), rawScore, maxScore, percentage,
        assessor ? assessor.id : null, auth.id,
        assessor ? assessor.name : (auth.email || 'Administrator'),
        feedback || null,
      ]
    );

    if (assessmentType === 'seminar' && referenceId) {
      await query("UPDATE seminar_assignments SET status = 'assessed', updated_at = NOW() WHERE id = $1", [referenceId]);
    }
    if (referenceId && assessmentType === 'clerking') {
      await query("UPDATE clinic_assignments SET status = 'assessed', updated_at = NOW() WHERE id = $1", [referenceId]);
    }

    await audit({
      rotationId, studentId, entityType: 'competency_assessment', entityId: result.rows[0].id,
      action: 'create', actorUserId: auth.id, actorName: assessor ? assessor.name : auth.email, actorRole: auth.role,
      payload: { assessmentType, domainScores, rawScore, maxScore, percentage },
    });

    await notifyStudent(
      studentId,
      `${rubric.label} assessed`,
      `Your ${rubric.label.toLowerCase()} was assessed: ${percentage}%.`,
      'assessment'
    );

    res.json({ success: true, message: `${rubric.label} recorded (${percentage}%)`, data: result.rows[0] });
  }));

  app.get('/api/cbme/assessments', handler(async (req, res) => {
    const auth = requireAuth(req, res);
    if (!auth) return;
    const { rotationId, studentId, type } = req.query;

    let target = studentId;
    if (auth && auth.role === 'student') {
      target = await resolveStudentId(req);
      if (!target) return res.status(403).json({ success: false, message: 'Student profile not found' });
    }

    const conditions = [];
    const params = [];
    if (rotationId) { params.push(rotationId); conditions.push(`ca.rotation_id = $${params.length}`); }
    if (target) { params.push(target); conditions.push(`ca.student_id = $${params.length}`); }
    if (type) { params.push(type); conditions.push(`ca.assessment_type = $${params.length}`); }
    const where = conditions.length ? `WHERE ${conditions.join(' AND ')}` : '';

    const rows = await safeRows(
      `SELECT ca.*, s.first_name, s.last_name, s.matriculation_number
         FROM competency_assessments ca
         JOIN students s ON s.id = ca.student_id
         ${where}
        ORDER BY ca.assessment_date DESC, ca.created_at DESC
        LIMIT 500`,
      params
    );

    res.json({
      success: true,
      data: {
        assessments: rows.map((a) => ({
          id: a.id,
          studentId: a.student_id,
          studentName: `${a.first_name || ''} ${a.last_name || ''}`.trim(),
          matricNumber: a.matriculation_number,
          assessmentType: a.assessment_type,
          label: RUBRICS[a.assessment_type] ? RUBRICS[a.assessment_type].label : a.assessment_type,
          assessmentDate: a.assessment_date,
          domainScores: a.domain_scores,
          rawScore: Number(a.raw_score),
          maxScore: Number(a.max_score),
          percentage: Number(a.percentage),
          assessorName: a.assessor_name,
          feedback: a.feedback,
          createdAt: a.created_at,
        })),
      },
    });
  }));

  app.delete('/api/cbme/assessments/:id', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin']);
    if (!auth) return;
    const existing = await safeRows('SELECT * FROM competency_assessments WHERE id = $1', [req.params.id]);
    if (!existing.length) return res.status(404).json({ success: false, message: 'Assessment not found' });
    await query('DELETE FROM competency_assessments WHERE id = $1', [req.params.id]);
    await audit({
      rotationId: existing[0].rotation_id, studentId: existing[0].student_id,
      entityType: 'competency_assessment', entityId: req.params.id, action: 'delete',
      actorUserId: auth.id, actorRole: auth.role, payload: existing[0],
    });
    res.json({ success: true, message: 'Assessment deleted' });
  }));

  // ==========================================================================
  // PHASE 6 — CLINIC PATIENT ASSIGNMENT & DIGITAL CLERKING
  // ==========================================================================

  app.post('/api/rotations/:id/clinic-assignments', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const { clinicDate, clinicName, consultantName, patients } = req.body || {};
    const list = Array.isArray(patients) ? patients : [];
    if (!clinicDate || !list.length) {
      return res.status(400).json({ success: false, message: 'clinicDate and at least one patient are required' });
    }

    const students = await safeRows(
      `SELECT s.id FROM student_rotations sr JOIN students s ON s.id = sr.student_id
        WHERE sr.rotation_id = $1 AND sr.status = 'active' ORDER BY s.id`,
      [req.params.id]
    );
    if (!students.length) return res.status(400).json({ success: false, message: 'No active students in this rotation' });

    // Distribute patients evenly, rotating the starting point by date so the
    // same student does not always take the first case.
    const order = shuffle(students, stringSeed(req.params.id + clinicDate));
    const created = [];
    for (let i = 0; i < list.length; i++) {
      const p = list[i];
      const student = order[i % order.length];
      const row = await query(
        `INSERT INTO clinic_assignments
           (rotation_id, student_id, clinic_date, clinic_name, patient_code, patient_age,
            patient_sex, provisional_diagnosis, consultant_name, presentation_order)
         VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) RETURNING *`,
        [
          req.params.id, student.id, clinicDate, clinicName || null,
          p.patientCode || `PT-${i + 1}`, p.age || null, p.sex || null,
          p.diagnosis || null, p.consultantName || consultantName || null, i + 1,
        ]
      );
      created.push(row.rows[0]);
      await notifyStudent(
        student.id,
        'Clinic patient assigned',
        `You have been assigned patient ${p.patientCode || `PT-${i + 1}`}${p.diagnosis ? ` (${p.diagnosis})` : ''} for the ${clinicDate} clinic. Presentation order: ${i + 1}.`,
        'clinic'
      );
    }

    res.json({ success: true, message: `${created.length} patient(s) assigned`, data: { assignments: created } });
  }));

  app.get('/api/rotations/:id/clinic-assignments', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const { date } = req.query;
    const params = [req.params.id];
    let dateFilter = '';
    if (date) { params.push(date); dateFilter = ` AND ca.clinic_date = $${params.length}`; }
    const rows = await safeRows(
      `SELECT ca.*, s.first_name, s.last_name, s.matriculation_number,
              c.id AS clerking_id, c.status AS clerking_status
         FROM clinic_assignments ca
         JOIN students s ON s.id = ca.student_id
         LEFT JOIN clerkings c ON c.clinic_assignment_id = ca.id
        WHERE ca.rotation_id = $1${dateFilter}
        ORDER BY ca.clinic_date DESC, ca.presentation_order`,
      params
    );
    res.json({ success: true, data: { assignments: rows } });
  }));

  app.get('/api/cbme/my-clinics', handler(async (req, res) => {
    const studentId = await resolveStudentId(req);
    if (!studentId) return res.status(403).json({ success: false, message: 'Student profile not found' });
    const rows = await safeRows(
      `SELECT ca.*, c.id AS clerking_id, c.status AS clerking_status, c.submitted_at,
              c.history, c.examination, c.investigations, c.differential_diagnosis,
              c.final_diagnosis, c.management_plan, c.evidence_discussion
         FROM clinic_assignments ca
         LEFT JOIN clerkings c ON c.clinic_assignment_id = ca.id
        WHERE ca.student_id = $1
        ORDER BY ca.clinic_date DESC`,
      [studentId]
    );
    res.json({ success: true, data: { assignments: rows } });
  }));

  // Save (draft) or submit a digital clerking.
  app.post('/api/cbme/clerkings', handler(async (req, res) => {
    const studentId = await resolveStudentId(req);
    if (!studentId) return res.status(403).json({ success: false, message: 'Student profile not found' });
    const {
      clinicAssignmentId, rotationId, history, examination, investigations,
      differentialDiagnosis, finalDiagnosis, managementPlan, evidenceDiscussion, submit,
    } = req.body || {};

    if (!clinicAssignmentId) return res.status(400).json({ success: false, message: 'clinicAssignmentId is required' });

    const assignment = await safeRows('SELECT * FROM clinic_assignments WHERE id = $1 AND student_id = $2', [clinicAssignmentId, studentId]);
    if (!assignment.length) return res.status(404).json({ success: false, message: 'Clinic assignment not found for this student' });

    if (submit) {
      const required = { history, examination, differentialDiagnosis, finalDiagnosis, managementPlan };
      const missing = Object.keys(required).filter((k) => !String(required[k] || '').trim());
      if (missing.length) {
        return res.status(400).json({ success: false, message: `Complete all required sections before submitting: ${missing.join(', ')}` });
      }
    }

    const status = submit ? 'submitted' : 'draft';
    const row = await query(
      `INSERT INTO clerkings
         (clinic_assignment_id, rotation_id, student_id, history, examination, investigations,
          differential_diagnosis, final_diagnosis, management_plan, evidence_discussion, status, submitted_at)
       VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12)
       ON CONFLICT (clinic_assignment_id) DO UPDATE SET
         history = EXCLUDED.history, examination = EXCLUDED.examination,
         investigations = EXCLUDED.investigations, differential_diagnosis = EXCLUDED.differential_diagnosis,
         final_diagnosis = EXCLUDED.final_diagnosis, management_plan = EXCLUDED.management_plan,
         evidence_discussion = EXCLUDED.evidence_discussion, status = EXCLUDED.status,
         submitted_at = EXCLUDED.submitted_at, updated_at = NOW()
       RETURNING *`,
      [
        clinicAssignmentId, rotationId || assignment[0].rotation_id, studentId,
        history || null, examination || null, investigations || null,
        differentialDiagnosis || null, finalDiagnosis || null, managementPlan || null,
        evidenceDiscussion || null, status, submit ? new Date().toISOString() : null,
      ]
    );
    if (submit) {
      await query("UPDATE clinic_assignments SET status = 'clerked', updated_at = NOW() WHERE id = $1", [clinicAssignmentId]);
    }
    res.json({ success: true, message: submit ? 'Clerking submitted' : 'Draft saved', data: row.rows[0] });
  }));

  app.get('/api/cbme/clerkings/:id', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const rows = await safeRows(
      `SELECT c.*, ca.patient_code, ca.provisional_diagnosis, ca.clinic_date,
              s.first_name, s.last_name, s.matriculation_number
         FROM clerkings c
         JOIN clinic_assignments ca ON ca.id = c.clinic_assignment_id
         JOIN students s ON s.id = c.student_id
        WHERE c.id = $1`,
      [req.params.id]
    );
    if (!rows.length) return res.status(404).json({ success: false, message: 'Clerking not found' });
    res.json({ success: true, data: rows[0] });
  }));

  // ==========================================================================
  // COMPETENCY & SIGN-OUT ELIGIBILITY
  // ==========================================================================

  // The logged-in student's own competency card.
  app.get('/api/cbme/my-competency', handler(async (req, res) => {
    const studentId = await resolveStudentId(req);
    if (!studentId) return res.status(403).json({ success: false, message: 'Student profile not found' });
    const rotation = await activeRotationFor(studentId);
    if (!rotation) {
      return res.json({ success: true, data: { rotation: null, competency: null } });
    }
    const cohort = await computeCohort(rotation.rotation_id);
    const me = cohort.students.find((s) => s.studentId === studentId);
    if (!me) return res.json({ success: true, data: { rotation: null, competency: null } });

    const signOut = await safeRows('SELECT * FROM sign_out_records WHERE rotation_id = $1 AND student_id = $2', [rotation.rotation_id, studentId]);

    res.json({
      success: true,
      data: {
        rotation: { id: rotation.rotation_id, name: rotation.name, startDate: rotation.start_date, endDate: rotation.end_date },
        competency: me,
        cohortSize: cohort.cohortSize,
        remediation: buildRemediation(me),
        signOut: signOut[0] || null,
      },
    });
  }));

  // Whole-cohort competency board.
  app.get('/api/rotations/:id/competency', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const cohort = await computeCohort(req.params.id);
    const eligible = cohort.students.filter((s) => s.isEligible).length;
    res.json({
      success: true,
      data: {
        rotation: {
          id: cohort.rotation.id,
          name: cohort.rotation.name,
          specialty: cohort.rotation.specialty,
          unit: cohort.rotation.unit,
          academicSession: cohort.rotation.academic_session,
          startDate: cohort.rotation.start_date,
          endDate: cohort.rotation.end_date,
          signOutDate: cohort.rotation.sign_out_date,
        },
        students: cohort.students.slice().sort((a, b) => a.rank - b.rank),
        summary: {
          cohortSize: cohort.cohortSize,
          eligible,
          notEligible: cohort.cohortSize - eligible,
          averageScore: round2(cohort.cohortSize ? cohort.students.reduce((a, s) => a + s.totalScore, 0) / cohort.cohortSize : 0),
          domainAverages: DOMAIN_META.map((d, i) => ({
            key: d.key,
            label: d.label,
            weight: d.weight,
            required: round2(d.weight * THRESHOLD_RATIO),
            average: round2(cohort.cohortSize ? cohort.students.reduce((a, s) => a + s.domains[i].score, 0) / cohort.cohortSize : 0),
            passing: cohort.students.filter((s) => s.domains[i].passed).length,
          })),
        },
      },
    });
  }));

  // Recompute and persist the auditable snapshot for a rotation.
  app.post('/api/rotations/:id/competency/recompute', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const cohort = await computeCohort(req.params.id);
    await persistSnapshots(req.params.id, cohort);
    await audit({ rotationId: req.params.id, entityType: 'competency', action: 'compute', actorUserId: auth.id, actorRole: auth.role, payload: { cohortSize: cohort.cohortSize } });
    res.json({ success: true, message: `Competency recomputed for ${cohort.cohortSize} student(s)` });
  }));

  function buildRemediation(student) {
    const advice = {
      attendance: 'Attend every remaining ward round, clinic and theatre session. Ask the unit to record any excused absence so it is not counted against you.',
      seminar: 'Meet your supervisor to review the seminar rubric, then request a repeat presentation slot before the sign-out date.',
      clinical: 'Book additional supervised clerkings, ward presentations and wound-dressing sessions so more clinical activities can be assessed.',
      academic: 'Finish the outstanding CME articles, complete every self-assessment quiz and sit the daily CBT consistently.',
    };
    return student.domains
      .filter((d) => !d.passed)
      .map((d) => ({
        domain: d.key,
        label: d.label,
        score: d.score,
        required: d.required,
        shortfall: d.shortfall,
        recommendation: advice[d.key],
      }));
  }

  // Sign a student out (or formally withhold sign-out).
  app.post('/api/rotations/:id/sign-out', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const { studentId, remarks, override } = req.body || {};
    if (!studentId) return res.status(400).json({ success: false, message: 'studentId is required' });

    const cohort = await computeCohort(req.params.id);
    const student = cohort.students.find((s) => s.studentId === studentId);
    if (!student) return res.status(404).json({ success: false, message: 'Student is not enrolled in this rotation' });

    // Eligibility is decided by the engine, not by the person clicking.
    if (!student.isEligible && !override) {
      return res.status(422).json({
        success: false,
        message: 'Student is NOT eligible for sign-out — minimum competency not demonstrated in every domain',
        data: { deficientDomains: student.deficientDomains, remediation: buildRemediation(student), domains: student.domains },
      });
    }
    if (!student.isEligible && override && auth.role !== 'admin') {
      return res.status(403).json({ success: false, message: 'Only an administrator may override a failed domain' });
    }

    const serial = `UNTH-${String(req.params.id).slice(0, 4).toUpperCase()}-${String(studentId).slice(0, 6).toUpperCase()}`;
    const row = await query(
      `INSERT INTO sign_out_records
         (rotation_id, student_id, status, total_score, domain_detail, certificate_serial, signed_by_user_id, signed_by_name, remarks)
       VALUES ($1,$2,'signed_out',$3,$4,$5,$6,$7,$8)
       ON CONFLICT (rotation_id, student_id) DO UPDATE SET
         status = 'signed_out', total_score = EXCLUDED.total_score, domain_detail = EXCLUDED.domain_detail,
         certificate_serial = EXCLUDED.certificate_serial, signed_by_user_id = EXCLUDED.signed_by_user_id,
         signed_by_name = EXCLUDED.signed_by_name, remarks = EXCLUDED.remarks, created_at = NOW()
       RETURNING *`,
      [
        req.params.id, studentId, student.totalScore,
        JSON.stringify({ domains: student.domains, detail: student.detail, overridden: !!override && !student.isEligible }),
        serial, auth.id, auth.email || 'Administrator', remarks || null,
      ]
    );

    await query("UPDATE student_rotations SET status = 'cleared', is_cleared = true, cleared_at = NOW(), final_score = $1 WHERE rotation_id = $2 AND student_id = $3", [student.totalScore, req.params.id, studentId]);
    await persistSnapshots(req.params.id, { students: [student] });
    await audit({
      rotationId: req.params.id, studentId, entityType: 'sign_out', entityId: row.rows[0].id,
      action: 'create', actorUserId: auth.id, actorRole: auth.role,
      payload: { totalScore: student.totalScore, override: !!override, eligible: student.isEligible },
    });
    await notifyStudent(studentId, 'Rotation sign-out approved', `You have been signed out with an aggregate competency score of ${student.totalScore}%.`, 'sign_out');

    res.json({ success: true, message: 'Student signed out', data: row.rows[0] });
  }));

  app.get('/api/rotations/:id/sign-outs', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const rows = await safeRows(
      `SELECT so.*, s.first_name, s.last_name, s.matriculation_number
         FROM sign_out_records so JOIN students s ON s.id = so.student_id
        WHERE so.rotation_id = $1 ORDER BY so.created_at DESC`,
      [req.params.id]
    );
    res.json({ success: true, data: { signOuts: rows } });
  }));

  // ==========================================================================
  // LEADERBOARDS
  // ==========================================================================

  app.get('/api/rotations/:id/leaderboard', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const cohort = await computeCohort(req.params.id);
    const groups = buildGroupStandings(cohort);
    res.json({
      success: true,
      data: {
        groups,
        students: cohort.students
          .slice()
          .sort((a, b) => a.rank - b.rank)
          .map((s) => ({
            rank: s.rank,
            studentId: s.studentId,
            name: s.name,
            matricNumber: s.matricNumber,
            photoUrl: s.photoUrl,
            group: s.group ? { code: s.group.code, name: s.group.name, color: s.group.color } : null,
            totalScore: s.totalScore,
            isEligible: s.isEligible,
            domains: s.domains.map((d) => ({ key: d.key, score: d.score, passed: d.passed })),
          })),
      },
    });
  }));

  // Leaderboard scoped to the logged-in student's current rotation.
  app.get('/api/cbme/leaderboard', handler(async (req, res) => {
    const auth = requireAuth(req, res);
    if (!auth) return;
    let rotationId = req.query.rotationId;
    if (!rotationId && auth && auth.role === 'student') {
      const studentId = await resolveStudentId(req);
      const rotation = studentId ? await activeRotationFor(studentId) : null;
      rotationId = rotation ? rotation.rotation_id : null;
    }
    if (!rotationId) {
      const active = await safeRows(
        "SELECT id FROM rotations WHERE is_active = true AND start_date <= CURRENT_DATE AND end_date >= CURRENT_DATE ORDER BY start_date DESC LIMIT 1"
      );
      rotationId = active.length ? active[0].id : null;
    }
    if (!rotationId) return res.json({ success: true, data: { groups: [], students: [] } });

    const cohort = await computeCohort(rotationId);
    res.json({
      success: true,
      data: {
        rotationId,
        groups: buildGroupStandings(cohort),
        students: cohort.students.slice().sort((a, b) => a.rank - b.rank).map((s) => ({
          rank: s.rank, studentId: s.studentId, name: s.name, matricNumber: s.matricNumber,
          group: s.group ? { code: s.group.code, name: s.group.name, color: s.group.color } : null,
          totalScore: s.totalScore, isEligible: s.isEligible,
        })),
      },
    });
  }));

  // ==========================================================================
  // END-OF-ROTATION AWARDS
  // ==========================================================================

  function metricValue(student, metric) {
    if (metric === 'total') return student.totalScore;
    if (metric === 'attendance_pct') return student.detail.attendance.percentage;
    if (metric === 'seminar_pct') return student.detail.seminar.assessments ? student.detail.seminar.percentage : null;
    if (metric === 'cbt_pct') return student.detail.academic.cbt.attempts ? student.detail.academic.cbt.averageScore : null;
    if (metric === 'cme_pct') return student.detail.academic.cme.percentage;
    if (metric === 'improvement') return student.detail.improvement;
    if (metric.startsWith('type:')) {
      const t = metric.slice(5);
      const d = student.detail.clinical.breakdown.find((b) => b.type === t);
      return d && d.count > 0 ? d.percentage : null;
    }
    return null;
  }

  app.post('/api/rotations/:id/awards/compute', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const rotationId = req.params.id;
    const cohort = await computeCohort(rotationId);
    if (!cohort.cohortSize) return res.status(400).json({ success: false, message: 'No students in this rotation' });

    const groups = buildGroupStandings(cohort);
    await persistSnapshots(rotationId, cohort);
    await query('DELETE FROM rotation_awards WHERE rotation_id = $1', [rotationId]);

    const awarded = [];
    for (let i = 0; i < AWARD_CATALOGUE.length; i++) {
      const a = AWARD_CATALOGUE[i];
      if (a.recipient === 'group') {
        if (!groups.length) continue;
        const winner = groups[0];
        const row = await query(
          `INSERT INTO rotation_awards
             (rotation_id, award_code, award_name, recipient_type, group_id, recipient_name, score, citation, display_order)
           VALUES ($1,$2,$3,'group',$4,$5,$6,$7,$8) RETURNING *`,
          [
            rotationId, a.code, a.name, winner.id, winner.name, winner.totalScore,
            `Awarded to the ${winner.name} for the highest aggregate team competency (${winner.totalScore}%) across attendance, seminars, clinical activity and academic learning.`,
            i,
          ]
        );
        awarded.push({ ...row.rows[0], members: winner.members });
        continue;
      }

      // Only students with an actual measurement compete for the award.
      const candidates = cohort.students
        .map((s) => ({ s, v: metricValue(s, a.metric) }))
        .filter((c) => c.v !== null && c.v !== undefined && Number.isFinite(c.v) && c.v > 0);
      if (!candidates.length) continue;
      candidates.sort((x, y) => y.v - x.v);
      const winner = candidates[0];

      const row = await query(
        `INSERT INTO rotation_awards
           (rotation_id, award_code, award_name, recipient_type, student_id, recipient_name, score, citation, display_order)
         VALUES ($1,$2,$3,'student',$4,$5,$6,$7,$8) RETURNING *`,
        [
          rotationId, a.code, a.name, winner.s.studentId, winner.s.name, round2(winner.v),
          `Awarded to ${winner.s.name}${winner.s.group ? ` of the ${winner.s.group.name}` : ''} for ${a.name.toLowerCase()} (${round2(winner.v)}${a.metric === 'improvement' ? ' point gain' : '%'}).`,
          i,
        ]
      );
      awarded.push(row.rows[0]);
    }

    // Permanent hall of fame listing for the winning team.
    if (groups.length) {
      const champion = groups[0];
      await query(
        `INSERT INTO hall_of_fame
           (rotation_id, rotation_name, academic_session, specialty, group_code, group_name, total_score, member_count)
         VALUES ($1,$2,$3,$4,$5,$6,$7,$8)
         ON CONFLICT (rotation_id) DO UPDATE SET
           group_code = EXCLUDED.group_code, group_name = EXCLUDED.group_name,
           total_score = EXCLUDED.total_score, member_count = EXCLUDED.member_count, recorded_at = NOW()`,
        [
          rotationId, cohort.rotation.name, cohort.rotation.academic_session,
          cohort.rotation.specialty, champion.code, champion.name, champion.totalScore, champion.memberCount,
        ]
      );
    }

    await query('UPDATE rotations SET awards_computed_at = NOW() WHERE id = $1', [rotationId]);
    await audit({ rotationId, entityType: 'awards', action: 'compute', actorUserId: auth.id, actorRole: auth.role, payload: { awards: awarded.length } });

    res.json({ success: true, message: `${awarded.length} award(s) computed`, data: { awards: awarded } });
  }));

  app.get('/api/rotations/:id/awards', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const rows = await safeRows(
      `SELECT ra.*, s.first_name, s.last_name, s.matriculation_number, s.profile_photo_url,
              rg.code AS group_code, rg.color AS group_color, rg.motto AS group_motto
         FROM rotation_awards ra
         LEFT JOIN students s ON s.id = ra.student_id
         LEFT JOIN rotation_groups rg ON rg.id = ra.group_id
        WHERE ra.rotation_id = $1
        ORDER BY ra.display_order`,
      [req.params.id]
    );
    const rotation = (await safeRows('SELECT id, name, specialty, unit, academic_session, end_date, awards_computed_at FROM rotations WHERE id = $1', [req.params.id]))[0] || null;

    // Attach the winning team's roster so every member can be celebrated.
    const groupAward = rows.find((r) => r.recipient_type === 'group');
    let winningMembers = [];
    if (groupAward) {
      winningMembers = await safeRows(
        `SELECT s.id, s.first_name, s.last_name, s.matriculation_number, s.profile_photo_url
           FROM group_memberships gm JOIN students s ON s.id = gm.student_id
          WHERE gm.group_id = $1 ORDER BY s.last_name`,
        [groupAward.group_id]
      );
    }

    res.json({
      success: true,
      data: {
        rotation,
        awards: rows.map((r) => ({
          id: r.id,
          code: r.award_code,
          name: r.award_name,
          recipientType: r.recipient_type,
          recipientName: r.recipient_name,
          studentId: r.student_id,
          groupId: r.group_id,
          groupCode: r.group_code,
          groupColor: r.group_color,
          groupMotto: r.group_motto,
          matricNumber: r.matriculation_number,
          photoUrl: r.profile_photo_url,
          score: r.score !== null ? Number(r.score) : null,
          citation: r.citation,
        })),
        winningTeamMembers: winningMembers.map((m) => ({
          studentId: m.id,
          name: `${m.first_name || ''} ${m.last_name || ''}`.trim(),
          matricNumber: m.matriculation_number,
          photoUrl: m.profile_photo_url,
        })),
      },
    });
  }));

  app.get('/api/cbme/hall-of-fame', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const rows = await safeRows(
      'SELECT * FROM hall_of_fame ORDER BY recorded_at DESC LIMIT 100'
    );
    res.json({ success: true, data: { entries: rows } });
  }));

  // Certificate payload — the client renders and prints the PDF.
  app.get('/api/cbme/certificate', handler(async (req, res) => {
    const auth = requireAuth(req, res);
    if (!auth) return;
    const { rotationId } = req.query;
    let studentId = req.query.studentId;
    if (auth && auth.role === 'student') studentId = await resolveStudentId(req);
    if (!studentId || !rotationId) {
      return res.status(400).json({ success: false, message: 'rotationId (and studentId for staff) are required' });
    }

    const cohort = await computeCohort(rotationId);
    const student = cohort.students.find((s) => s.studentId === studentId);
    if (!student) return res.status(404).json({ success: false, message: 'Student not found in this rotation' });

    const signOut = await safeRows('SELECT * FROM sign_out_records WHERE rotation_id = $1 AND student_id = $2', [rotationId, studentId]);
    const awards = await safeRows('SELECT award_name, score FROM rotation_awards WHERE rotation_id = $1 AND student_id = $2 ORDER BY display_order', [rotationId, studentId]);

    res.json({
      success: true,
      data: {
        student: {
          name: student.name, matricNumber: student.matricNumber,
          registrationNumber: student.registrationNumber, trainingLevel: student.trainingLevel,
          group: student.group,
        },
        rotation: {
          name: cohort.rotation.name, specialty: cohort.rotation.specialty, unit: cohort.rotation.unit,
          academicSession: cohort.rotation.academic_session, startDate: cohort.rotation.start_date,
          endDate: cohort.rotation.end_date,
        },
        competency: { domains: student.domains, totalScore: student.totalScore, rank: student.rank, cohortSize: cohort.cohortSize, isEligible: student.isEligible },
        signOut: signOut[0] || null,
        awards: awards.map((a) => ({ name: a.award_name, score: a.score !== null ? Number(a.score) : null })),
        issuedAt: new Date().toISOString(),
      },
    });
  }));

  // ==========================================================================
  // ANALYTICS
  // ==========================================================================

  app.get('/api/rotations/:id/analytics', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const rotationId = req.params.id;
    const cohort = await computeCohort(rotationId);

    // Attendance trend by session date.
    const trend = await safeRows(
      `SELECT ats.session_date::text AS date, ats.attendance_type,
              COUNT(DISTINCT ats.id)::int AS sessions,
              COUNT(ar.id) FILTER (WHERE ar.status IN ('present','late'))::int AS attended,
              (SELECT COUNT(*) FROM student_rotations sr WHERE sr.rotation_id = $1)::int AS cohort
         FROM attendance_sessions ats
         LEFT JOIN attendance_records ar ON ar.session_id = ats.id
        WHERE ats.rotation_id = $1
        GROUP BY ats.session_date, ats.attendance_type
        ORDER BY ats.session_date`,
      [rotationId]
    );

    // Weak CBT topics across the cohort.
    const weakTopics = await safeRows(
      `SELECT t.name AS topic,
              COUNT(*)::int AS attempts,
              ROUND(AVG(CASE WHEN ta.is_correct THEN 100.0 ELSE 0 END), 1) AS accuracy
         FROM test_answers ta
         JOIN tests te ON te.id = ta.test_id
         JOIN questions q ON q.id = ta.question_id
         JOIN topics t ON t.id = q.topic_id
        WHERE te.rotation_id = $1 AND te.status = 'completed'
        GROUP BY t.name
       HAVING COUNT(*) >= 5
        ORDER BY accuracy ASC
        LIMIT 12`,
      [rotationId]
    );

    // Case mix / clinical exposure.
    const caseMix = await safeRows(
      `SELECT COALESCE(provisional_diagnosis, 'Unspecified') AS diagnosis, COUNT(*)::int AS cases
         FROM clinic_assignments WHERE rotation_id = $1
        GROUP BY 1 ORDER BY cases DESC LIMIT 15`,
      [rotationId]
    );

    // Consultant scoring patterns — surfaces systematic leniency/severity.
    const assessorPatterns = await safeRows(
      `SELECT COALESCE(assessor_name, 'Unattributed') AS assessor,
              COUNT(*)::int AS assessments,
              ROUND(AVG(percentage), 1) AS mean_score,
              ROUND(MIN(percentage), 1) AS min_score,
              ROUND(MAX(percentage), 1) AS max_score
         FROM competency_assessments WHERE rotation_id = $1
        GROUP BY 1 ORDER BY assessments DESC`,
      [rotationId]
    );

    // Competency progression — assessments recorded over time.
    const progression = await safeRows(
      `SELECT assessment_date::text AS date, assessment_type, ROUND(AVG(percentage),1) AS mean_score, COUNT(*)::int AS n
         FROM competency_assessments WHERE rotation_id = $1
        GROUP BY 1,2 ORDER BY 1`,
      [rotationId]
    );

    const groups = buildGroupStandings(cohort);
    const eligible = cohort.students.filter((s) => s.isEligible).length;

    res.json({
      success: true,
      data: {
        summary: {
          cohortSize: cohort.cohortSize,
          eligible,
          notEligible: cohort.cohortSize - eligible,
          averageScore: round2(cohort.cohortSize ? cohort.students.reduce((a, s) => a + s.totalScore, 0) / cohort.cohortSize : 0),
        },
        domainAverages: DOMAIN_META.map((d, i) => ({
          key: d.key, label: d.label, weight: d.weight, required: round2(d.weight * THRESHOLD_RATIO),
          average: round2(cohort.cohortSize ? cohort.students.reduce((a, s) => a + s.domains[i].score, 0) / cohort.cohortSize : 0),
        })),
        attendanceTrend: trend,
        weakTopics,
        caseMix,
        assessorPatterns,
        progression,
        groupStandings: groups.map((g) => ({ rank: g.rank, code: g.code, name: g.name, color: g.color, totalScore: g.totalScore, categories: g.categories })),
        topPerformers: cohort.students.slice().sort((a, b) => a.rank - b.rank).slice(0, 10)
          .map((s) => ({ rank: s.rank, name: s.name, totalScore: s.totalScore, group: s.group ? s.group.name : null })),
        atRisk: cohort.students.filter((s) => !s.isEligible)
          .sort((a, b) => a.totalScore - b.totalScore)
          .map((s) => ({ studentId: s.studentId, name: s.name, totalScore: s.totalScore, deficientDomains: s.deficientDomains })),
      },
    });
  }));

  // Cross-rotation comparison for the department chairman / medical education office.
  app.get('/api/cbme/department-analytics', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const rotations = await safeRows(
      `SELECT r.id, r.name, r.specialty, r.unit, r.academic_session, r.start_date, r.end_date,
              (SELECT COUNT(*) FROM student_rotations sr WHERE sr.rotation_id = r.id)::int AS students
         FROM rotations r
        WHERE r.is_active = true
        ORDER BY r.start_date DESC
        LIMIT 12`
    );

    const snapshots = await safeRows(
      `SELECT rotation_id,
              COUNT(*)::int AS n,
              ROUND(AVG(total_score),1) AS mean_score,
              COUNT(*) FILTER (WHERE is_eligible)::int AS eligible
         FROM competency_snapshots GROUP BY rotation_id`
    );
    const byRotation = {};
    snapshots.forEach((s) => { byRotation[s.rotation_id] = s; });

    res.json({
      success: true,
      data: {
        rotations: rotations.map((r) => {
          const s = byRotation[r.id] || {};
          return {
            id: r.id, name: r.name, specialty: r.specialty, unit: r.unit,
            academicSession: r.academic_session, startDate: r.start_date, endDate: r.end_date,
            students: r.students,
            assessed: s.n || 0,
            meanScore: s.mean_score !== undefined && s.mean_score !== null ? Number(s.mean_score) : null,
            eligible: s.eligible || 0,
          };
        }),
        hallOfFame: await safeRows('SELECT * FROM hall_of_fame ORDER BY recorded_at DESC LIMIT 20'),
      },
    });
  }));

  // ==========================================================================
  // NOTIFICATIONS & REMINDERS
  // ==========================================================================

  async function notifyStudent(studentId, title, message, type) {
    try {
      const u = await query('SELECT user_id FROM students WHERE id = $1', [studentId]);
      if (!u.rows.length) return;
      await query(
        'INSERT INTO notifications (user_id, title, message, notification_type) VALUES ($1,$2,$3,$4)',
        [u.rows[0].user_id, title, message, type || 'system']
      );
    } catch (e) {
      // Notifications are best-effort — never fail the parent operation.
    }
  }

  // Nudge students with outstanding CME articles or missed daily CBTs.
  app.post('/api/rotations/:id/reminders/send', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin', 'assessor']);
    if (!auth) return;
    const cohort = await computeCohort(req.params.id);
    let sent = 0;
    for (const s of cohort.students) {
      const messages = [];
      const cme = s.detail.academic.cme;
      if (cme.total > 0 && cme.completed < cme.total) {
        messages.push(`${cme.total - cme.completed} CME article(s) still unread.`);
      }
      if (s.detail.academic.cbt.attempts === 0) {
        messages.push('You have not attempted the daily CBT yet.');
      }
      if (s.detail.seminar.assessments === 0) {
        messages.push('Your seminar has not been assessed — confirm your presentation date.');
      }
      if (!messages.length) continue;
      await notifyStudent(s.studentId, 'Outstanding rotation tasks', messages.join(' '), 'reminder');
      sent += 1;
    }
    res.json({ success: true, message: `Reminders sent to ${sent} student(s)` });
  }));

  // ==========================================================================
  // AUDIT TRAIL
  // ==========================================================================

  app.get('/api/cbme/audit-log', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin']);
    if (!auth) return;
    const { rotationId, studentId, limit } = req.query;
    const params = [];
    const conditions = [];
    if (rotationId) { params.push(rotationId); conditions.push(`rotation_id = $${params.length}`); }
    if (studentId) { params.push(studentId); conditions.push(`student_id = $${params.length}`); }
    params.push(Math.min(Number(limit) || 200, 500));
    const rows = await safeRows(
      `SELECT * FROM assessment_audit_log
        ${conditions.length ? `WHERE ${conditions.join(' AND ')}` : ''}
        ORDER BY created_at DESC LIMIT $${params.length}`,
      params
    );
    res.json({ success: true, data: { entries: rows } });
  }));

  // ==========================================================================
  // EXTENDED ROTATION SETUP (Phase 2 fields)
  // ==========================================================================

  app.patch('/api/rotations/:id/setup', handler(async (req, res) => {
    const auth = requireRole(req, res, ['admin']);
    if (!auth) return;
    const b = req.body || {};
    const r = await query(
      `UPDATE rotations SET
         specialty = COALESCE($1, specialty),
         unit = COALESCE($2, unit),
         academic_session = COALESCE($3, academic_session),
         batch = COALESCE($4, batch),
         expected_students = COALESCE($5, expected_students),
         consultants = COALESCE($6, consultants),
         residents = COALESCE($7, residents),
         house_officers = COALESCE($8, house_officers),
         clinic_days = COALESCE($9, clinic_days),
         ward_round_days = COALESCE($10, ward_round_days),
         theatre_days = COALESCE($11, theatre_days),
         seminar_days = COALESCE($12, seminar_days),
         examination_date = COALESCE($13, examination_date),
         sign_out_date = COALESCE($14, sign_out_date),
         updated_at = NOW()
       WHERE id = $15 RETURNING *`,
      [
        b.specialty || null, b.unit || null, b.academicSession || null, b.batch || null,
        b.expectedStudents || null, b.consultants || null, b.residents || null, b.houseOfficers || null,
        b.clinicDays ? JSON.stringify(b.clinicDays) : null,
        b.wardRoundDays ? JSON.stringify(b.wardRoundDays) : null,
        b.theatreDays ? JSON.stringify(b.theatreDays) : null,
        b.seminarDays ? JSON.stringify(b.seminarDays) : null,
        b.examinationDate || null, b.signOutDate || null,
        req.params.id,
      ]
    );
    if (!r.rows.length) return res.status(404).json({ success: false, message: 'Rotation not found' });
    res.json({ success: true, data: r.rows[0] });
  }));

  app.get('/api/rotations/:id/setup', handler(async (req, res) => {
    if (!requireAuth(req, res)) return;
    const rows = await safeRows('SELECT * FROM rotations WHERE id = $1', [req.params.id]);
    if (!rows.length) return res.status(404).json({ success: false, message: 'Rotation not found' });
    const r = rows[0];
    const [groups, topics, enrolled] = await Promise.all([
      safeRows('SELECT COUNT(*)::int AS c FROM rotation_groups WHERE rotation_id = $1', [req.params.id]),
      safeRows('SELECT COUNT(*)::int AS c FROM seminar_topics WHERE rotation_id = $1', [req.params.id]),
      safeRows('SELECT COUNT(*)::int AS c FROM student_rotations WHERE rotation_id = $1', [req.params.id]),
    ]);
    res.json({
      success: true,
      data: {
        id: r.id, name: r.name, specialty: r.specialty, unit: r.unit,
        academicSession: r.academic_session, batch: r.batch, expectedStudents: r.expected_students,
        consultants: r.consultants, residents: r.residents, houseOfficers: r.house_officers,
        clinicDays: r.clinic_days || [], wardRoundDays: r.ward_round_days || [],
        theatreDays: r.theatre_days || [], seminarDays: r.seminar_days || [],
        startDate: r.start_date, endDate: r.end_date,
        examinationDate: r.examination_date, signOutDate: r.sign_out_date,
        groupsAllocatedAt: r.groups_allocated_at, seminarsAllocatedAt: r.seminars_allocated_at,
        awardsComputedAt: r.awards_computed_at,
        counts: {
          groups: groups[0] ? groups[0].c : 0,
          seminarTopics: topics[0] ? topics[0].c : 0,
          enrolledStudents: enrolled[0] ? enrolled[0].c : 0,
        },
      },
    });
  }));

  // ==========================================================================
  // EXTENDED STUDENT PROFILE (Phase 1)
  // ==========================================================================

  app.patch('/api/cbme/my-profile', handler(async (req, res) => {
    const studentId = await resolveStudentId(req);
    if (!studentId) return res.status(403).json({ success: false, message: 'Student profile not found' });
    const b = req.body || {};
    const r = await query(
      `UPDATE students SET
         registration_number = COALESCE($1, registration_number),
         institution = COALESCE($2, institution),
         faculty = COALESCE($3, faculty),
         department = COALESCE($4, department),
         training_level = COALESCE($5, training_level),
         emergency_contact_name = COALESCE($6, emergency_contact_name),
         emergency_contact_phone = COALESCE($7, emergency_contact_phone),
         emergency_contact_relationship = COALESCE($8, emergency_contact_relationship),
         previous_units = COALESCE($9, previous_units),
         portfolio_notes = COALESCE($10, portfolio_notes),
         profile_photo_url = COALESCE($11, profile_photo_url),
         phone_number = COALESCE($12, phone_number),
         whatsapp_number = COALESCE($13, whatsapp_number),
         updated_at = NOW()
       WHERE id = $14 RETURNING *`,
      [
        b.registrationNumber || null, b.institution || null, b.faculty || null, b.department || null,
        b.trainingLevel || null, b.emergencyContactName || null, b.emergencyContactPhone || null,
        b.emergencyContactRelationship || null, b.previousUnits || null, b.portfolioNotes || null,
        b.profilePhotoUrl || null, b.phoneNumber || null, b.whatsappNumber || null,
        studentId,
      ]
    );
    res.json({ success: true, message: 'Profile updated', data: r.rows[0] });
  }));

  // Full learning portfolio that follows the student across postings.
  app.get('/api/cbme/my-portfolio', handler(async (req, res) => {
    const studentId = await resolveStudentId(req);
    if (!studentId) return res.status(403).json({ success: false, message: 'Student profile not found' });

    const profile = (await safeRows(
      `SELECT s.*, u.email FROM students s LEFT JOIN users u ON u.id = s.user_id WHERE s.id = $1`,
      [studentId]
    ))[0];

    const history = await safeRows(
      `SELECT sr.rotation_id, sr.status, sr.final_score, sr.is_cleared, sr.cleared_at,
              r.name, r.specialty, r.unit, r.academic_session, r.start_date, r.end_date,
              cs.total_score, cs.is_eligible, cs.attendance_score, cs.seminar_score,
              cs.clinical_score, cs.academic_score,
              rg.name AS group_name, rg.color AS group_color
         FROM student_rotations sr
         JOIN rotations r ON r.id = sr.rotation_id
         LEFT JOIN competency_snapshots cs ON cs.rotation_id = sr.rotation_id AND cs.student_id = sr.student_id
         LEFT JOIN group_memberships gm ON gm.rotation_id = sr.rotation_id AND gm.student_id = sr.student_id
         LEFT JOIN rotation_groups rg ON rg.id = gm.group_id
        WHERE sr.student_id = $1
        ORDER BY r.start_date DESC`,
      [studentId]
    );

    const awards = await safeRows(
      `SELECT ra.award_name, ra.score, ra.citation, ra.awarded_at, r.name AS rotation_name
         FROM rotation_awards ra JOIN rotations r ON r.id = ra.rotation_id
        WHERE ra.student_id = $1 ORDER BY ra.awarded_at DESC`,
      [studentId]
    );

    const assessments = await safeRows(
      `SELECT assessment_type, assessment_date, percentage, assessor_name, feedback
         FROM competency_assessments WHERE student_id = $1
        ORDER BY assessment_date DESC LIMIT 100`,
      [studentId]
    );

    res.json({
      success: true,
      data: {
        profile: profile
          ? {
              id: profile.id,
              firstName: profile.first_name, lastName: profile.last_name, middleName: profile.middle_name,
              email: profile.email, matricNumber: profile.matriculation_number,
              registrationNumber: profile.registration_number, institution: profile.institution,
              faculty: profile.faculty, department: profile.department, trainingLevel: profile.training_level,
              level: profile.level, phoneNumber: profile.phone_number, whatsappNumber: profile.whatsapp_number,
              photoUrl: profile.profile_photo_url,
              emergencyContact: {
                name: profile.emergency_contact_name,
                phone: profile.emergency_contact_phone,
                relationship: profile.emergency_contact_relationship,
              },
              previousUnits: profile.previous_units,
              portfolioNotes: profile.portfolio_notes,
            }
          : null,
        rotationHistory: history,
        awards,
        assessments,
      },
    });
  }));

  return {
    computeCohort,
    buildGroupStandings,
    WEIGHTS,
    RUBRICS,
    HOUSES,
  };
};
