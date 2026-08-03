import {
  CheckCircleIcon,
  ExclamationTriangleIcon,
  XCircleIcon,
} from '@heroicons/react/24/solid';
import {
  DOMAIN_COLORS,
  DOMAIN_DESCRIPTIONS,
  scoreTone,
  type DomainKey,
  type DomainScore,
} from '../../utils/competency';

interface Props {
  domains: DomainScore[];
  compact?: boolean;
}

/**
 * The heart of the sign-out rule made visible: every domain shows its score,
 * the two-thirds minimum it must clear, and a pass/fail verdict. A student can
 * see at a glance which domain is blocking them, regardless of their total.
 */
export function CompetencyDomains({ domains, compact = false }: Props) {
  return (
    <div className={compact ? 'space-y-3' : 'grid grid-cols-1 lg:grid-cols-2 gap-4'}>
      {domains.map((d) => {
        const tone = scoreTone(d.score, d.required);
        const fillPct = d.weight > 0 ? Math.min((d.score / d.weight) * 100, 100) : 0;
        const markerPct = d.weight > 0 ? (d.required / d.weight) * 100 : 0;
        const color = DOMAIN_COLORS[d.key as DomainKey] || '#1e3a5f';

        return (
          <div
            key={d.key}
            className={`rounded-xl border p-4 transition-colors ${
              d.passed ? 'border-gray-200 bg-white' : 'border-red-300 bg-red-50/60'
            }`}
          >
            <div className="flex items-start justify-between gap-3">
              <div className="min-w-0">
                <div className="flex items-center gap-2">
                  <span className="w-2.5 h-2.5 rounded-full shrink-0" style={{ backgroundColor: color }} />
                  <h3 className="font-semibold text-gray-900 truncate">{d.label}</h3>
                  <span className="text-xs text-gray-500 shrink-0">({d.weight}%)</span>
                </div>
                {!compact && (
                  <p className="text-xs text-gray-500 mt-1 leading-snug">
                    {DOMAIN_DESCRIPTIONS[d.key as DomainKey]}
                  </p>
                )}
              </div>

              <div className="text-right shrink-0">
                <p className="text-2xl font-bold leading-none" style={{ color }}>
                  {d.score.toFixed(1)}
                </p>
                <p className="text-[11px] text-gray-500 mt-1">of {d.weight}</p>
              </div>
            </div>

            {/* Progress bar with the 2/3 minimum marked in place */}
            <div className="mt-3">
              <div className="relative h-2.5 bg-gray-200 rounded-full overflow-hidden">
                <div
                  className="h-full rounded-full transition-all duration-500"
                  style={{
                    width: `${fillPct}%`,
                    backgroundColor: tone === 'fail' ? '#dc2626' : tone === 'borderline' ? '#f59e0b' : color,
                  }}
                />
              </div>
              <div
                className="relative h-0"
                style={{ marginTop: '-14px', marginBottom: '14px' }}
                aria-hidden="true"
              >
                <div
                  className="absolute w-0.5 h-4 bg-gray-800/70"
                  style={{ left: `${markerPct}%`, top: '-1px' }}
                />
              </div>
            </div>

            <div className="flex items-center justify-between gap-2 text-xs">
              <span className="text-gray-600">
                Minimum required: <strong className="text-gray-900">{d.required}</strong>
              </span>
              {d.passed ? (
                <span className="inline-flex items-center gap-1 font-medium text-green-700">
                  {tone === 'borderline' ? (
                    <ExclamationTriangleIcon className="w-4 h-4 text-amber-500" />
                  ) : (
                    <CheckCircleIcon className="w-4 h-4" />
                  )}
                  {tone === 'borderline' ? 'Only just met' : 'Competency met'}
                </span>
              ) : (
                <span className="inline-flex items-center gap-1 font-medium text-red-700">
                  <XCircleIcon className="w-4 h-4" />
                  Short by {d.shortfall.toFixed(1)}
                </span>
              )}
            </div>
          </div>
        );
      })}
    </div>
  );
}

export default CompetencyDomains;
