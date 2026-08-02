// Exercises the CBME scoring engine with a stubbed database.
const path = require('path');
const register = require(path.join(__dirname, '..', 'api', 'cbme.js'));

// --- fixture --------------------------------------------------------------
// star: perfect everything. weak: fails ONLY academic but has a huge total.
const ROT = 'rot-1';
const rows = {
  students: [
    { id: 'star', first_name: 'Ada', last_name: 'Star', matriculation_number: 'M1', email: 'a@x' },
    { id: 'weak', first_name: 'Ben', last_name: 'Weak', matriculation_number: 'M2', email: 'b@x' },
    { id: 'zero', first_name: 'Cid', last_name: 'Zero', matriculation_number: 'M3', email: 'c@x' },
  ],
  rotation: [{ id: ROT, name: 'Surgery 1', category_id: 'cat-1' }],
  sessions: Array.from({ length: 10 }, (_, i) => ({ id: `s${i}`, attendance_type: i < 5 ? 'clinic' : 'theatre', session_date: '2026-01-01' })),
  records: [
    // star: 10/10 present
    ...Array.from({ length: 10 }, (_, i) => ({ student_id: 'star', session_id: `s${i}`, status: 'present', attendance_type: i < 5 ? 'clinic' : 'theatre' })),
    // weak: 10/10 present too
    ...Array.from({ length: 10 }, (_, i) => ({ student_id: 'weak', session_id: `s${i}`, status: 'present', attendance_type: i < 5 ? 'clinic' : 'theatre' })),
  ],
  assessments: [
    { student_id: 'star', assessment_type: 'seminar', percentage: 90 },
    { student_id: 'star', assessment_type: 'clerking', percentage: 90 },
    { student_id: 'weak', assessment_type: 'seminar', percentage: 100 },
    { student_id: 'weak', assessment_type: 'clerking', percentage: 100 },
  ],
  articleCount: [{ c: 10 }],
  study: [
    { student_id: 'star', read_done: 9, quiz_done: 9, quiz_avg: 88 },
    { student_id: 'weak', read_done: 1, quiz_done: 1, quiz_avg: 20 },
  ],
  cbt: [
    { student_id: 'star', percentage: 85, completed_at: '2026-01-02' },
    { student_id: 'weak', percentage: 10, completed_at: '2026-01-02' },
  ],
  groups: [
    { student_id: 'star', is_leader: true, group_id: 'g1', code: 'spartans', name: 'Spartans', color: '#b91c1c', motto: 'm' },
    { student_id: 'weak', is_leader: false, group_id: 'g1', code: 'spartans', name: 'Spartans', color: '#b91c1c', motto: 'm' },
    { student_id: 'zero', is_leader: false, group_id: 'g2', code: 'myrmidons', name: 'Myrmidons', color: '#1d4ed8', motto: 'm' },
  ],
};

async function query(sql) {
  const s = sql.replace(/\s+/g, ' ');
  if (s.includes('FROM student_rotations sr JOIN students s')) return { rows: rows.students };
  if (s.includes('SELECT * FROM rotations WHERE id')) return { rows: rows.rotation };
  if (s.includes('FROM attendance_sessions')) return { rows: rows.sessions };
  if (s.includes('FROM attendance_records ar')) return { rows: rows.records };
  if (s.includes('FROM competency_assessments')) return { rows: rows.assessments };
  if (s.includes('FROM cme_articles')) return { rows: rows.articleCount };
  if (s.includes('FROM user_study_progress')) return { rows: rows.study };
  if (s.includes('FROM tests')) return { rows: rows.cbt };
  if (s.includes('FROM group_memberships gm')) return { rows: rows.groups };
  throw new Error('unstubbed query: ' + s.slice(0, 90));
}

const app = new Proxy({}, { get: () => () => {} });
const api = register(app, { query, getAuthUser: () => null, resolveStudentId: async () => null });

(async () => {
  const cohort = await api.computeCohort(ROT);
  let failures = 0;
  const check = (label, actual, expected) => {
    const ok = JSON.stringify(actual) === JSON.stringify(expected);
    if (!ok) failures++;
    console.log(`${ok ? 'PASS' : 'FAIL'}  ${label}: ${JSON.stringify(actual)}${ok ? '' : ` (expected ${JSON.stringify(expected)})`}`);
  };

  const by = {};
  cohort.students.forEach((s) => { by[s.studentId] = s; });

  console.log('--- domain scores ---');
  by.star.domains.forEach((d) => console.log(`  star.${d.key}: ${d.score}/${d.weight} (need ${d.required}) passed=${d.passed}`));
  by.weak.domains.forEach((d) => console.log(`  weak.${d.key}: ${d.score}/${d.weight} (need ${d.required}) passed=${d.passed}`));
  by.zero.domains.forEach((d) => console.log(`  zero.${d.key}: ${d.score}/${d.weight} (need ${d.required}) passed=${d.passed}`));

  console.log('\n--- assertions ---');
  check('thresholds are 2/3 of each weight', by.star.domains.map((d) => d.required), [33.33, 6.67, 13.33, 13.33]);
  check('star attendance = full 50', by.star.domains[0].score, 50);
  check('star is eligible', by.star.isEligible, true);

  // weak: attendance 50 + seminar 10 + clinical 20 = 80 aggregate, but academic
  // = (10% cme + 20% quiz + 10% cbt)/3 = 13.33% -> 2.67/20, below the 13.33 floor.
  check('weak total is high', by.weak.totalScore > 66, true);
  check('weak is NOT eligible despite high total', by.weak.isEligible, false);
  check('weak deficient domain is academic only', by.weak.deficientDomains, ['academic']);

  check('zero (no data) scores 0', by.zero.totalScore, 0);
  check('zero is not eligible', by.zero.isEligible, false);
  check('zero fails all four domains', by.zero.deficientDomains.length, 4);

  check('ranking puts star first', by.star.rank, 1);

  const standings = api.buildGroupStandings(cohort);
  console.log('\n--- group standings ---');
  standings.forEach((g) => console.log(`  #${g.rank} ${g.name}: ${g.totalScore} (${g.memberCount} members, leader=${g.leader})`));
  check('spartans lead on team average', standings[0].code, 'spartans');
  check('spartans average = mean of members', standings[0].totalScore,
    Math.round(((by.star.totalScore + by.weak.totalScore) / 2) * 100) / 100);

  // Late arrival = half credit; excused removed from the denominator.
  rows.records = [
    { student_id: 'star', session_id: 's0', status: 'present', attendance_type: 'clinic' },
    { student_id: 'star', session_id: 's1', status: 'late', attendance_type: 'clinic' },
    { student_id: 'star', session_id: 's2', status: 'excused', attendance_type: 'clinic' },
  ];
  const c2 = await api.computeCohort(ROT);
  const star2 = c2.students.find((s) => s.studentId === 'star');
  // 9 eligible sessions (10 - 1 excused), credit 1 + 0.5 = 1.5 -> 16.67%
  check('late=half credit, excused excluded', star2.detail.attendance.percentage, 16.67);
  check('excused count surfaced', star2.detail.attendance.excused, 1);

  console.log(failures ? `\n${failures} FAILURE(S)` : '\nAll assertions passed');
  process.exit(failures ? 1 : 0);
})();
