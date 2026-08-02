import { useQuery } from '@tanstack/react-query';
import { Link } from 'react-router-dom';
import { ShieldCheckIcon, CheckBadgeIcon, ExclamationTriangleIcon } from '@heroicons/react/24/solid';
import { cbmeApi } from '../../services/api';
import { houseByCode, ordinal, DOMAIN_LABELS, type DomainKey } from '../../utils/competency';

interface MyGroup {
  group: { code: string; name: string; color: string; motto: string; rank: number; totalScore: number; memberCount: number; leader: string | null };
  me: { rank: number; totalScore: number };
}

interface MyCompetency {
  competency: {
    totalScore: number;
    isEligible: boolean;
    deficientDomains: DomainKey[];
  } | null;
}

/**
 * Compact CBME strip for the student dashboard: which team you belong to, how
 * the team is placed, and whether you are currently on track to be signed out.
 */
export function TeamBanner() {
  const { data: group } = useQuery<MyGroup | null>({
    queryKey: ['my-group'],
    queryFn: async () => (await cbmeApi.getMyGroup()).data?.data ?? null,
    staleTime: 1000 * 60 * 5,
  });

  const { data: competency } = useQuery<MyCompetency | null>({
    queryKey: ['my-competency'],
    queryFn: async () => (await cbmeApi.getMyCompetency()).data?.data ?? null,
    staleTime: 1000 * 60 * 5,
  });

  const c = competency?.competency;
  if (!group && !c) return null;

  const house = group ? houseByCode(group.group.code) : undefined;
  const gradient = house?.gradient || 'from-primary-800 to-primary-600';

  return (
    <div className="grid grid-cols-1 lg:grid-cols-3 gap-4">
      {group && (
        <Link
          to="/student/team"
          className={`lg:col-span-2 relative overflow-hidden rounded-xl bg-gradient-to-br ${gradient} text-white p-5 hover:brightness-110 transition-all`}
        >
          <ShieldCheckIcon className="absolute -right-4 -bottom-4 w-32 h-32 text-white/10" />
          <div className="relative">
            <p className="text-white/70 text-[11px] uppercase tracking-[0.2em] font-semibold">
              Your team
            </p>
            <h2 className="text-xl sm:text-2xl font-bold mt-1">
              You are a member of the {group.group.name.toUpperCase()}.
            </h2>
            {group.group.motto && (
              <p className="text-white/80 italic text-sm mt-1">“{group.group.motto}”</p>
            )}
            <div className="flex flex-wrap gap-x-6 gap-y-2 mt-4 pt-3 border-t border-white/20 text-sm">
              <span>
                <strong className="text-lg">{ordinal(group.group.rank)}</strong>
                <span className="text-white/60 ml-1.5">team rank</span>
              </span>
              <span>
                <strong className="text-lg">{group.group.totalScore.toFixed(1)}%</strong>
                <span className="text-white/60 ml-1.5">team score</span>
              </span>
              <span>
                <strong className="text-lg">{group.group.memberCount}</strong>
                <span className="text-white/60 ml-1.5">members</span>
              </span>
              {group.group.leader && (
                <span className="text-white/70">Led by {group.group.leader}</span>
              )}
            </div>
          </div>
        </Link>
      )}

      {c && (
        <Link
          to="/student/competency"
          className={`rounded-xl p-5 border transition-colors ${
            c.isEligible
              ? 'bg-emerald-50 border-emerald-200 hover:bg-emerald-100'
              : 'bg-red-50 border-red-200 hover:bg-red-100'
          }`}
        >
          <div className="flex items-center gap-2">
            {c.isEligible ? (
              <CheckBadgeIcon className="w-6 h-6 text-emerald-600" />
            ) : (
              <ExclamationTriangleIcon className="w-6 h-6 text-red-600" />
            )}
            <p className={`font-semibold ${c.isEligible ? 'text-emerald-900' : 'text-red-900'}`}>
              {c.isEligible ? 'Eligible for sign-out' : 'Not eligible for sign-out'}
            </p>
          </div>
          <p className="text-3xl font-bold text-gray-900 mt-3">{c.totalScore.toFixed(1)}%</p>
          <p className="text-xs text-gray-600">Aggregate competency score</p>
          {!c.isEligible && c.deficientDomains.length > 0 && (
            <p className="text-xs text-red-800 mt-2.5 leading-snug">
              Below the two-thirds minimum in:{' '}
              <strong>{c.deficientDomains.map((d) => DOMAIN_LABELS[d]).join(', ')}</strong>
            </p>
          )}
        </Link>
      )}
    </div>
  );
}

export default TeamBanner;
