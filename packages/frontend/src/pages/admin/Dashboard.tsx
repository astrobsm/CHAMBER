import { useQuery } from '@tanstack/react-query';
import { adminApi } from '../../services/api';
import { generateAdminDashboardReport } from '../../utils/pdfReport';
import {
  UsersIcon,
  AcademicCapIcon,
  ClipboardDocumentListIcon,
  ChartBarIcon,
  CheckCircleIcon,
  ExclamationTriangleIcon,
  ArrowTrendingUpIcon,
  DocumentArrowDownIcon,
} from '@heroicons/react/24/outline';
import {
  LineChart,
  Line,
  AreaChart,
  Area,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  PieChart,
  Pie,
  Cell,
} from 'recharts';

const COLORS = ['#1e3a5f', '#2ab96e', '#f59e0b', '#ef4444', '#8b5cf6'];

export function AdminDashboard() {
  const { data, isLoading } = useQuery({
    queryKey: ['admin-stats'],
    queryFn: adminApi.getSystemStats,
  });

  // Navigate through axios wrapper -> API response wrapper -> actual data
  const stats = data?.data?.data || data?.data || {};

  const handleGenerateReport = () => {
    // Generate PDF report
    generateAdminDashboardReport(stats);
  };

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
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Admin Dashboard</h1>
          <p className="text-gray-600">System overview and management</p>
        </div>
        <button 
          className="btn-primary flex items-center gap-2"
          onClick={handleGenerateReport}
        >
          <DocumentArrowDownIcon className="w-5 h-5" />
          Generate Report
        </button>
      </div>

      {/* Stats Grid */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-4">
        <div className="card bg-gradient-to-br from-primary-800 to-primary-600 text-white">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-white/20 rounded-xl flex items-center justify-center">
              <UsersIcon className="w-6 h-6" />
            </div>
            <div>
              <p className="text-primary-200 text-sm">Total Students</p>
              <p className="text-2xl font-bold">{stats.totalStudents || 0}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
              <AcademicCapIcon className="w-6 h-6 text-green-600" />
            </div>
            <div>
              <p className="text-gray-500 text-sm">Active Rotations</p>
              <p className="text-2xl font-bold text-gray-900">{stats.activeRotations || 0}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-amber-100 rounded-xl flex items-center justify-center">
              <ClipboardDocumentListIcon className="w-6 h-6 text-amber-600" />
            </div>
            <div>
              <p className="text-gray-500 text-sm">Tests This Month</p>
              <p className="text-2xl font-bold text-gray-900">{stats.testsThisMonth || 0}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-purple-100 rounded-xl flex items-center justify-center">
              <CheckCircleIcon className="w-6 h-6 text-purple-600" />
            </div>
            <div>
              <p className="text-gray-500 text-sm">Clearance Rate</p>
              <p className="text-2xl font-bold text-gray-900">{stats.clearanceRate || 0}%</p>
            </div>
          </div>
        </div>
      </div>

      {/* Charts Row */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Enrollment Trend */}
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">Enrollment Trend</h3>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <AreaChart data={stats.enrollmentTrend || []}>
                <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
                <XAxis dataKey="month" tick={{ fontSize: 12 }} />
                <YAxis tick={{ fontSize: 12 }} />
                <Tooltip />
                <Area
                  type="monotone"
                  dataKey="students"
                  stroke="#1e3a5f"
                  fill="#1e3a5f"
                  fillOpacity={0.2}
                />
              </AreaChart>
            </ResponsiveContainer>
          </div>
        </div>

        {/* Students by Level */}
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">Students by Level</h3>
          <div className="h-64 flex items-center justify-center">
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie
                  data={stats.studentsByLevel || []}
                  innerRadius={60}
                  outerRadius={100}
                  dataKey="count"
                  nameKey="level"
                  label={({ level, percent }) => `${level}: ${(percent * 100).toFixed(0)}%`}
                >
                  {(stats.studentsByLevel || []).map((_: unknown, index: number) => (
                    <Cell key={index} fill={COLORS[index % COLORS.length]} />
                  ))}
                </Pie>
                <Tooltip />
              </PieChart>
            </ResponsiveContainer>
          </div>
        </div>
      </div>

      {/* Performance Overview */}
      <div className="card">
        <h3 className="font-semibold text-gray-900 mb-4">Performance Overview</h3>
        <div className="h-64">
          <ResponsiveContainer width="100%" height="100%">
            <LineChart data={stats.performanceTrend || []}>
              <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
              <XAxis dataKey="week" tick={{ fontSize: 12 }} />
              <YAxis tick={{ fontSize: 12 }} domain={[0, 100]} />
              <Tooltip />
              <Line
                type="monotone"
                dataKey="avgScore"
                stroke="#1e3a5f"
                strokeWidth={2}
                dot={{ fill: '#1e3a5f' }}
                name="Avg Test Score"
              />
              <Line
                type="monotone"
                dataKey="attendance"
                stroke="#2ab96e"
                strokeWidth={2}
                dot={{ fill: '#2ab96e' }}
                name="Attendance Rate"
              />
            </LineChart>
          </ResponsiveContainer>
        </div>
      </div>

      {/* Quick Actions and Alerts */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Alerts */}
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">System Alerts</h3>
          <div className="space-y-3">
            {(stats.alerts || []).length === 0 ? (
              <div className="flex items-center gap-3 p-3 bg-green-50 rounded-lg">
                <CheckCircleIcon className="w-5 h-5 text-green-600" />
                <div>
                  <p className="font-medium text-green-900">All Clear</p>
                  <p className="text-sm text-green-700">No active alerts at this time</p>
                </div>
              </div>
            ) : (
              (stats.alerts || []).map((alert: { type: string; title: string; message: string }, index: number) => (
                <div key={index} className={`flex items-start gap-3 p-3 rounded-lg ${
                  alert.type === 'warning' ? 'bg-amber-50' : 
                  alert.type === 'error' ? 'bg-red-50' : 'bg-green-50'
                }`}>
                  <ExclamationTriangleIcon className={`w-5 h-5 mt-0.5 ${
                    alert.type === 'warning' ? 'text-amber-600' : 
                    alert.type === 'error' ? 'text-red-600' : 'text-green-600'
                  }`} />
                  <div>
                    <p className={`font-medium ${
                      alert.type === 'warning' ? 'text-amber-900' : 
                      alert.type === 'error' ? 'text-red-900' : 'text-green-900'
                    }`}>{alert.title}</p>
                    <p className={`text-sm ${
                      alert.type === 'warning' ? 'text-amber-700' : 
                      alert.type === 'error' ? 'text-red-700' : 'text-green-700'
                    }`}>{alert.message}</p>
                  </div>
                </div>
              ))
            )}
          </div>
        </div>

        {/* Recent Activity */}
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">Recent Activity</h3>
          <div className="space-y-3">
            {(stats.recentActivity || []).length === 0 ? (
              <p className="text-sm text-gray-500 text-center py-4">No recent activity</p>
            ) : (
              (stats.recentActivity || []).map((item: { action: string; time: string }, index: number) => (
                <div key={index} className="flex items-center gap-3">
                  <div className="w-8 h-8 bg-gray-100 rounded-full flex items-center justify-center">
                    <ChartBarIcon className="w-4 h-4 text-gray-600" />
                  </div>
                  <div className="flex-1">
                    <p className="text-sm font-medium text-gray-900">{item.action}</p>
                    <p className="text-xs text-gray-500">{item.time}</p>
                  </div>
                </div>
              ))
            )}
          </div>
        </div>
      </div>
    </div>
  );
}

export default AdminDashboard;
