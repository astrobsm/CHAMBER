import { useQuery } from '@tanstack/react-query';
import { useState } from 'react';
import { useSearchParams } from 'react-router-dom';
import { motion } from 'framer-motion';
import { cbmeApi } from '../../services/api';
import { DOMAIN_LABELS, ordinal, type DomainKey, type GroupStanding } from '../../utils/competency';
import { TrophyIcon, UserGroupIcon } from '@heroicons/react/24/solid';

interface LeaderboardStudent {
  rank: number;
  studentId: string;
  name: string;
  matricNumber?: string;
  photoUrl?: string | null;
  group: { code: string; name: string; color: string } | null;
  totalScore: number;
  isEligible: boolean;
  domains?: Array<{ key: DomainKey; score: number; passed: boolean }>;
}

const MEDALS = ['#d4af37', '#a8a9ad', '#a97142'];

export function Leaderboard() {
  const [params] = useSearchParams();
  const rotationId = params.get('rotationId') || undefined;
  const [tab, setTab] = useState<'groups' | 'students'>('groups');

  const { data, isLoading } = useQuery<{ groups: GroupStanding[]; students: LeaderboardStudent[] }>({
    queryKey: ['leaderboard', rotationId],
    queryFn: async () => {
      const res = await cbmeApi.getLeaderboard(rotationId);
      return res.data?.data || { groups: [], students: [] };
    },
    refetchInterval: 1000 * 60, // the board is live during a posting
  });

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-4">
        <div className="h-8 bg-gray-200 rounded w-1/3" />
        <div className="h-64 bg-gray-200 rounded-xl" />
      </div>
    );
  }

  const groups = data?.groups || [];
  const students = data?.students || [];

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-gray-900">Leaderboard</h1>
        <p className="text-gray-600">
          Team and individual standings update automatically as scores are recorded.
        </p>
      </div>

      {/* Podium */}
      {tab === 'groups' && groups.length >= 3 && (
        <div className="grid grid-cols-3 gap-3 items-end">
          {[groups[1], groups[0], groups[2]].map((g, i) => {
            const heights = ['h-24', 'h-32', 'h-20'];
            const place = [2, 1, 3][i];
            return (
              <motion.div
                key={g.code}
                initial={{ opacity: 0, y: 24 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: i * 0.12, duration: 0.4 }}
                className="text-center"
              >
                <div
                  className="w-12 h-12 mx-auto rounded-full flex items-center justify-center mb-2"
                  style={{ backgroundColor: g.color }}
                >
                  <TrophyIcon className="w-6 h-6" style={{ color: MEDALS[place - 1] }} />
                </div>
                <p className="font-semibold text-gray-900 text-sm truncate">{g.name}</p>
                <p className="text-xs text-gray-500">{g.totalScore.toFixed(1)}%</p>
                <div
                  className={`${heights[i]} mt-2 rounded-t-lg flex items-start justify-center pt-2`}
                  style={{ backgroundColor: g.color, opacity: 0.9 }}
                >
                  <span className="text-white font-bold text-lg">{place}</span>
                </div>
              </motion.div>
            );
          })}
        </div>
      )}

      {/* Tabs */}
      <div className="flex gap-2 border-b border-gray-200">
        {(
          [
            { key: 'groups', label: 'Teams', icon: UserGroupIcon, count: groups.length },
            { key: 'students', label: 'Students', icon: TrophyIcon, count: students.length },
          ] as const
        ).map((t) => (
          <button
            key={t.key}
            onClick={() => setTab(t.key)}
            className={`flex items-center gap-2 px-4 py-2.5 text-sm font-medium border-b-2 -mb-px transition-colors ${
              tab === t.key
                ? 'border-primary-800 text-primary-800'
                : 'border-transparent text-gray-500 hover:text-gray-700'
            }`}
          >
            <t.icon className="w-4 h-4" />
            {t.label}
            <span className="text-xs text-gray-400">({t.count})</span>
          </button>
        ))}
      </div>

      {/* Team standings */}
      {tab === 'groups' &&
        (groups.length === 0 ? (
          <div className="card text-center py-12 text-gray-500">
            Teams have not been allocated for this rotation yet.
          </div>
        ) : (
          <div className="space-y-3">
            {groups.map((g) => (
              <div key={g.code} className="card">
                <div className="flex items-center gap-4">
                  <div
                    className="w-12 h-12 rounded-xl flex items-center justify-center text-white font-bold text-lg shrink-0"
                    style={{ backgroundColor: g.color }}
                  >
                    {g.rank}
                  </div>
                  <div className="flex-1 min-w-0">
                    <h3 className="font-semibold text-gray-900">{g.name}</h3>
                    <p className="text-xs text-gray-500 italic truncate">{g.motto}</p>
                    <p className="text-xs text-gray-500 mt-0.5">
                      {g.memberCount} members
                      {g.leader && ` • Led by ${g.leader}`}
                    </p>
                  </div>
                  <div className="text-right shrink-0">
                    <p className="text-2xl font-bold" style={{ color: g.color }}>
                      {g.totalScore.toFixed(1)}
                    </p>
                    <p className="text-[11px] text-gray-500">team average</p>
                  </div>
                </div>

                <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 mt-4 pt-4 border-t border-gray-100">
                  {(['attendance', 'seminar', 'clinical', 'academic'] as DomainKey[]).map((k) => (
                    <div key={k}>
                      <div className="flex justify-between text-xs mb-1">
                        <span className="text-gray-600 truncate">{DOMAIN_LABELS[k]}</span>
                        <span className="font-medium text-gray-900">
                          {(g.categories?.[k] ?? 0).toFixed(0)}%
                        </span>
                      </div>
                      <div className="progress-bar">
                        <div
                          className="progress-fill"
                          style={{
                            width: `${Math.min(g.categories?.[k] ?? 0, 100)}%`,
                            backgroundColor: g.color,
                          }}
                        />
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            ))}
          </div>
        ))}

      {/* Student standings */}
      {tab === 'students' &&
        (students.length === 0 ? (
          <div className="card text-center py-12 text-gray-500">No students to rank yet.</div>
        ) : (
          <div className="card overflow-x-auto p-0">
            <table className="w-full text-sm">
              <thead className="bg-gray-50 text-left">
                <tr>
                  <th className="px-4 py-3 font-semibold text-gray-600">Rank</th>
                  <th className="px-4 py-3 font-semibold text-gray-600">Student</th>
                  <th className="px-4 py-3 font-semibold text-gray-600 hidden sm:table-cell">Team</th>
                  <th className="px-4 py-3 font-semibold text-gray-600 text-right">Score</th>
                  <th className="px-4 py-3 font-semibold text-gray-600 text-right">Sign-out</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-100">
                {students.map((s) => (
                  <tr key={s.studentId} className="hover:bg-gray-50">
                    <td className="px-4 py-3">
                      <span
                        className="inline-flex items-center justify-center w-7 h-7 rounded-full text-xs font-bold"
                        style={
                          s.rank <= 3
                            ? { backgroundColor: MEDALS[s.rank - 1], color: '#fff' }
                            : { backgroundColor: '#f3f4f6', color: '#4b5563' }
                        }
                      >
                        {s.rank}
                      </span>
                    </td>
                    <td className="px-4 py-3">
                      <p className="font-medium text-gray-900">{s.name}</p>
                      <p className="text-xs text-gray-500">{s.matricNumber || '—'}</p>
                    </td>
                    <td className="px-4 py-3 hidden sm:table-cell">
                      {s.group ? (
                        <span
                          className="inline-flex items-center gap-1.5 text-xs font-medium"
                          style={{ color: s.group.color }}
                        >
                          <span
                            className="w-2 h-2 rounded-full"
                            style={{ backgroundColor: s.group.color }}
                          />
                          {s.group.name}
                        </span>
                      ) : (
                        <span className="text-xs text-gray-400">—</span>
                      )}
                    </td>
                    <td className="px-4 py-3 text-right font-bold text-gray-900">
                      {s.totalScore.toFixed(1)}
                    </td>
                    <td className="px-4 py-3 text-right">
                      <span className={s.isEligible ? 'badge-success' : 'badge-error'}>
                        {s.isEligible ? 'Eligible' : 'Not eligible'}
                      </span>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        ))}

      {tab === 'students' && students.length > 0 && (
        <p className="text-xs text-gray-400 text-center">
          {ordinal(1)} place is decided on aggregate score, but sign-out eligibility always requires
          two-thirds of every individual domain.
        </p>
      )}
    </div>
  );
}

export default Leaderboard;
