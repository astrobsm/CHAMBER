// ============================================================================
// CBME competency framework — shared client-side model.
//
// The server is the authority on every score; these constants exist so the UI
// can label and colour domains consistently, and so a page can render sensible
// thresholds before /cbme/framework resolves.
// ============================================================================

export const DOMAIN_WEIGHTS = {
  attendance: 50,
  seminar: 10,
  clinical: 20,
  academic: 20,
} as const;

export type DomainKey = keyof typeof DOMAIN_WEIGHTS;

/** A student must demonstrate two-thirds of the available score in EVERY domain. */
export const THRESHOLD_RATIO = 2 / 3;

export const DOMAIN_ORDER: DomainKey[] = ['attendance', 'seminar', 'clinical', 'academic'];

export const DOMAIN_LABELS: Record<DomainKey, string> = {
  attendance: 'Attendance',
  seminar: 'Seminar Presentation',
  clinical: 'Clinical Competency',
  academic: 'Academic Learning',
};

export const DOMAIN_DESCRIPTIONS: Record<DomainKey, string> = {
  attendance: 'Ward rounds, clinics, theatre, emergency calls, grand rounds and departmental meetings',
  seminar: 'Structured rubric assessment of your allocated seminar topic',
  clinical: 'Clerking, ward presentation, clinical judgement, theatre performance and wound dressing',
  academic: 'CME reading, self-assessment quizzes and daily CBT',
};

export const DOMAIN_COLORS: Record<DomainKey, string> = {
  attendance: '#1e3a5f',
  seminar: '#7c3aed',
  clinical: '#0d9488',
  academic: '#d97706',
};

export function requiredFor(domain: DomainKey): number {
  return Math.round(DOMAIN_WEIGHTS[domain] * THRESHOLD_RATIO * 100) / 100;
}

// ---------------------------------------------------------------------------
// The five competitive learning teams
// ---------------------------------------------------------------------------

export interface House {
  code: string;
  name: string;
  motto: string;
  meaning: string;
  virtues: string[];
  color: string;
  gradient: string;
}

export const HOUSES: House[] = [
  {
    code: 'spartans',
    name: 'Spartans',
    motto: 'Come back with your shield, or on it.',
    meaning:
      'Elite warriors of ancient Sparta renowned for unmatched discipline, endurance, courage, resilience and excellence under pressure.',
    virtues: ['Discipline', 'Leadership', 'Professionalism', 'Excellence'],
    color: '#b91c1c',
    gradient: 'from-red-700 to-red-900',
  },
  {
    code: 'myrmidons',
    name: 'Myrmidons',
    motto: 'Loyal unto the last call.',
    meaning:
      'Legendary warriors led by Achilles in Greek mythology, celebrated for loyalty, precision, courage and unwavering commitment.',
    virtues: ['Loyalty', 'Teamwork', 'Commitment', 'Reliability'],
    color: '#1d4ed8',
    gradient: 'from-blue-700 to-blue-900',
  },
  {
    code: 'legionnaires',
    name: 'Legionnaires',
    motto: 'Order conquers chaos.',
    meaning:
      'Inspired by the Roman Legions, famous for organization, tactical excellence, discipline and collective strength.',
    virtues: ['Organization', 'Clinical precision', 'Accountability', 'Team coordination'],
    color: '#b45309',
    gradient: 'from-amber-600 to-amber-800',
  },
  {
    code: 'immortals',
    name: 'Immortals',
    motto: 'Always ten thousand strong.',
    meaning:
      'Named after the elite Persian Imperial Guard whose numbers were always maintained at ten thousand, symbolizing consistency, readiness and excellence.',
    virtues: ['Consistency', 'Readiness', 'Perseverance', 'Professional competence'],
    color: '#6d28d9',
    gradient: 'from-violet-700 to-violet-900',
  },
  {
    code: 'argonauts',
    name: 'Argonauts',
    motto: 'Seek the fleece; question everything.',
    meaning:
      'The legendary explorers who journeyed with Jason in search of the Golden Fleece, representing curiosity, discovery, intelligence and innovation.',
    virtues: ['Curiosity', 'Innovation', 'Learning', 'Clinical reasoning'],
    color: '#047857',
    gradient: 'from-emerald-700 to-emerald-900',
  },
];

export function houseByCode(code?: string | null): House | undefined {
  return HOUSES.find((h) => h.code === code);
}

// ---------------------------------------------------------------------------
// Shared response shapes
// ---------------------------------------------------------------------------

export interface DomainScore {
  key: DomainKey;
  label: string;
  weight: number;
  score: number;
  percentage: number;
  required: number;
  passed: boolean;
  shortfall: number;
}

export interface AttendanceTypeDetail {
  type: string;
  sessions: number;
  present: number;
  late: number;
  excused: number;
  absent: number;
  percentage: number;
}

export interface ClinicalBreakdown {
  type: string;
  label: string;
  count: number;
  percentage: number | null;
}

export interface CompetencyDetail {
  attendance: {
    totalSessions: number;
    eligibleSessions: number;
    present: number;
    late: number;
    excused: number;
    absent: number;
    percentage: number;
    byType: AttendanceTypeDetail[];
  };
  seminar: { assessments: number; percentage: number };
  clinical: { breakdown: ClinicalBreakdown[]; assessedTypes: number; percentage: number };
  academic: {
    cme: { completed: number; total: number; percentage: number };
    selfAssessment: { completed: number; averageScore: number };
    cbt: { attempts: number; averageScore: number };
    percentage: number;
  };
  improvement: number | null;
}

export interface StudentCompetency {
  studentId: string;
  name: string;
  matricNumber?: string;
  registrationNumber?: string;
  photoUrl?: string | null;
  trainingLevel?: string | null;
  rank: number;
  group: { id: string; code: string; name: string; color: string; motto: string; isLeader: boolean } | null;
  domains: DomainScore[];
  totalScore: number;
  isEligible: boolean;
  deficientDomains: DomainKey[];
  detail: CompetencyDetail;
}

export interface RemediationItem {
  domain: DomainKey;
  label: string;
  score: number;
  required: number;
  shortfall: number;
  recommendation: string;
}

export interface GroupStanding {
  id: string;
  rank: number;
  code: string;
  name: string;
  color: string;
  motto: string;
  leader: string | null;
  memberCount: number;
  totalScore: number;
  categories: Record<string, number>;
  members: Array<{
    studentId: string;
    name: string;
    matricNumber?: string;
    photoUrl?: string | null;
    totalScore: number;
    isLeader: boolean;
    isEligible: boolean;
  }>;
}

export interface RubricDefinition {
  type: string;
  label: string;
  domain: DomainKey;
  criterionMax: number;
  criteria: Array<{ key: string; label: string }>;
}

// ---------------------------------------------------------------------------
// Display helpers
// ---------------------------------------------------------------------------

export const ATTENDANCE_TYPE_LABELS: Record<string, string> = {
  clinic: 'Clinic',
  theatre: 'Theatre',
  ward_rounds: 'Ward Rounds',
  emergency_call: 'Emergency Calls',
  grand_round: 'Grand Round',
  departmental_meeting: 'Departmental Meetings',
  seminar: 'Seminar',
  other: 'Other',
};

export function attendanceTypeLabel(type: string): string {
  return ATTENDANCE_TYPE_LABELS[type] || type.replace(/_/g, ' ').replace(/\b\w/g, (c) => c.toUpperCase());
}

export function scoreTone(score: number, required: number): 'pass' | 'borderline' | 'fail' {
  if (score >= required) return score >= required * 1.15 ? 'pass' : 'borderline';
  return 'fail';
}

/** Ordinal suffix for ranks — 1st, 2nd, 3rd, 4th... */
export function ordinal(n: number): string {
  const s = ['th', 'st', 'nd', 'rd'];
  const v = n % 100;
  return n + (s[(v - 20) % 10] || s[v] || s[0]);
}
