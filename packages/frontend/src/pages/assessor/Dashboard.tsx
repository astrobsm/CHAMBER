import { useQuery } from '@tanstack/react-query';
import { analyticsApi } from '../../services/api';
import {
  UsersIcon,
  ClipboardDocumentListIcon,
  ClockIcon,
  ChartBarIcon,
  CalendarIcon,
} from '@heroicons/react/24/outline';
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
} from 'recharts';

export function AssessorDashboard() {
  const { data, isLoading } = useQuery({
    queryKey: ['assessor-dashboard'],
    queryFn: analyticsApi.getDashboard,
  });

  const dashboard = data?.data || {};

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/4"></div>
        <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
          {[1, 2, 3, 4].map((i) => (
            <div key={i} className="h-32 bg-gray-200 rounded-xl"></div>
          ))}
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-gray-900">Assessor Dashboard</h1>
        <p className="text-gray-600">Manage students, attendance, and assessments</p>
      </div>

      {/* Quick Stats */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-4">
        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-primary-100 rounded-xl flex items-center justify-center">
              <UsersIcon className="w-6 h-6 text-primary-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Total Students</p>
              <p className="text-2xl font-bold text-gray-900">{dashboard.totalStudents || 0}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
              <ClockIcon className="w-6 h-6 text-green-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Sessions Today</p>
              <p className="text-2xl font-bold text-gray-900">{dashboard.sessionsToday || 0}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-amber-100 rounded-xl flex items-center justify-center">
              <ClipboardDocumentListIcon className="w-6 h-6 text-amber-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Pending Reviews</p>
              <p className="text-2xl font-bold text-gray-900">{dashboard.pendingReviews || 0}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-purple-100 rounded-xl flex items-center justify-center">
              <ChartBarIcon className="w-6 h-6 text-purple-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Avg. Score</p>
              <p className="text-2xl font-bold text-gray-900">{dashboard.averageScore || 0}%</p>
            </div>
          </div>
        </div>
      </div>

      {/* Quick Actions */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="card-hover cursor-pointer">
          <div className="flex items-center gap-4">
            <div className="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
              <ClockIcon className="w-6 h-6 text-green-600" />
            </div>
            <div>
              <h3 className="font-semibold text-gray-900">Start Attendance Session</h3>
              <p className="text-sm text-gray-500">Create a new QR code for check-in</p>
            </div>
          </div>
        </div>

        <div className="card-hover cursor-pointer">
          <div className="flex items-center gap-4">
            <div className="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center">
              <UsersIcon className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <h3 className="font-semibold text-gray-900">View Students</h3>
              <p className="text-sm text-gray-500">Check student progress and performance</p>
            </div>
          </div>
        </div>

        <div className="card-hover cursor-pointer">
          <div className="flex items-center gap-4">
            <div className="w-12 h-12 bg-amber-100 rounded-xl flex items-center justify-center">
              <ClipboardDocumentListIcon className="w-6 h-6 text-amber-600" />
            </div>
            <div>
              <h3 className="font-semibold text-gray-900">Manage Questions</h3>
              <p className="text-sm text-gray-500">Add or edit test questions</p>
            </div>
          </div>
        </div>
      </div>

      {/* Recent Activity */}
      <div className="card">
        <h3 className="font-semibold text-gray-900 mb-4">Student Performance Overview</h3>
        <div className="h-64">
          <ResponsiveContainer width="100%" height="100%">
            <BarChart data={dashboard.performanceByTopic || []}>
              <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
              <XAxis dataKey="topic" tick={{ fontSize: 12 }} />
              <YAxis tick={{ fontSize: 12 }} domain={[0, 100]} />
              <Tooltip />
              <Bar dataKey="averageScore" fill="#1e3a5f" radius={[4, 4, 0, 0]} />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </div>

      {/* Today's Schedule */}
      <div className="card">
        <div className="flex items-center justify-between mb-4">
          <h3 className="font-semibold text-gray-900">Today's Schedule</h3>
          <span className="text-sm text-gray-500">
            <CalendarIcon className="w-4 h-4 inline mr-1" />
            {new Date().toLocaleDateString('en-US', { weekday: 'long', month: 'long', day: 'numeric' })}
          </span>
        </div>
        <div className="space-y-3">
          {[
            { time: '08:00 AM', title: 'Morning Ward Round', location: 'Ward 3' },
            { time: '10:00 AM', title: 'Surgical Demonstration', location: 'Theatre 2' },
            { time: '02:00 PM', title: 'Afternoon Clinic', location: 'Outpatient' },
          ].map((session, index) => (
            <div key={index} className="flex items-center gap-4 p-3 bg-gray-50 rounded-lg">
              <div className="text-sm font-medium text-primary-600 w-20">{session.time}</div>
              <div className="flex-1">
                <p className="font-medium text-gray-900">{session.title}</p>
                <p className="text-sm text-gray-500">{session.location}</p>
              </div>
              <button className="btn-outline text-sm py-1.5">Start</button>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

export default AssessorDashboard;
