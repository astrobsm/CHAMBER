import { useQuery } from '@tanstack/react-query';
import { useEffect, useState } from 'react';
import { useSearchParams } from 'react-router-dom';
import { AnimatePresence, motion } from 'framer-motion';
import { cbmeApi, rotationsApi } from '../../services/api';
import { downloadAwardCertificate } from '../../utils/certificate';
import {
  TrophyIcon,
  SparklesIcon,
  ArrowDownTrayIcon,
  PlayIcon,
  PauseIcon,
} from '@heroicons/react/24/solid';

interface Award {
  id: string;
  code: string;
  name: string;
  recipientType: 'student' | 'group';
  recipientName: string;
  studentId: string | null;
  groupId: string | null;
  groupColor: string | null;
  groupMotto: string | null;
  matricNumber: string | null;
  photoUrl: string | null;
  score: number | null;
  citation: string | null;
}

interface AwardsData {
  rotation: { id: string; name: string; specialty: string | null; academic_session: string | null; awards_computed_at: string | null } | null;
  awards: Award[];
  winningTeamMembers: Array<{ studentId: string; name: string; matricNumber: string | null; photoUrl: string | null }>;
}

interface RotationOption {
  id: string;
  name: string;
}

/**
 * End-of-rotation awards ceremony. Runs as an auto-advancing presentation the
 * department can project on the final theatre day, and doubles as a printable
 * record afterwards.
 */
export function Awards() {
  const [params, setParams] = useSearchParams();
  const rotationId = params.get('rotationId') || '';
  const [index, setIndex] = useState(0);
  const [playing, setPlaying] = useState(false);

  const { data: rotations } = useQuery<RotationOption[]>({
    queryKey: ['rotations-for-awards'],
    queryFn: async () => {
      const res = await rotationsApi.getAll();
      return (res.data?.data || []) as RotationOption[];
    },
  });

  const { data, isLoading } = useQuery<AwardsData>({
    queryKey: ['awards', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getAwards(rotationId);
      return res.data?.data;
    },
    enabled: !!rotationId,
  });

  const awards = data?.awards || [];

  // Auto-advance the ceremony; stop cleanly on the final award.
  useEffect(() => {
    if (!playing || awards.length === 0) return;
    const timer = setTimeout(() => {
      setIndex((i) => {
        if (i >= awards.length - 1) {
          setPlaying(false);
          return i;
        }
        return i + 1;
      });
    }, 6000);
    return () => clearTimeout(timer);
  }, [playing, index, awards.length]);

  // A different rotation means a fresh ceremony.
  useEffect(() => {
    setIndex(0);
    setPlaying(false);
  }, [rotationId]);

  const current = awards[index];

  const handleCertificate = (a: Award) => {
    downloadAwardCertificate({
      recipientName: a.recipientName,
      awardName: a.name,
      citation: a.citation || undefined,
      rotationName: data?.rotation?.name || '',
      academicSession: data?.rotation?.academic_session,
      teamName: a.recipientType === 'group' ? a.recipientName : undefined,
    });
  };

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-end sm:justify-between gap-3">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">End-of-Rotation Awards</h1>
          <p className="text-gray-600">
            Results are computed automatically from recorded competency data.
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
        <div className="card text-center py-12">
          <TrophyIcon className="w-12 h-12 text-gray-300 mx-auto mb-3" />
          <p className="text-gray-600">Choose a rotation to view its awards ceremony.</p>
        </div>
      )}

      {rotationId && isLoading && <div className="h-96 bg-gray-200 rounded-2xl animate-pulse" />}

      {rotationId && !isLoading && awards.length === 0 && (
        <div className="card text-center py-12">
          <SparklesIcon className="w-12 h-12 text-gray-300 mx-auto mb-3" />
          <p className="text-gray-600 font-medium">Awards have not been computed for this rotation.</p>
          <p className="text-gray-500 text-sm mt-1">
            An administrator can compute them from the Competency Board once the rotation closes.
          </p>
        </div>
      )}

      {current && (
        <>
          {/* ---- Ceremony stage ---- */}
          <div className="relative overflow-hidden rounded-2xl bg-gradient-to-br from-primary-900 via-primary-800 to-primary-900 text-white min-h-[22rem] flex items-center">
            <div className="absolute inset-0 opacity-20">
              {[...Array(18)].map((_, i) => (
                <motion.span
                  key={i}
                  className="absolute w-1.5 h-1.5 rounded-full bg-amber-300"
                  style={{ left: `${(i * 37) % 100}%`, top: `${(i * 53) % 100}%` }}
                  animate={{ opacity: [0.2, 1, 0.2], scale: [1, 1.6, 1] }}
                  transition={{ duration: 2.5 + (i % 4), repeat: Infinity, delay: i * 0.15 }}
                />
              ))}
            </div>

            <AnimatePresence mode="wait">
              <motion.div
                key={current.id}
                initial={{ opacity: 0, scale: 0.92, y: 20 }}
                animate={{ opacity: 1, scale: 1, y: 0 }}
                exit={{ opacity: 0, scale: 0.96, y: -16 }}
                transition={{ duration: 0.5 }}
                className="relative w-full px-6 sm:px-12 py-10 text-center"
              >
                <motion.div
                  initial={{ rotate: -12, scale: 0.6 }}
                  animate={{ rotate: 0, scale: 1 }}
                  transition={{ type: 'spring', stiffness: 180, damping: 12 }}
                  className="inline-flex items-center justify-center w-20 h-20 rounded-full bg-amber-400/20 mb-4"
                >
                  <TrophyIcon className="w-11 h-11 text-amber-300" />
                </motion.div>

                <p className="text-amber-300 text-xs uppercase tracking-[0.3em] font-semibold">
                  {current.recipientType === 'group' ? 'Team award' : 'Individual award'}
                </p>
                <h2 className="text-xl sm:text-2xl font-semibold text-white/90 mt-2">{current.name}</h2>

                <motion.p
                  initial={{ opacity: 0, y: 12 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: 0.35, duration: 0.5 }}
                  className="text-3xl sm:text-5xl font-bold mt-4"
                  style={{ color: current.groupColor || '#fbbf24' }}
                >
                  {current.recipientName}
                </motion.p>

                {current.score !== null && (
                  <p className="text-white/70 mt-2 text-lg">{current.score.toFixed(1)}%</p>
                )}
                {current.citation && (
                  <p className="text-white/60 text-sm mt-4 max-w-2xl mx-auto leading-relaxed">
                    {current.citation}
                  </p>
                )}

                {/* The winning team's whole roster is honoured together. */}
                {current.recipientType === 'group' && (data?.winningTeamMembers?.length ?? 0) > 0 && (
                  <div className="mt-6 pt-5 border-t border-white/15">
                    <p className="text-white/60 text-xs uppercase tracking-widest mb-3">
                      Each member receives an Individual Certificate of Excellence
                    </p>
                    <div className="flex flex-wrap justify-center gap-2">
                      {data!.winningTeamMembers.map((m, i) => (
                        <motion.span
                          key={m.studentId}
                          initial={{ opacity: 0, scale: 0.8 }}
                          animate={{ opacity: 1, scale: 1 }}
                          transition={{ delay: 0.5 + i * 0.05 }}
                          className="px-3 py-1 rounded-full bg-white/10 text-white text-xs"
                        >
                          {m.name}
                        </motion.span>
                      ))}
                    </div>
                  </div>
                )}
              </motion.div>
            </AnimatePresence>
          </div>

          {/* ---- Ceremony controls ---- */}
          <div className="flex flex-wrap items-center justify-between gap-3">
            <div className="flex items-center gap-2">
              <button onClick={() => setPlaying((p) => !p)} className="btn-primary">
                {playing ? (
                  <>
                    <PauseIcon className="w-5 h-5 mr-2" /> Pause ceremony
                  </>
                ) : (
                  <>
                    <PlayIcon className="w-5 h-5 mr-2" /> Play ceremony
                  </>
                )}
              </button>
              <button
                className="btn-ghost"
                onClick={() => setIndex((i) => Math.max(i - 1, 0))}
                disabled={index === 0}
              >
                Previous
              </button>
              <button
                className="btn-ghost"
                onClick={() => setIndex((i) => Math.min(i + 1, awards.length - 1))}
                disabled={index >= awards.length - 1}
              >
                Next
              </button>
            </div>
            <div className="flex items-center gap-3">
              <span className="text-sm text-gray-500">
                {index + 1} of {awards.length}
              </span>
              <button onClick={() => handleCertificate(current)} className="btn-outline">
                <ArrowDownTrayIcon className="w-4 h-4 mr-2" /> Certificate
              </button>
            </div>
          </div>

          {/* ---- Full roll of honour ---- */}
          <div className="card p-0 overflow-hidden">
            <h2 className="font-semibold text-gray-900 px-4 sm:px-6 py-4 border-b border-gray-100">
              Roll of honour
            </h2>
            <ul className="divide-y divide-gray-100">
              {awards.map((a, i) => (
                <li
                  key={a.id}
                  className={`flex items-center gap-3 px-4 sm:px-6 py-3 cursor-pointer hover:bg-gray-50 ${
                    i === index ? 'bg-primary-50' : ''
                  }`}
                  onClick={() => {
                    setIndex(i);
                    setPlaying(false);
                  }}
                >
                  <TrophyIcon
                    className="w-5 h-5 shrink-0"
                    style={{ color: a.recipientType === 'group' ? '#d4af37' : '#9ca3af' }}
                  />
                  <div className="flex-1 min-w-0">
                    <p className="text-sm font-medium text-gray-900 truncate">{a.name}</p>
                    <p className="text-xs text-gray-500 truncate">{a.recipientName}</p>
                  </div>
                  {a.score !== null && (
                    <span className="text-sm font-semibold text-gray-700 shrink-0">
                      {a.score.toFixed(1)}%
                    </span>
                  )}
                  <button
                    className="btn-ghost !px-2 !py-1 shrink-0"
                    onClick={(e) => {
                      e.stopPropagation();
                      handleCertificate(a);
                    }}
                    title="Download certificate"
                  >
                    <ArrowDownTrayIcon className="w-4 h-4" />
                  </button>
                </li>
              ))}
            </ul>
          </div>
        </>
      )}

      <HallOfFame />
    </div>
  );
}

function HallOfFame() {
  const { data } = useQuery<Array<{ id: string; rotation_name: string; group_name: string; academic_session: string | null; total_score: string; member_count: number }>>({
    queryKey: ['hall-of-fame'],
    queryFn: async () => {
      const res = await cbmeApi.getHallOfFame();
      return res.data?.data?.entries || [];
    },
  });

  if (!data?.length) return null;

  return (
    <div className="card">
      <div className="flex items-center gap-2 mb-4">
        <SparklesIcon className="w-5 h-5 text-amber-500" />
        <h2 className="font-semibold text-gray-900">Hall of Fame</h2>
      </div>
      <div className="space-y-2">
        {data.map((e) => (
          <div key={e.id} className="flex items-center gap-3 px-3 py-2.5 rounded-lg bg-gray-50">
            <TrophyIcon className="w-5 h-5 text-amber-500 shrink-0" />
            <div className="flex-1 min-w-0">
              <p className="text-sm font-medium text-gray-900 truncate">{e.group_name}</p>
              <p className="text-xs text-gray-500 truncate">
                {e.rotation_name}
                {e.academic_session && ` • ${e.academic_session}`} • {e.member_count} members
              </p>
            </div>
            <span className="text-sm font-bold text-gray-700 shrink-0">
              {Number(e.total_score).toFixed(1)}%
            </span>
          </div>
        ))}
      </div>
    </div>
  );
}

export default Awards;
