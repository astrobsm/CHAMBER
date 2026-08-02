import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { useMemo, useState } from 'react';
import { cbmeApi, rotationsApi } from '../../services/api';
import type { RubricDefinition } from '../../utils/competency';
import { CheckCircleIcon, ClipboardDocumentCheckIcon } from '@heroicons/react/24/outline';
import { format } from 'date-fns';
import toast from 'react-hot-toast';

interface RotationOption {
  id: string;
  name: string;
}

interface EnrolledStudent {
  enrollment_id: string;
  user_id: string;
  first_name: string;
  last_name: string;
  matric_number: string | null;
}

interface RecordedAssessment {
  id: string;
  studentName: string;
  matricNumber: string | null;
  label: string;
  assessmentType: string;
  assessmentDate: string;
  percentage: number;
  assessorName: string | null;
}

/** Anchors for the 0–10 scale, so different consultants score comparably. */
const SCALE_ANCHORS = [
  { min: 9, label: 'Outstanding' },
  { min: 7, label: 'Above expectation' },
  { min: 5, label: 'Meets expectation' },
  { min: 3, label: 'Below expectation' },
  { min: 0, label: 'Unsatisfactory' },
];

function anchorFor(value: number): string {
  return SCALE_ANCHORS.find((a) => value >= a.min)?.label || '';
}

export function AssessorAssess() {
  const queryClient = useQueryClient();
  const [rotationId, setRotationId] = useState('');
  const [studentId, setStudentId] = useState('');
  const [type, setType] = useState('clerking');
  const [date, setDate] = useState(() => new Date().toISOString().split('T')[0]);
  const [scores, setScores] = useState<Record<string, number>>({});
  const [feedback, setFeedback] = useState('');

  const { data: framework } = useQuery<{ rubrics: RubricDefinition[] }>({
    queryKey: ['cbme-framework'],
    queryFn: async () => {
      const res = await cbmeApi.getFramework();
      return res.data?.data;
    },
    staleTime: Infinity,
  });

  const { data: rotations } = useQuery<RotationOption[]>({
    queryKey: ['rotations-list'],
    queryFn: async () => {
      const res = await rotationsApi.getAll();
      return (res.data?.data || []) as RotationOption[];
    },
  });

  const { data: students } = useQuery<EnrolledStudent[]>({
    queryKey: ['rotation-students', rotationId],
    queryFn: async () => {
      const res = await rotationsApi.getStudents(rotationId);
      return res.data?.data?.students || [];
    },
    enabled: !!rotationId,
  });

  // Seminar assessments must be attached to the student's allocated topic.
  const { data: seminarTopics } = useQuery<Array<{ id: string; title: string; assignment: { id: string; studentId: string; studentName: string } | null }>>({
    queryKey: ['seminar-topics', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getSeminarTopics(rotationId);
      return res.data?.data?.topics || [];
    },
    enabled: !!rotationId && type === 'seminar',
  });

  const { data: recent } = useQuery<RecordedAssessment[]>({
    queryKey: ['recent-assessments', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getAssessments({ rotationId });
      return res.data?.data?.assessments || [];
    },
    enabled: !!rotationId,
  });

  const rubric = useMemo(
    () => framework?.rubrics.find((r) => r.type === type),
    [framework, type]
  );

  // students endpoint returns users.id; the CBME API keys on students.id, so
  // resolve through the seminar/competency board instead.
  const { data: cohort } = useQuery<Array<{ studentId: string; name: string; matricNumber: string }>>({
    queryKey: ['cohort-ids', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getRotationCompetency(rotationId);
      return (res.data?.data?.students || []).map((s: { studentId: string; name: string; matricNumber: string }) => ({
        studentId: s.studentId,
        name: s.name,
        matricNumber: s.matricNumber,
      }));
    },
    enabled: !!rotationId,
  });

  const selectableStudents = cohort?.length
    ? cohort
    : (students || []).map((s) => ({
        studentId: s.user_id,
        name: `${s.first_name} ${s.last_name}`,
        matricNumber: s.matric_number || '',
      }));

  const seminarAssignment = seminarTopics?.find((t) => t.assignment?.studentId === studentId)?.assignment;

  const total = rubric ? rubric.criteria.reduce((a, c) => a + (scores[c.key] ?? 0), 0) : 0;
  const maxTotal = rubric ? rubric.criteria.length * rubric.criterionMax : 0;
  const percentage = maxTotal > 0 ? Math.round((total / maxTotal) * 1000) / 10 : 0;
  const complete = rubric ? rubric.criteria.every((c) => scores[c.key] !== undefined) : false;

  const submit = useMutation({
    mutationFn: () =>
      cbmeApi.createAssessment({
        rotationId,
        studentId,
        assessmentType: type,
        referenceId: type === 'seminar' ? seminarAssignment?.id : undefined,
        assessmentDate: date,
        scores,
        feedback: feedback.trim() || undefined,
      }),
    onSuccess: (res) => {
      toast.success(res.data?.message || 'Assessment recorded');
      setScores({});
      setFeedback('');
      queryClient.invalidateQueries({ queryKey: ['recent-assessments', rotationId] });
    },
    onError: (err: { response?: { data?: { message?: string } } }) => {
      toast.error(err.response?.data?.message || 'Could not record the assessment');
    },
  });

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-gray-900">Record an Assessment</h1>
        <p className="text-gray-600">
          Score each criterion out of 10. The platform converts the rubric to a percentage and folds
          it into the student's competency automatically.
        </p>
      </div>

      {/* ---- Context ---- */}
      <div className="card">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
          <div>
            <label className="label">Rotation</label>
            <select
              className="input"
              value={rotationId}
              onChange={(e) => {
                setRotationId(e.target.value);
                setStudentId('');
              }}
            >
              <option value="">Select…</option>
              {(rotations || []).map((r) => (
                <option key={r.id} value={r.id}>
                  {r.name}
                </option>
              ))}
            </select>
          </div>

          <div>
            <label className="label">Activity</label>
            <select
              className="input"
              value={type}
              onChange={(e) => {
                setType(e.target.value);
                setScores({});
              }}
            >
              {(framework?.rubrics || []).map((r) => (
                <option key={r.type} value={r.type}>
                  {r.label}
                </option>
              ))}
            </select>
          </div>

          <div>
            <label className="label">Student</label>
            <select
              className="input"
              value={studentId}
              onChange={(e) => setStudentId(e.target.value)}
              disabled={!rotationId}
            >
              <option value="">Select…</option>
              {selectableStudents.map((s) => (
                <option key={s.studentId} value={s.studentId}>
                  {s.name} {s.matricNumber ? `(${s.matricNumber})` : ''}
                </option>
              ))}
            </select>
          </div>

          <div>
            <label className="label">Date</label>
            <input
              type="date"
              className="input"
              value={date}
              onChange={(e) => setDate(e.target.value)}
            />
          </div>
        </div>

        {type === 'seminar' && studentId && (
          <div className="mt-4 p-3 rounded-lg bg-violet-50 border border-violet-200">
            {seminarAssignment ? (
              <p className="text-sm text-violet-900">
                Assessing the allocated topic:{' '}
                <strong>{seminarTopics?.find((t) => t.assignment?.id === seminarAssignment.id)?.title}</strong>
              </p>
            ) : (
              <p className="text-sm text-amber-800">
                This student has no allocated seminar topic. The score will still be recorded, but it
                will not be linked to a topic.
              </p>
            )}
          </div>
        )}
      </div>

      {/* ---- Rubric ---- */}
      {rubric && (
        <div className="card">
          <div className="flex items-center justify-between gap-3 mb-5">
            <div>
              <h2 className="font-semibold text-gray-900">{rubric.label} rubric</h2>
              <p className="text-sm text-gray-500">
                {rubric.criteria.length} criteria × {rubric.criterionMax} points
              </p>
            </div>
            <div className="text-right shrink-0">
              <p className="text-3xl font-bold text-primary-800 leading-none">{percentage}%</p>
              <p className="text-xs text-gray-500 mt-1">
                {total} / {maxTotal}
              </p>
            </div>
          </div>

          <div className="space-y-5">
            {rubric.criteria.map((c) => {
              const value = scores[c.key];
              return (
                <div key={c.key}>
                  <div className="flex items-center justify-between gap-3 mb-1.5">
                    <label className="text-sm font-medium text-gray-800">{c.label}</label>
                    <span className="text-sm shrink-0">
                      {value === undefined ? (
                        <span className="text-gray-400">Not scored</span>
                      ) : (
                        <>
                          <span className="font-bold text-gray-900">{value}</span>
                          <span className="text-gray-400">/{rubric.criterionMax}</span>
                          <span className="text-xs text-gray-500 ml-2">{anchorFor(value)}</span>
                        </>
                      )}
                    </span>
                  </div>
                  <div className="flex gap-1">
                    {Array.from({ length: rubric.criterionMax + 1 }, (_, n) => (
                      <button
                        key={n}
                        type="button"
                        onClick={() => setScores((s) => ({ ...s, [c.key]: n }))}
                        className={`flex-1 h-9 rounded-md text-xs font-medium border transition-colors ${
                          value === n
                            ? 'bg-primary-800 border-primary-800 text-white'
                            : 'bg-white border-gray-200 text-gray-600 hover:border-primary-400 hover:bg-primary-50'
                        }`}
                        aria-label={`${c.label}: ${n} of ${rubric.criterionMax}`}
                      >
                        {n}
                      </button>
                    ))}
                  </div>
                </div>
              );
            })}
          </div>

          <div className="mt-6">
            <label className="label">Feedback to the student (optional)</label>
            <textarea
              className="input"
              rows={3}
              value={feedback}
              onChange={(e) => setFeedback(e.target.value)}
              placeholder="Specific, actionable feedback…"
            />
          </div>

          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 mt-5 pt-4 border-t border-gray-100">
            <p className="text-xs text-gray-500">
              Every criterion must be scored. This assessment is audit-logged against your account.
            </p>
            <button
              className="btn-primary"
              disabled={!rotationId || !studentId || !complete || submit.isPending}
              onClick={() => submit.mutate()}
            >
              <CheckCircleIcon className="w-5 h-5 mr-2" />
              {submit.isPending ? 'Recording…' : 'Record assessment'}
            </button>
          </div>
        </div>
      )}

      {/* ---- Recently recorded ---- */}
      {rotationId && (
        <div className="card p-0 overflow-hidden">
          <h2 className="font-semibold text-gray-900 px-4 sm:px-6 py-4 border-b border-gray-100">
            Recently recorded
          </h2>
          {recent?.length ? (
            <div className="overflow-x-auto">
              <table className="w-full text-sm">
                <thead className="bg-gray-50 text-left">
                  <tr>
                    <th className="px-4 py-2.5 font-semibold text-gray-600">Student</th>
                    <th className="px-4 py-2.5 font-semibold text-gray-600">Activity</th>
                    <th className="px-4 py-2.5 font-semibold text-gray-600 hidden sm:table-cell">Date</th>
                    <th className="px-4 py-2.5 font-semibold text-gray-600 hidden lg:table-cell">Assessor</th>
                    <th className="px-4 py-2.5 font-semibold text-gray-600 text-right">Score</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-gray-100">
                  {recent.slice(0, 25).map((a) => (
                    <tr key={a.id} className="hover:bg-gray-50">
                      <td className="px-4 py-2.5">
                        <p className="font-medium text-gray-900">{a.studentName}</p>
                        <p className="text-xs text-gray-500">{a.matricNumber || '—'}</p>
                      </td>
                      <td className="px-4 py-2.5 text-gray-700">{a.label}</td>
                      <td className="px-4 py-2.5 text-gray-500 hidden sm:table-cell">
                        {format(new Date(a.assessmentDate), 'd MMM yyyy')}
                      </td>
                      <td className="px-4 py-2.5 text-gray-500 hidden lg:table-cell">
                        {a.assessorName || '—'}
                      </td>
                      <td className="px-4 py-2.5 text-right font-bold text-gray-900">
                        {a.percentage}%
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          ) : (
            <div className="text-center py-10 text-gray-500 text-sm">
              <ClipboardDocumentCheckIcon className="w-10 h-10 text-gray-300 mx-auto mb-2" />
              No assessments recorded for this rotation yet.
            </div>
          )}
        </div>
      )}
    </div>
  );
}

export default AssessorAssess;
