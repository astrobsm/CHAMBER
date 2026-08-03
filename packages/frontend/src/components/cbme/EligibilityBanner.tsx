import { CheckBadgeIcon, ShieldExclamationIcon } from '@heroicons/react/24/solid';
import type { DomainScore, RemediationItem } from '../../utils/competency';

interface Props {
  isEligible: boolean;
  totalScore: number;
  domains: DomainScore[];
  remediation?: RemediationItem[];
  rank?: number;
  cohortSize?: number;
}

/**
 * States the sign-out verdict unambiguously. A high aggregate never implies
 * eligibility — the banner names every deficient domain so the decision is
 * transparent and defensible.
 */
export function EligibilityBanner({
  isEligible,
  totalScore,
  domains,
  remediation = [],
  rank,
  cohortSize,
}: Props) {
  const failed = domains.filter((d) => !d.passed);

  return (
    <div
      className={`rounded-xl p-5 sm:p-6 text-white ${
        isEligible
          ? 'bg-gradient-to-r from-emerald-700 to-emerald-600'
          : 'bg-gradient-to-r from-red-800 to-red-700'
      }`}
    >
      <div className="flex flex-col sm:flex-row sm:items-center gap-4">
        <div className="shrink-0">
          {isEligible ? (
            <CheckBadgeIcon className="w-14 h-14 text-white/90" />
          ) : (
            <ShieldExclamationIcon className="w-14 h-14 text-white/90" />
          )}
        </div>

        <div className="flex-1 min-w-0">
          <p className="text-xs uppercase tracking-widest text-white/70 font-semibold">
            Sign-out status
          </p>
          <h2 className="text-2xl font-bold mt-0.5">
            {isEligible ? 'Eligible for Sign-Out' : 'Not Eligible for Sign-Out'}
          </h2>
          <p className="text-white/80 text-sm mt-1.5 leading-snug">
            {isEligible
              ? 'You have demonstrated at least two-thirds of the available score in every assessment domain.'
              : `Minimum competency has not been demonstrated in ${failed.length} domain${
                  failed.length === 1 ? '' : 's'
                }: ${failed.map((d) => d.label).join(', ')}. A high aggregate score does not substitute for competency in each domain.`}
          </p>
        </div>

        <div className="sm:text-right shrink-0 border-t sm:border-t-0 sm:border-l border-white/20 sm:pl-5 pt-3 sm:pt-0">
          <p className="text-4xl font-bold leading-none">{totalScore.toFixed(1)}%</p>
          <p className="text-white/70 text-xs mt-1">Aggregate score</p>
          {rank !== undefined && cohortSize !== undefined && cohortSize > 0 && (
            <p className="text-white/70 text-xs mt-1">
              Rank {rank} of {cohortSize}
            </p>
          )}
        </div>
      </div>

      {!isEligible && remediation.length > 0 && (
        <div className="mt-5 pt-4 border-t border-white/20">
          <p className="text-xs uppercase tracking-widest text-white/70 font-semibold mb-2.5">
            Recommended remediation
          </p>
          <ul className="space-y-2.5">
            {remediation.map((r) => (
              <li key={r.domain} className="text-sm">
                <span className="font-semibold">{r.label}</span>
                <span className="text-white/70">
                  {' '}
                  — {r.score.toFixed(1)} of a required {r.required} (short by {r.shortfall.toFixed(1)})
                </span>
                <p className="text-white/85 mt-0.5 leading-snug">{r.recommendation}</p>
              </li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
}

export default EligibilityBanner;
