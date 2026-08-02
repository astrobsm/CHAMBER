import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { useState } from 'react';
import { useSearchParams } from 'react-router-dom';
import { cbmeApi, rotationsApi } from '../../services/api';
import CompetencyDomains from '../../components/cbme/CompetencyDomains';
import { downloadCompetencyCertificate } from '../../utils/certificate';
import { DOMAIN_LABELS, type DomainKey, type StudentCompetency } from '../../utils/competency';
import {
  ArrowPathIcon,
  BellAlertIcon,
  CheckBadgeIcon,
  TrophyIcon,
  XMarkIcon,
  ArrowDownTrayIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';

interface CompetencyBoardData {
  rotation: { id: string; name: string; specialty: string | null; signOutDate: string | null };
  students: StudentCompetency[];
  summary: {
    cohortSize: number;
    eligible: number;
    notEligible: number;
    averageScore: number;
    domainAverages: Array<{ key: DomainKey; label: string; weight: number; required: number; average: number; passing: number }>;
  };
}

export function AdminCompetencyBoard() {
  const queryClient = useQueryClient();
  const [params, setParams] = useSearchParams();
  const rotationId = params.get('rotationId') || '';
  const [expanded, setExpanded] = useState<string | null>(null);
  const [filter, setFilter] = useState<'all' | 'eligible' | 'blocked'>('all');

  const { data: rotations } = useQuery<Array<{ id: string; name: string }>>({
    queryKey: ['rotations-list'],
    queryFn: async () => {
      const res = await rotationsApi.getAll();
      return (res.data?.data || []) as Array<{ id: string; name: string }>;
    },
  });

  const { data, isLoading } = useQuery<CompetencyBoardData>({
    queryKey: ['rotation-competency', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getRotationCompetency(rotationId);
      return res.data?.data;
    },
    enabled: !!rotationId,
  });

  const refresh = () => queryClient.invalidateQueries({ queryKey: ['rotation-competency', rotationId] });

  const recompute = useMutation({
    mutationFn: () => cbmeApi.recomputeCompetency(rotationId),
    onSuccess: (res) => {
      toast.success(res.data?.message || 'Competency recomputed');
      refresh();
    },
    onError: () => toast.error('Recompute failed'),
  });

  const computeAwards = useMutation({
    mutationFn: () => cbmeApi.computeAwards(rotationId),
    onSuccess: (res) => toast.success(res.data?.message || 'Awards computed'),
    onError: (err: { response?: { data?: { message?: string } } }) =>
      toast.error(err.response?.data?.message || 'Could not compute awards'),
  });

  const reminders = useMutation({
    mutationFn: () => cbmeApi.sendReminders(rotationId),
    onSuccess: (res) => toast.success(res.data?.message || 'Reminders sent'),
    onError: () => toast.error('Could not send reminders'),
  });

  const signOut = useMutation({
    mutationFn: (vars: { studentId: string; override?: boolean }) =>
      cbmeApi.signOut(rotationId, vars),
    onSuccess: (res) => {
      toast.success(res.data?.message || 'Student signed out');
      refresh();
    },
    onError: (err: { response?: { data?: { message?: string } } }) =>
      toast.error(err.response?.data?.message || 'Sign-out refused'),
  });

  const handleSignOut = (s: StudentCompetency) => {
    if (s.isEligible) {
      signOut.mutate({ studentId: s.studentId });
      return;
    }
    // The engine will refuse; an admin must consciously override and it is logged.
    const failed = s.deficientDomains.map((d) => DOMAIN_LABELS[d]).join(', ');
    if (
      window.confirm(
        `${s.name} has NOT met the minimum competency in: ${failed}.\n\n` +
          'Signing out anyway records an administrative override against your account in the audit log. Continue?'
      )
    ) {
      signOut.mutate({ studentId: s.studentId, override: true });
    }
  };

  const handleCertificate = async (s: StudentCompetency) => {
    try {
      const res = await cbmeApi.getCertificate(rotationId, s.studentId);
      downloadCompetencyCertificate(res.data?.data);
    } catch {
      toast.error('Could not generate the certificate');
    }
  };

  const students = (data?.students || []).filter((s) =>
    filter === 'all' ? true : filter === 'eligible' ? s.isEligible : !s.isEligible
  );

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-end sm:justify-between gap-3">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Competency Board</h1>
          <p className="text-gray-600">
            Sign-out eligibility is decided by the engine — a student must reach two-thirds of every
            domain, whatever their aggregate.
          </p>
        </div>
        <select
          className="input sm:w-72"
          value={rotationId}
          onChange={(e) => setParams(e.target.value ? { rotationId: e.target.value } : {})}
        >
          <option value="">Select a rotation…</option>
          {(rotations || []).map((r) => (
            <option key={r.id} value={r.id}>
              {r.name}
            </option>
          ))}
        </select>
      </div>

      {!rotationId && (
        <div className="card text-center py-12 text-gray-500">
          Choose a rotation to view its competency board.
        </div>
      )}

      {rotationId && isLoading && <div className="h-96 bg-gray-200 rounded-xl animate-pulse" />}

      {rotationId && data && (
        <>
          {/* ---- Summary ---- */}
          <div className="grid grid-cols-2 lg:grid-cols-4 gap-3">
            {[
              { label: 'Cohort size', value: data.summary.cohortSize, tone: 'text-gray-900' },
              { label: 'Eligible for sign-out', value: data.summary.eligible, tone: 'text-emerald-700' },
              { label: 'Not yet eligible', value: data.summary.notEligible, tone: 'text-red-700' },
              { label: 'Cohort average', value: `${data.summary.averageScore}%`, tone: 'text-primary-800' },
            ].map((s) => (
              <div key={s.label} className="card">
                <p className={`text-3xl font-bold leading-none ${s.tone}`}>{s.value}</p>
                <p className="text-xs text-gray-500 mt-1.5">{s.label}</p>
              </div>
            ))}
          </div>

          {/* ---- Domain averages ---- */}
          <div className="card">
            <h2 className="font-semibold text-gray-900 mb-4">Cohort performance by domain</h2>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              {data.summary.domainAverages.map((d) => (
                <div key={d.key}>
                  <div className="flex justify-between text-sm mb-1">
                    <span className="text-gray-700 truncate">{d.label}</span>
                    <span className="font-medium text-gray-900">
                      {d.average}/{d.weight}
                    </span>
                  </div>
                  <div className="progress-bar">
                    <div
                      className={`progress-fill ${d.average >= d.required ? 'bg-emerald-600' : 'bg-red-500'}`}
                      style={{ width: `${Math.min((d.average / d.weight) * 100, 100)}%` }}
                    />
                  </div>
                  <p className="text-xs text-gray-500 mt-1">
                    {d.passing} of {data.summary.cohortSize} met the {d.required} minimum
                  </p>
                </div>
              ))}
            </div>
          </div>

          {/* ---- Actions ---- */}
          <div className="flex flex-wrap gap-2">
            <button className="btn-outline" onClick={() => recompute.mutate()} disabled={recompute.isPending}>
              <ArrowPathIcon className="w-4 h-4 mr-2" />
              {recompute.isPending ? 'Recomputing…' : 'Recompute & snapshot'}
            </button>
            <button className="btn-outline" onClick={() => reminders.mutate()} disabled={reminders.isPending}>
              <BellAlertIcon className="w-4 h-4 mr-2" /> Send task reminders
            </button>
            <button className="btn-primary" onClick={() => computeAwards.mutate()} disabled={computeAwards.isPending}>
              <TrophyIcon className="w-4 h-4 mr-2" />
              {computeAwards.isPending ? 'Computing…' : 'Compute end-of-rotation awards'}
            </button>
          </div>

          {/* ---- Roster ---- */}
          <div className="card p-0 overflow-hidden">
            <div className="flex flex-wrap items-center justify-between gap-3 px-4 sm:px-6 py-4 border-b border-gray-100">
              <h2 className="font-semibold text-gray-900">Students</h2>
              <div className="flex gap-1">
                {(
                  [
                    { key: 'all', label: `All (${data.summary.cohortSize})` },
                    { key: 'eligible', label: `Eligible (${data.summary.eligible})` },
                    { key: 'blocked', label: `Blocked (${data.summary.notEligible})` },
                  ] as const
                ).map((f) => (
                  <button
                    key={f.key}
                    onClick={() => setFilter(f.key)}
                    className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors ${
                      filter === f.key ? 'bg-primary-800 text-white' : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
                    }`}
                  >
                    {f.label}
                  </button>
                ))}
              </div>
            </div>

            <ul className="divide-y divide-gray-100">
              {students.map((s) => (
                <li key={s.studentId}>
                  <div className="flex flex-wrap items-center gap-3 px-4 sm:px-6 py-3">
                    <span className="w-8 text-center text-sm font-bold text-gray-400 shrink-0">
                      {s.rank}
                    </span>
                    <div className="flex-1 min-w-[10rem]">
                      <p className="font-medium text-gray-900">{s.name}</p>
                      <p className="text-xs text-gray-500">
                        {s.matricNumber || '—'}
                        {s.group && (
                          <span style={{ color: s.group.color }} className="ml-2 font-medium">
                            {s.group.name}
                          </span>
                        )}
                      </p>
                    </div>

                    {/* Per-domain pass/fail pills */}
                    <div className="flex gap-1 shrink-0">
                      {s.domains.map((d) => (
                        <span
                          key={d.key}
                          title={`${d.label}: ${d.score} of ${d.weight} (min ${d.required})`}
                          className={`w-7 h-7 rounded-md flex items-center justify-center text-[10px] font-bold ${
                            d.passed ? 'bg-emerald-100 text-emerald-800' : 'bg-red-100 text-red-800'
                          }`}
                        >
                          {d.label.charAt(0)}
                        </span>
                      ))}
                    </div>

                    <span className="w-16 text-right font-bold text-gray-900 shrink-0">
                      {s.totalScore.toFixed(1)}
                    </span>

                    <span className={`shrink-0 ${s.isEligible ? 'badge-success' : 'badge-error'}`}>
                      {s.isEligible ? 'Eligible' : 'Not eligible'}
                    </span>

                    <div className="flex gap-1 shrink-0">
                      <button
                        className="btn-ghost !px-2 !py-1 text-xs"
                        onClick={() => setExpanded(expanded === s.studentId ? null : s.studentId)}
                      >
                        {expanded === s.studentId ? <XMarkIcon className="w-4 h-4" /> : 'Detail'}
                      </button>
                      <button
                        className="btn-ghost !px-2 !py-1"
                        onClick={() => handleCertificate(s)}
                        title="Download certificate"
                      >
                        <ArrowDownTrayIcon className="w-4 h-4" />
                      </button>
                      <button
                        className={`!px-2.5 !py-1 text-xs rounded-lg font-medium ${
                          s.isEligible
                            ? 'bg-emerald-600 text-white hover:bg-emerald-700'
                            : 'border border-red-300 text-red-700 hover:bg-red-50'
                        }`}
                        onClick={() => handleSignOut(s)}
                        disabled={signOut.isPending}
                      >
                        <CheckBadgeIcon className="w-4 h-4 inline mr-1" />
                        Sign out
                      </button>
                    </div>
                  </div>

                  {expanded === s.studentId && (
                    <div className="px-4 sm:px-6 pb-5 bg-gray-50">
                      <div className="pt-4">
                        <CompetencyDomains domains={s.domains} />
                      </div>
                      <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 mt-4 text-sm">
                        <div>
                          <p className="text-xs text-gray-500">Attendance</p>
                          <p className="font-medium text-gray-900">
                            {s.detail.attendance.present}P / {s.detail.attendance.late}L /{' '}
                            {s.detail.attendance.excused}E / {s.detail.attendance.absent}A
                          </p>
                        </div>
                        <div>
                          <p className="text-xs text-gray-500">Seminar assessments</p>
                          <p className="font-medium text-gray-900">{s.detail.seminar.assessments}</p>
                        </div>
                        <div>
                          <p className="text-xs text-gray-500">CME read</p>
                          <p className="font-medium text-gray-900">
                            {s.detail.academic.cme.completed}/{s.detail.academic.cme.total}
                          </p>
                        </div>
                        <div>
                          <p className="text-xs text-gray-500">CBT attempts</p>
                          <p className="font-medium text-gray-900">
                            {s.detail.academic.cbt.attempts} (avg {s.detail.academic.cbt.averageScore}%)
                          </p>
                        </div>
                      </div>
                    </div>
                  )}
                </li>
              ))}
            </ul>

            {students.length === 0 && (
              <div className="text-center py-10 text-gray-500 text-sm">
                No students match this filter.
              </div>
            )}
          </div>
        </>
      )}
    </div>
  );
}

export default AdminCompetencyBoard;
