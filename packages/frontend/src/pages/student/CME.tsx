import { useQuery } from '@tanstack/react-query';
import { cmeApi } from '../../services/api';
import { CMEActivity, CMERecord } from '../../types';
import {
  BookOpenIcon,
  CalendarIcon,
  MapPinIcon,
  TrophyIcon,
  CheckCircleIcon,
  ClockIcon,
} from '@heroicons/react/24/outline';
import { format, isPast } from 'date-fns';
import toast from 'react-hot-toast';
import { useMutation, useQueryClient } from '@tanstack/react-query';

export function StudentCME() {
  const queryClient = useQueryClient();

  const { data: activitiesData, isLoading: activitiesLoading } = useQuery({
    queryKey: ['cme-activities'],
    queryFn: cmeApi.getActivities,
  });

  const { data: recordsData, isLoading: recordsLoading } = useQuery({
    queryKey: ['cme-records'],
    queryFn: cmeApi.getMyRecords,
  });

  const { data: summaryData } = useQuery({
    queryKey: ['cme-summary'],
    queryFn: cmeApi.getSummary,
  });

  const registerMutation = useMutation({
    mutationFn: (activityId: string) => cmeApi.register(activityId),
    onSuccess: () => {
      toast.success('Registered successfully!');
      queryClient.invalidateQueries({ queryKey: ['cme-activities'] });
    },
    onError: () => {
      toast.error('Failed to register. Please try again.');
    },
  });

  const activities: CMEActivity[] = activitiesData?.data?.data || activitiesData?.data || [];
  const records: CMERecord[] = recordsData?.data?.data || recordsData?.data || [];
  const summary = summaryData?.data?.data || summaryData?.data || { totalPoints: 0, activitiesAttended: 0, targetPoints: 20 };

  const upcomingActivities = activities.filter(a => a?.date && !isPast(new Date(a.date)));
  const registeredIds = new Set(records.filter(r => r?.activityId).map(r => r.activityId));

  const getActivityIcon = (type: string) => {
    switch (type) {
      case 'conference':
        return '🎤';
      case 'workshop':
        return '🔧';
      case 'seminar':
        return '📚';
      case 'webinar':
        return '💻';
      case 'journal_club':
        return '📖';
      case 'case_presentation':
        return '🏥';
      default:
        return '📋';
    }
  };

  if (activitiesLoading || recordsLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/4"></div>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {[1, 2, 3].map((i) => (
            <div key={i} className="h-32 bg-gray-200 rounded-xl"></div>
          ))}
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-2xl font-bold text-gray-900">CME Activities</h1>
        <p className="text-gray-600">Continuing Medical Education points and activities</p>
      </div>

      {/* Summary */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="card bg-gradient-to-br from-primary-800 to-primary-600 text-white">
          <div className="flex items-center gap-4">
            <div className="w-14 h-14 bg-white/20 rounded-xl flex items-center justify-center">
              <TrophyIcon className="w-7 h-7" />
            </div>
            <div>
              <p className="text-primary-200 text-sm">Total Points</p>
              <p className="text-3xl font-bold">{summary.totalPoints}</p>
            </div>
          </div>
          <div className="mt-4">
            <div className="flex justify-between text-sm mb-1">
              <span className="text-primary-200">Progress</span>
              <span>{summary.totalPoints}/{summary.targetPoints} points</span>
            </div>
            <div className="bg-white/20 rounded-full h-2">
              <div
                className="bg-white rounded-full h-2"
                style={{ width: `${Math.min((summary.totalPoints / summary.targetPoints) * 100, 100)}%` }}
              />
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
              <CheckCircleIcon className="w-6 h-6 text-green-600" />
            </div>
            <div>
              <p className="text-gray-500 text-sm">Activities Attended</p>
              <p className="text-2xl font-bold text-gray-900">{summary.activitiesAttended}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center">
              <CalendarIcon className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <p className="text-gray-500 text-sm">Upcoming Activities</p>
              <p className="text-2xl font-bold text-gray-900">{upcomingActivities.length}</p>
            </div>
          </div>
        </div>
      </div>

      {/* Upcoming Activities */}
      {upcomingActivities.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4">Upcoming Activities</h3>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {upcomingActivities.map((activity) => (
              <div key={activity.id} className="card-hover">
                <div className="flex items-start justify-between mb-3">
                  <span className="text-3xl">{getActivityIcon(activity.type)}</span>
                  <span className="badge badge-success">{activity.points} pts</span>
                </div>
                <h4 className="font-semibold text-gray-900 mb-1">{activity.title}</h4>
                <p className="text-sm text-gray-600 mb-4 line-clamp-2">{activity.description}</p>
                
                <div className="space-y-2 text-sm text-gray-500 mb-4">
                  <div className="flex items-center gap-2">
                    <CalendarIcon className="w-4 h-4" />
                    {format(new Date(activity.date), 'EEEE, MMMM d, yyyy')}
                  </div>
                  {activity.location && (
                    <div className="flex items-center gap-2">
                      <MapPinIcon className="w-4 h-4" />
                      {activity.location}
                    </div>
                  )}
                  {activity.isOnline && (
                    <span className="badge badge-info text-xs">Online</span>
                  )}
                </div>

                {registeredIds.has(activity.id) ? (
                  <button disabled className="btn-outline w-full opacity-50 cursor-not-allowed">
                    <CheckCircleIcon className="w-4 h-4 mr-2" />
                    Registered
                  </button>
                ) : (
                  <button
                    onClick={() => registerMutation.mutate(activity.id)}
                    disabled={registerMutation.isPending}
                    className="btn-primary w-full"
                  >
                    {registerMutation.isPending ? 'Registering...' : 'Register'}
                  </button>
                )}
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Past Activities */}
      {records.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4">Attended Activities</h3>
          <div className="card overflow-hidden">
            <table className="w-full">
              <thead className="bg-gray-50 border-b">
                <tr>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Activity</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Type</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Date</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Points</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Certificate</th>
                </tr>
              </thead>
              <tbody className="divide-y">
                {records.filter(record => record?.activity).map((record) => (
                  <tr key={record.id} className="hover:bg-gray-50">
                    <td className="px-4 py-3">
                      <div className="flex items-center gap-3">
                        <span className="text-xl">{getActivityIcon(record.activity?.type || 'other')}</span>
                        <span className="font-medium text-gray-900">{record.activity?.title || 'Unknown Activity'}</span>
                      </div>
                    </td>
                    <td className="px-4 py-3">
                      <span className="badge badge-info capitalize">
                        {(record.activity?.type || 'other').replace(/_/g, ' ')}
                      </span>
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600">
                      {format(new Date(record.attendedAt), 'MMM d, yyyy')}
                    </td>
                    <td className="px-4 py-3">
                      <span className="font-semibold text-green-600">+{record.pointsEarned}</span>
                    </td>
                    <td className="px-4 py-3">
                      {record.certificateUrl ? (
                        <a
                          href={record.certificateUrl}
                          target="_blank"
                          rel="noopener noreferrer"
                          className="text-primary-600 hover:text-primary-700 text-sm"
                        >
                          Download
                        </a>
                      ) : (
                        <span className="text-gray-400 text-sm">Pending</span>
                      )}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {/* Empty State */}
      {activities.length === 0 && records.length === 0 && (
        <div className="card text-center py-12">
          <BookOpenIcon className="w-16 h-16 mx-auto text-gray-300 mb-4" />
          <h3 className="text-lg font-semibold text-gray-900 mb-2">No CME Activities</h3>
          <p className="text-gray-600">There are no CME activities available at this time.</p>
        </div>
      )}
    </div>
  );
}

export default StudentCME;
