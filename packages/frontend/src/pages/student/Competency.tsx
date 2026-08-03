import { useQuery } from '@tanstack/react-query';
import { useState } from 'react';
import { cbmeApi } from '../../services/api';
import CompetencyDomains from '../../components/cbme/CompetencyDomains';
import EligibilityBanner from '../../components/cbme/EligibilityBanner';
import { downloadCompetencyCertificate } from '../../utils/certificate';
import {
  attendanceTypeLabel,
  type RemediationItem,
  // aliased: the page component below is also called StudentCompetency
  type StudentCompetency as StudentCompetencyRecord,
} from '../../utils/competency';
import {
  ArrowDownTrayIcon,
  BookOpenIcon,
  ClipboardDocumentCheckIcon,
  ClockIcon,
  PresentationChartLineIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';

interface MyCompetency {
  rotation: { id: string; name: string; startDate: string; endDate: string } | null;
  competency: StudentCompetencyRecord | null;
  cohortSize: number;
  remediation: RemediationItem[];
  signOut: { status: string; certificate_serial: string; created_at: string } | null;
}

export function StudentCompetency() {
  const [downloading, setDownloading] = useState(false);

  const { data, isLoading, error } = useQuery<MyCompetency>({
    queryKey: ['my-competency'],
    queryFn: async () => {
      const res = await cbmeApi.getMyCompetency();
      return res.data?.data;
    },
    staleTime: 1000 * 60 * 2,
  });

  const handleCertificate = async () => {
    if (!data?.rotation) return;
    setDownloading(true);
    try {
      const res = await cbmeApi.getCertificate(data.rotation.id);
      downloadCompetencyCertificate(res.data?.data);
    } catch {
      toast.error('Could not generate the certificate right now.');
    } finally {
      setDownloading(false);
    }
  };

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/3" />
        <div className="h-32 bg-gray-200 rounded-xl" />
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
          {[1, 2, 3, 4].map((i) => (
            <div key={i} className="h-36 bg-gray-200 rounded-xl" />
          ))}
        </div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="card text-center py-12">
        <p className="text-gray-600">Your competency record could not be loaded. Please try again.</p>
      </div>
    );
  }

  const c = data?.competency;

  if (!data?.rotation || !c) {
    return (
      <div className="space-y-6">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Competency & Sign-Out</h1>
          <p className="text-gray-600">Your progress against the four assessment domains.</p>
        </div>
        <div className="card text-center py-12">
          <ClipboardDocumentCheckIcon className="w-12 h-12 text-gray-300 mx-auto mb-3" />
          <p className="text-gray-600 font-medium">You are not currently posted to a rotation.</p>
          <p className="text-gray-500 text-sm mt-1">
            Your competency card appears here once you are enrolled.
          </p>
        </div>
      </div>
    );
  }

  const att = c.detail.attendance;
  const acad = c.detail.academic;

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-end sm:justify-between gap-3">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Competency & Sign-Out</h1>
          <p className="text-gray-600">
            {data.rotation.name} — every domain must reach two-thirds of its weight.
          </p>
        </div>
        {c.isEligible && (
          <button onClick={handleCertificate} disabled={downloading} className="btn-primary">
            <ArrowDownTrayIcon className="w-5 h-5 mr-2" />
            {downloading ? 'Preparing…' : 'Download certificate'}
          </button>
        )}
      </div>

      <EligibilityBanner
        isEligible={c.isEligible}
        totalScore={c.totalScore}
        domains={c.domains}
        remediation={data.remediation}
        rank={c.rank}
        cohortSize={data.cohortSize}
      />

      {data.signOut?.status === 'signed_out' && (
        <div className="card bg-emerald-50 border-emerald-200">
          <p className="text-sm text-emerald-900">
            <strong>Signed out.</strong> Certificate serial{' '}
            <span className="font-mono">{data.signOut.certificate_serial}</span>.
          </p>
        </div>
      )}

      <CompetencyDomains domains={c.domains} />

      {/* ---------------- Domain detail ---------------- */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
        {/* Attendance */}
        <div className="card">
          <div className="flex items-center gap-2 mb-4">
            <ClockIcon className="w-5 h-5 text-primary-800" />
            <h3 className="font-semibold text-gray-900">Attendance detail</h3>
          </div>
          <div className="grid grid-cols-4 gap-2 mb-4 text-center">
            {[
              { label: 'Present', value: att.present, tone: 'text-green-700 bg-green-50' },
              { label: 'Late', value: att.late, tone: 'text-amber-700 bg-amber-50' },
              { label: 'Excused', value: att.excused, tone: 'text-blue-700 bg-blue-50' },
              { label: 'Absent', value: att.absent, tone: 'text-red-700 bg-red-50' },
            ].map((s) => (
              <div key={s.label} className={`rounded-lg py-2.5 ${s.tone}`}>
                <p className="text-xl font-bold leading-none">{s.value}</p>
                <p className="text-[11px] mt-1 font-medium">{s.label}</p>
              </div>
            ))}
          </div>
          <p className="text-xs text-gray-500 mb-3">
            A late arrival earns half credit. Excused sessions are removed from the denominator, so
            they neither help nor harm your score.
          </p>
          {att.byType.length > 0 ? (
            <div className="space-y-2.5">
              {att.byType.map((t) => (
                <div key={t.type}>
                  <div className="flex justify-between text-sm mb-1">
                    <span className="text-gray-700">{attendanceTypeLabel(t.type)}</span>
                    <span className="font-medium text-gray-900">
                      {t.percentage}% <span className="text-gray-400">({t.sessions} sessions)</span>
                    </span>
                  </div>
                  <div className="progress-bar">
                    <div
                      className="progress-fill bg-primary-800"
                      style={{ width: `${Math.min(t.percentage, 100)}%` }}
                    />
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <p className="text-sm text-gray-500">No attendance sessions have been held yet.</p>
          )}
        </div>

        {/* Clinical competency */}
        <div className="card">
          <div className="flex items-center gap-2 mb-4">
            <ClipboardDocumentCheckIcon className="w-5 h-5 text-teal-700" />
            <h3 className="font-semibold text-gray-900">Clinical competency detail</h3>
          </div>
          <p className="text-xs text-gray-500 mb-3">
            Each activity type that has been assessed at least once contributes equally, so you are
            not penalised for an activity the unit did not run.
          </p>
          <div className="space-y-2.5">
            {c.detail.clinical.breakdown.map((b) => (
              <div key={b.type} className="flex items-center justify-between gap-3">
                <span className="text-sm text-gray-700 truncate">{b.label}</span>
                {b.count > 0 ? (
                  <span className="text-sm font-semibold text-gray-900 shrink-0">
                    {b.percentage}%
                    <span className="text-gray-400 font-normal ml-1.5">
                      ({b.count} assessment{b.count === 1 ? '' : 's'})
                    </span>
                  </span>
                ) : (
                  <span className="text-xs text-gray-400 shrink-0">Not yet assessed</span>
                )}
              </div>
            ))}
          </div>
        </div>

        {/* Seminar */}
        <div className="card">
          <div className="flex items-center gap-2 mb-4">
            <PresentationChartLineIcon className="w-5 h-5 text-violet-700" />
            <h3 className="font-semibold text-gray-900">Seminar presentation</h3>
          </div>
          {c.detail.seminar.assessments > 0 ? (
            <>
              <p className="text-3xl font-bold text-violet-700">{c.detail.seminar.percentage}%</p>
              <p className="text-sm text-gray-500 mt-1">
                Averaged over {c.detail.seminar.assessments} assessed presentation
                {c.detail.seminar.assessments === 1 ? '' : 's'} across nine rubric domains.
              </p>
            </>
          ) : (
            <p className="text-sm text-gray-500">
              Your seminar has not been assessed yet. Check your allocated topic and presentation
              date on the Seminars page.
            </p>
          )}
        </div>

        {/* Academic */}
        <div className="card">
          <div className="flex items-center gap-2 mb-4">
            <BookOpenIcon className="w-5 h-5 text-amber-600" />
            <h3 className="font-semibold text-gray-900">Academic learning detail</h3>
          </div>
          <p className="text-xs text-gray-500 mb-3">
            CME reading, self-assessment quizzes and daily CBT weigh equally within this domain.
          </p>
          <div className="space-y-3">
            {[
              {
                label: 'CME articles read',
                value: `${acad.cme.completed} / ${acad.cme.total}`,
                pct: acad.cme.percentage,
              },
              {
                label: 'Self-assessment average',
                value: `${acad.selfAssessment.averageScore}%`,
                pct: acad.selfAssessment.averageScore,
                sub: `${acad.selfAssessment.completed} quiz${
                  acad.selfAssessment.completed === 1 ? '' : 'zes'
                } completed`,
              },
              {
                label: 'Daily CBT average',
                value: `${acad.cbt.averageScore}%`,
                pct: acad.cbt.averageScore,
                sub: `${acad.cbt.attempts} attempt${acad.cbt.attempts === 1 ? '' : 's'}`,
              },
            ].map((row) => (
              <div key={row.label}>
                <div className="flex justify-between text-sm mb-1">
                  <span className="text-gray-700">
                    {row.label}
                    {row.sub && <span className="text-gray-400 ml-1.5 text-xs">{row.sub}</span>}
                  </span>
                  <span className="font-medium text-gray-900">{row.value}</span>
                </div>
                <div className="progress-bar">
                  <div
                    className="progress-fill bg-amber-500"
                    style={{ width: `${Math.min(row.pct, 100)}%` }}
                  />
                </div>
              </div>
            ))}
          </div>
          {c.detail.improvement !== null && (
            <p className="text-xs text-gray-500 mt-4 pt-3 border-t border-gray-100">
              CBT trend:{' '}
              <strong className={c.detail.improvement >= 0 ? 'text-green-700' : 'text-red-700'}>
                {c.detail.improvement >= 0 ? '+' : ''}
                {c.detail.improvement} points
              </strong>{' '}
              comparing the second half of your attempts with the first.
            </p>
          )}
        </div>
      </div>

      <p className="text-xs text-gray-400 text-center">
        All scores are computed automatically from recorded attendance and assessments. Every score
        written by a consultant is audit-logged and reproducible.
      </p>
    </div>
  );
}

export default StudentCompetency;
