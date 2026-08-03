import { useQuery } from '@tanstack/react-query';
import { cbmeApi } from '../../services/api';
import {
  CalendarDaysIcon,
  MapPinIcon,
  UserIcon,
  PresentationChartLineIcon,
  ClockIcon,
} from '@heroicons/react/24/outline';
import { format } from 'date-fns';

interface Seminar {
  id: string;
  topic: string;
  description: string | null;
  rotationName: string;
  presentationDate: string | null;
  presentationTime: string | null;
  venue: string | null;
  supervisorName: string | null;
  status: string;
  score: number | null;
}

const RUBRIC_DOMAINS = [
  'Knowledge',
  'Presentation skills',
  'Communication',
  'Slide quality',
  'Clinical relevance',
  'Evidence-based medicine',
  'Ability to answer questions',
  'Time management',
  'Professionalism',
];

const STATUS_BADGE: Record<string, string> = {
  assigned: 'badge-info',
  presented: 'badge-warning',
  assessed: 'badge-success',
  withdrawn: 'badge-error',
};

function safeDate(value: string | null, pattern: string): string {
  if (!value) return 'To be confirmed';
  const d = new Date(value);
  return Number.isNaN(d.getTime()) ? String(value) : format(d, pattern);
}

export function StudentSeminars() {
  const { data, isLoading } = useQuery<Seminar[]>({
    queryKey: ['my-seminars'],
    queryFn: async () => {
      const res = await cbmeApi.getMySeminars();
      return res.data?.data?.seminars || [];
    },
    staleTime: 1000 * 60 * 5,
  });

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-4">
        <div className="h-8 bg-gray-200 rounded w-1/3" />
        <div className="h-48 bg-gray-200 rounded-xl" />
      </div>
    );
  }

  const seminars = data || [];

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-gray-900">My Seminars</h1>
        <p className="text-gray-600">
          Seminar presentation carries <strong>10%</strong> of your sign-out score.
        </p>
      </div>

      {seminars.length === 0 ? (
        <div className="card text-center py-12">
          <PresentationChartLineIcon className="w-12 h-12 text-gray-300 mx-auto mb-3" />
          <p className="text-gray-600 font-medium">No seminar topic has been allocated to you yet.</p>
          <p className="text-gray-500 text-sm mt-1">
            Topics are distributed automatically — one student per topic, with no duplicates until
            every topic is taken. You will be notified as soon as yours is assigned.
          </p>
        </div>
      ) : (
        <div className="space-y-4">
          {seminars.map((s) => (
            <div key={s.id} className="card">
              <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-3">
                <div className="min-w-0">
                  <span className={STATUS_BADGE[s.status] || 'badge-info'}>
                    {s.status.replace(/_/g, ' ')}
                  </span>
                  <h2 className="text-lg font-semibold text-gray-900 mt-2">{s.topic}</h2>
                  <p className="text-sm text-gray-500">{s.rotationName}</p>
                  {s.description && (
                    <p className="text-sm text-gray-600 mt-2 leading-snug">{s.description}</p>
                  )}
                </div>
                {s.score !== null && (
                  <div className="text-center shrink-0 bg-violet-50 rounded-lg px-5 py-3">
                    <p className="text-3xl font-bold text-violet-700 leading-none">{s.score}%</p>
                    <p className="text-[11px] text-violet-600 mt-1 font-medium">Seminar score</p>
                  </div>
                )}
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-3 mt-5 pt-4 border-t border-gray-100">
                {[
                  { icon: CalendarDaysIcon, label: 'Date', value: safeDate(s.presentationDate, 'EEEE, d MMM yyyy') },
                  { icon: ClockIcon, label: 'Time', value: s.presentationTime?.slice(0, 5) || 'To be confirmed' },
                  { icon: MapPinIcon, label: 'Venue', value: s.venue || 'To be confirmed' },
                  { icon: UserIcon, label: 'Supervisor', value: s.supervisorName || 'To be assigned' },
                ].map((f) => (
                  <div key={f.label} className="flex items-start gap-2.5">
                    <f.icon className="w-5 h-5 text-gray-400 shrink-0 mt-0.5" />
                    <div className="min-w-0">
                      <p className="text-[11px] uppercase tracking-wide text-gray-400 font-semibold">
                        {f.label}
                      </p>
                      <p className="text-sm text-gray-900 font-medium truncate">{f.value}</p>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          ))}
        </div>
      )}

      <div className="card bg-gray-50 border-gray-200">
        <h3 className="font-semibold text-gray-900 mb-1">How your seminar is scored</h3>
        <p className="text-sm text-gray-600 mb-3">
          Your consultant scores each domain below independently out of 10. The platform converts
          the total to a percentage automatically — no manual calculation is involved.
        </p>
        <div className="flex flex-wrap gap-2">
          {RUBRIC_DOMAINS.map((d) => (
            <span key={d} className="px-2.5 py-1 rounded-md bg-white border border-gray-200 text-xs text-gray-700">
              {d}
            </span>
          ))}
        </div>
      </div>
    </div>
  );
}

export default StudentSeminars;
