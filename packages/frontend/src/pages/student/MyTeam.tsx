import { useQuery } from '@tanstack/react-query';
import { Link } from 'react-router-dom';
import { motion } from 'framer-motion';
import { cbmeApi } from '../../services/api';
import { houseByCode, ordinal, type GroupStanding } from '../../utils/competency';
import {
  ShieldCheckIcon,
  TrophyIcon,
  UserGroupIcon,
  StarIcon,
} from '@heroicons/react/24/solid';

interface MyGroupResponse {
  rotation: { id: string; name: string };
  group: GroupStanding & { meaning?: string; virtues?: string[] };
  standings: Array<{ rank: number; code: string; name: string; color: string; totalScore: number; memberCount: number }>;
  me: { studentId: string; name: string; rank: number; totalScore: number; isLeader: boolean };
}

const COMPETITION_CATEGORIES: Array<{ key: string; label: string }> = [
  { key: 'attendance', label: 'Attendance' },
  { key: 'seminar', label: 'Seminar presentations' },
  { key: 'clinical', label: 'Clinical activity' },
  { key: 'academic', label: 'Academic learning' },
  { key: 'cbt', label: 'CBT performance' },
  { key: 'cme', label: 'CME completion' },
  { key: 'conduct', label: 'Professional conduct' },
  { key: 'woundDressing', label: 'Wound dressing' },
];

export function StudentMyTeam() {
  const { data, isLoading } = useQuery<MyGroupResponse | null>({
    queryKey: ['my-group'],
    queryFn: async () => {
      const res = await cbmeApi.getMyGroup();
      return res.data?.data ?? null;
    },
    staleTime: 1000 * 60 * 2,
  });

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-48 bg-gray-200 rounded-2xl" />
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
          <div className="h-64 bg-gray-200 rounded-xl" />
          <div className="h-64 bg-gray-200 rounded-xl" />
        </div>
      </div>
    );
  }

  if (!data) {
    return (
      <div className="space-y-6">
        <h1 className="text-2xl font-bold text-gray-900">My Team</h1>
        <div className="card text-center py-12">
          <UserGroupIcon className="w-12 h-12 text-gray-300 mx-auto mb-3" />
          <p className="text-gray-600 font-medium">You have not been allocated to a team yet.</p>
          <p className="text-gray-500 text-sm mt-1">
            Teams are allocated automatically once your rotation begins.
          </p>
        </div>
      </div>
    );
  }

  const house = houseByCode(data.group.code);
  const gradient = house?.gradient || 'from-primary-800 to-primary-600';

  return (
    <div className="space-y-6">
      {/* ---- Team identity banner ---- */}
      <motion.div
        initial={{ opacity: 0, y: 12 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.4 }}
        className={`relative overflow-hidden rounded-2xl bg-gradient-to-br ${gradient} text-white p-6 sm:p-8`}
      >
        <ShieldCheckIcon className="absolute -right-8 -bottom-8 w-56 h-56 text-white/10" />
        <div className="relative">
          <p className="text-white/70 text-xs uppercase tracking-[0.2em] font-semibold">
            {data.rotation.name}
          </p>
          <h1 className="text-3xl sm:text-4xl font-bold mt-2">
            You are a member of the {data.group.name.toUpperCase()}.
          </h1>
          {data.group.motto && (
            <p className="text-white/85 italic mt-2 text-lg">“{data.group.motto}”</p>
          )}
          {(data.group.meaning || house?.meaning) && (
            <p className="text-white/70 text-sm mt-3 max-w-2xl leading-relaxed">
              {data.group.meaning || house?.meaning}
            </p>
          )}

          <div className="flex flex-wrap gap-2 mt-4">
            {(data.group.virtues || house?.virtues || []).map((v) => (
              <span
                key={v}
                className="px-3 py-1 rounded-full bg-white/15 text-white text-xs font-medium backdrop-blur-sm"
              >
                {v}
              </span>
            ))}
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 mt-6 pt-5 border-t border-white/20">
            <div>
              <p className="text-2xl font-bold leading-none">{ordinal(data.group.rank)}</p>
              <p className="text-white/60 text-xs mt-1">Team ranking</p>
            </div>
            <div>
              <p className="text-2xl font-bold leading-none">{data.group.totalScore.toFixed(1)}%</p>
              <p className="text-white/60 text-xs mt-1">Team score</p>
            </div>
            <div>
              <p className="text-2xl font-bold leading-none">{data.group.memberCount}</p>
              <p className="text-white/60 text-xs mt-1">Members</p>
            </div>
            <div>
              <p className="text-lg font-bold leading-tight truncate">{data.group.leader || '—'}</p>
              <p className="text-white/60 text-xs mt-1">Team leader</p>
            </div>
          </div>
        </div>
      </motion.div>

      <div className="grid grid-cols-1 lg:grid-cols-5 gap-4">
        {/* ---- Competition progress ---- */}
        <div className="card lg:col-span-3">
          <div className="flex items-center justify-between mb-4">
            <h2 className="font-semibold text-gray-900">Competition progress</h2>
            <Link to="/student/leaderboard" className="text-sm text-primary-700 hover:underline">
              Full leaderboard →
            </Link>
          </div>
          <div className="space-y-3">
            {COMPETITION_CATEGORIES.map((cat) => {
              const value = data.group.categories?.[cat.key] ?? 0;
              return (
                <div key={cat.key}>
                  <div className="flex justify-between text-sm mb-1">
                    <span className="text-gray-700">{cat.label}</span>
                    <span className="font-medium text-gray-900">{value.toFixed(1)}%</span>
                  </div>
                  <div className="progress-bar">
                    <div
                      className="progress-fill"
                      style={{
                        width: `${Math.min(value, 100)}%`,
                        backgroundColor: data.group.color,
                      }}
                    />
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        {/* ---- Live standings ---- */}
        <div className="card lg:col-span-2">
          <div className="flex items-center gap-2 mb-4">
            <TrophyIcon className="w-5 h-5 text-amber-500" />
            <h2 className="font-semibold text-gray-900">Live standings</h2>
          </div>
          <div className="space-y-2">
            {data.standings.map((s) => {
              const isMine = s.code === data.group.code;
              return (
                <div
                  key={s.code}
                  className={`flex items-center gap-3 px-3 py-2.5 rounded-lg border ${
                    isMine ? 'border-primary-300 bg-primary-50' : 'border-transparent bg-gray-50'
                  }`}
                >
                  <span className="w-6 text-center font-bold text-gray-500 text-sm shrink-0">
                    {s.rank}
                  </span>
                  <span
                    className="w-2.5 h-8 rounded-full shrink-0"
                    style={{ backgroundColor: s.color }}
                  />
                  <div className="flex-1 min-w-0">
                    <p className="font-medium text-gray-900 text-sm truncate">
                      {s.name}
                      {isMine && <span className="text-primary-700 text-xs ml-1.5">(your team)</span>}
                    </p>
                    <p className="text-xs text-gray-500">{s.memberCount} members</p>
                  </div>
                  <span className="font-bold text-gray-900 text-sm shrink-0">
                    {s.totalScore.toFixed(1)}
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      </div>

      {/* ---- Roster ---- */}
      <div className="card">
        <h2 className="font-semibold text-gray-900 mb-4">
          {data.group.name} roster
        </h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
          {data.group.members.map((m, i) => (
            <div
              key={m.studentId}
              className={`flex items-center gap-3 p-3 rounded-lg border ${
                m.studentId === data.me.studentId
                  ? 'border-primary-300 bg-primary-50'
                  : 'border-gray-100 bg-gray-50'
              }`}
            >
              <div
                className="w-10 h-10 rounded-full flex items-center justify-center text-white font-semibold text-sm shrink-0"
                style={{ backgroundColor: data.group.color }}
              >
                {m.photoUrl ? (
                  <img src={m.photoUrl} alt="" className="w-10 h-10 rounded-full object-cover" />
                ) : (
                  m.name.split(' ').map((p) => p[0]).slice(0, 2).join('')
                )}
              </div>
              <div className="flex-1 min-w-0">
                <p className="font-medium text-gray-900 text-sm truncate flex items-center gap-1">
                  {m.name}
                  {m.isLeader && <StarIcon className="w-3.5 h-3.5 text-amber-500 shrink-0" />}
                </p>
                <p className="text-xs text-gray-500 truncate">{m.matricNumber || '—'}</p>
              </div>
              <div className="text-right shrink-0">
                <p className="font-bold text-gray-900 text-sm">{m.totalScore.toFixed(1)}</p>
                <p className="text-[10px] text-gray-500">#{i + 1} in team</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

export default StudentMyTeam;
