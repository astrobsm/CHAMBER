import { useQuery } from '@tanstack/react-query';
import { Link } from 'react-router-dom';
import { studentsApi } from '../../services/api';
import {
  AcademicCapIcon,
  ClipboardDocumentListIcon,
  ClockIcon,
  ChartBarIcon,
  ArrowTrendingUpIcon,
  CalendarDaysIcon,
  CheckCircleIcon,
  ExclamationTriangleIcon,
} from '@heroicons/react/24/outline';
import { format } from 'date-fns';
import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  PieChart,
  Pie,
  Cell,
} from 'recharts';

interface DashboardData {
  currentRotation: {
    id: string;
    name: string;
    department: string;
    progress: number;
    daysRemaining: number;
    attendanceRate: number;
    averageScore: number;
  } | null;
  stats: {
    totalRotations: number;
    completedRotations: number;
    upcomingTests: number;
    cmePoints: number;
    overallAttendance: number;
    overallScore: number;
  };
  weeklyProgress: Array<{
    week: string;
    attendance: number;
    score: number;
  }>;
  upcomingTests: Array<{
    id: string;
    title: string;
    scheduledAt: string;
    duration: number;
  }>;
  recentActivity: Array<{
    id: string;
    type: string;
    title: string;
    timestamp: string;
    metadata?: Record<string, unknown>;
  }>;
  clearanceStatus: {
    isCleared: boolean;
    percentage: number;
    requirements: Array<{
      name: string;
      met: boolean;
      current: number;
      required: number;
    }>;
  };
}

const COLORS = ['#1e3a5f', '#2ab96e', '#f59e0b', '#ef4444'];

export function StudentDashboard() {
  const { data, isLoading } = useQuery<{ data: DashboardData }>({
    queryKey: ['student-dashboard'],
    queryFn: studentsApi.getDashboard,
    staleTime: 1000 * 60 * 5, // 5 minutes
  });

  const dashboard = data?.data;

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/4"></div>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
          {[1, 2, 3, 4].map((i) => (
            <div key={i} className="h-32 bg-gray-200 rounded-xl"></div>
          ))}
        </div>
        <div className="h-64 bg-gray-200 rounded-xl"></div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-2xl font-bold text-gray-900">Dashboard</h1>
        <p className="text-gray-600">Welcome back! Here's your rotation overview.</p>
      </div>

      {/* Current Rotation Card */}
      {dashboard?.currentRotation && (
        <div className="card bg-gradient-to-r from-primary-800 to-primary-600 text-white">
          <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-4">
            <div>
              <p className="text-primary-200 text-sm font-medium">Current Rotation</p>
              <h2 className="text-xl font-bold mt-1">{dashboard.currentRotation.name}</h2>
              <p className="text-primary-200">{dashboard.currentRotation.department}</p>
            </div>
            <div className="flex flex-wrap gap-4">
              <div className="bg-white/10 rounded-lg px-4 py-2">
                <p className="text-primary-200 text-xs">Progress</p>
                <p className="text-lg font-semibold">{dashboard.currentRotation.progress}%</p>
              </div>
              <div className="bg-white/10 rounded-lg px-4 py-2">
                <p className="text-primary-200 text-xs">Attendance</p>
                <p className="text-lg font-semibold">{dashboard.currentRotation.attendanceRate}%</p>
              </div>
              <div className="bg-white/10 rounded-lg px-4 py-2">
                <p className="text-primary-200 text-xs">Avg. Score</p>
                <p className="text-lg font-semibold">{dashboard.currentRotation.averageScore}%</p>
              </div>
              <div className="bg-white/10 rounded-lg px-4 py-2">
                <p className="text-primary-200 text-xs">Days Left</p>
                <p className="text-lg font-semibold">{dashboard.currentRotation.daysRemaining}</p>
              </div>
            </div>
          </div>
          <div className="mt-4">
            <div className="bg-white/20 rounded-full h-2">
              <div
                className="bg-white rounded-full h-2 transition-all duration-500"
                style={{ width: `${dashboard.currentRotation.progress}%` }}
              />
            </div>
          </div>
        </div>
      )}

      {/* Stats Grid */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-4">
        <Link to="/student/rotations" className="card-hover group">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-primary-100 rounded-xl flex items-center justify-center group-hover:bg-primary-200 transition-colors">
              <AcademicCapIcon className="w-6 h-6 text-primary-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Rotations</p>
              <p className="text-xl font-bold text-gray-900">
                {dashboard?.stats.completedRotations}/{dashboard?.stats.totalRotations}
              </p>
            </div>
          </div>
        </Link>

        <Link to="/student/tests" className="card-hover group">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-secondary-100 rounded-xl flex items-center justify-center group-hover:bg-secondary-200 transition-colors">
              <ClipboardDocumentListIcon className="w-6 h-6 text-secondary-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Upcoming Tests</p>
              <p className="text-xl font-bold text-gray-900">{dashboard?.stats.upcomingTests}</p>
            </div>
          </div>
        </Link>

        <Link to="/student/attendance" className="card-hover group">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-amber-100 rounded-xl flex items-center justify-center group-hover:bg-amber-200 transition-colors">
              <ClockIcon className="w-6 h-6 text-amber-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Attendance</p>
              <p className="text-xl font-bold text-gray-900">{dashboard?.stats.overallAttendance}%</p>
            </div>
          </div>
        </Link>

        <Link to="/student/cme" className="card-hover group">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-purple-100 rounded-xl flex items-center justify-center group-hover:bg-purple-200 transition-colors">
              <ChartBarIcon className="w-6 h-6 text-purple-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">CME Points</p>
              <p className="text-xl font-bold text-gray-900">{dashboard?.stats.cmePoints}</p>
            </div>
          </div>
        </Link>
      </div>

      {/* Charts and Clearance Status */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        {/* Progress Chart */}
        <div className="lg:col-span-2 card">
          <div className="flex items-center justify-between mb-4">
            <h3 className="font-semibold text-gray-900">Weekly Progress</h3>
            <div className="flex items-center gap-4 text-sm">
              <div className="flex items-center gap-1">
                <div className="w-3 h-3 bg-primary-500 rounded-full"></div>
                <span className="text-gray-600">Attendance</span>
              </div>
              <div className="flex items-center gap-1">
                <div className="w-3 h-3 bg-secondary-500 rounded-full"></div>
                <span className="text-gray-600">Score</span>
              </div>
            </div>
          </div>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <LineChart data={dashboard?.weeklyProgress || []}>
                <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
                <XAxis dataKey="week" tick={{ fontSize: 12 }} stroke="#9ca3af" />
                <YAxis tick={{ fontSize: 12 }} stroke="#9ca3af" domain={[0, 100]} />
                <Tooltip
                  contentStyle={{
                    backgroundColor: '#fff',
                    border: '1px solid #e5e7eb',
                    borderRadius: '8px',
                  }}
                />
                <Line
                  type="monotone"
                  dataKey="attendance"
                  stroke="#1e3a5f"
                  strokeWidth={2}
                  dot={{ fill: '#1e3a5f' }}
                />
                <Line
                  type="monotone"
                  dataKey="score"
                  stroke="#2ab96e"
                  strokeWidth={2}
                  dot={{ fill: '#2ab96e' }}
                />
              </LineChart>
            </ResponsiveContainer>
          </div>
        </div>

        {/* Clearance Status */}
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">Clearance Status</h3>
          
          <div className="flex justify-center mb-4">
            <div className="relative w-32 h-32">
              <ResponsiveContainer width="100%" height="100%">
                <PieChart>
                  <Pie
                    data={[
                      { value: dashboard?.clearanceStatus?.percentage || 0 },
                      { value: 100 - (dashboard?.clearanceStatus?.percentage || 0) },
                    ]}
                    innerRadius={35}
                    outerRadius={50}
                    startAngle={90}
                    endAngle={-270}
                    dataKey="value"
                  >
                    <Cell fill={(dashboard?.clearanceStatus?.percentage || 0) >= 75 ? '#2ab96e' : '#f59e0b'} />
                    <Cell fill="#e5e7eb" />
                  </Pie>
                </PieChart>
              </ResponsiveContainer>
              <div className="absolute inset-0 flex items-center justify-center">
                <div className="text-center">
                  <p className="text-2xl font-bold text-gray-900">
                    {dashboard?.clearanceStatus?.percentage || 0}%
                  </p>
                </div>
              </div>
            </div>
          </div>

          <div className={`text-center mb-4 px-3 py-2 rounded-lg ${
            dashboard?.clearanceStatus?.isCleared 
              ? 'bg-green-100 text-green-800' 
              : 'bg-yellow-100 text-yellow-800'
          }`}>
            {dashboard?.clearanceStatus?.isCleared ? (
              <span className="flex items-center justify-center gap-1">
                <CheckCircleIcon className="w-5 h-5" />
                Cleared for Sign-out
              </span>
            ) : (
              <span className="flex items-center justify-center gap-1">
                <ExclamationTriangleIcon className="w-5 h-5" />
                75% Required for Clearance
              </span>
            )}
          </div>

          <div className="space-y-3">
            {dashboard?.clearanceStatus?.requirements?.map((req, index) => (
              <div key={index}>
                <div className="flex justify-between text-sm mb-1">
                  <span className="text-gray-600">{req.name}</span>
                  <span className={req.met ? 'text-green-600' : 'text-gray-900'}>
                    {req.current}/{req.required}
                  </span>
                </div>
                <div className="progress-bar">
                  <div
                    className={`progress-bar-fill ${
                      req.met ? 'bg-green-500' : 'bg-primary-500'
                    }`}
                    style={{ width: `${Math.min((req.current / req.required) * 100, 100)}%` }}
                  />
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>

      {/* Upcoming Tests and Recent Activity */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Upcoming Tests */}
        <div className="card">
          <div className="flex items-center justify-between mb-4">
            <h3 className="font-semibold text-gray-900">Upcoming Tests</h3>
            <Link to="/student/tests" className="text-sm text-primary-600 hover:text-primary-700">
              View all →
            </Link>
          </div>
          
          {dashboard?.upcomingTests?.length ? (
            <div className="space-y-3">
              {dashboard.upcomingTests.slice(0, 4).map((test) => (
                <div
                  key={test.id}
                  className="flex items-center justify-between p-3 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors"
                >
                  <div className="flex items-center gap-3">
                    <div className="w-10 h-10 bg-primary-100 rounded-lg flex items-center justify-center">
                      <ClipboardDocumentListIcon className="w-5 h-5 text-primary-600" />
                    </div>
                    <div>
                      <p className="font-medium text-gray-900">{test.title}</p>
                      <p className="text-sm text-gray-500">
                        {format(new Date(test.scheduledAt), 'MMM d, yyyy • h:mm a')}
                      </p>
                    </div>
                  </div>
                  <span className="badge badge-info">{test.duration} min</span>
                </div>
              ))}
            </div>
          ) : (
            <div className="text-center py-8 text-gray-500">
              <CalendarDaysIcon className="w-12 h-12 mx-auto mb-2 text-gray-300" />
              <p>No upcoming tests</p>
            </div>
          )}
        </div>

        {/* Recent Activity */}
        <div className="card">
          <div className="flex items-center justify-between mb-4">
            <h3 className="font-semibold text-gray-900">Recent Activity</h3>
          </div>
          
          {dashboard?.recentActivity?.length ? (
            <div className="space-y-3">
              {dashboard.recentActivity.slice(0, 5).map((activity) => (
                <div key={activity.id} className="flex items-start gap-3">
                  <div className={`w-2 h-2 mt-2 rounded-full flex-shrink-0 ${
                    activity.type === 'test_completed' ? 'bg-green-500' :
                    activity.type === 'attendance_marked' ? 'bg-blue-500' :
                    activity.type === 'clearance_granted' ? 'bg-purple-500' :
                    'bg-gray-400'
                  }`} />
                  <div className="flex-1 min-w-0">
                    <p className="text-sm text-gray-900">{activity.title}</p>
                    <p className="text-xs text-gray-500">
                      {format(new Date(activity.timestamp), 'MMM d, yyyy • h:mm a')}
                    </p>
                  </div>
                  {activity.type === 'test_completed' && activity.metadata?.score !== undefined && (
                    <span className="badge badge-success">
                      {String(activity.metadata.score)}%
                    </span>
                  )}
                </div>
              ))}
            </div>
          ) : (
            <div className="text-center py-8 text-gray-500">
              <ArrowTrendingUpIcon className="w-12 h-12 mx-auto mb-2 text-gray-300" />
              <p>No recent activity</p>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

export default StudentDashboard;
