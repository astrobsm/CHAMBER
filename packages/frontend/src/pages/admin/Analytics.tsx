import { useState } from 'react';
import { useQuery } from '@tanstack/react-query';
import { format, subDays, startOfMonth, endOfMonth } from 'date-fns';
import {
  ChartBarIcon,
  UserGroupIcon,
  AcademicCapIcon,
  CalendarIcon,
  ArrowDownTrayIcon,
  ArrowTrendingUpIcon,
  ArrowTrendingDownIcon,
  CheckCircleIcon,
  ClockIcon,
  DocumentTextIcon,
} from '@heroicons/react/24/outline';
import {
  LineChart, Line, AreaChart, Area, BarChart, Bar, PieChart, Pie, Cell,
  XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer, RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis, Radar
} from 'recharts';
import { adminApi } from '../../services/api';
import { generateAdminDashboardReport } from '../../utils/pdfReport';

const COLORS = ['#1e3a5f', '#2d5a87', '#3d7ab0', '#4d9ad9', '#5dbaf0', '#4ade80', '#facc15', '#f87171'];

export default function AdminAnalytics() {
  const [dateRange, setDateRange] = useState({
    start: format(subDays(new Date(), 30), 'yyyy-MM-dd'),
    end: format(new Date(), 'yyyy-MM-dd'),
  });
  const [selectedView, setSelectedView] = useState<'overview' | 'students' | 'rotations' | 'tests'>('overview');

  const { data, isLoading } = useQuery({
    queryKey: ['admin-analytics', dateRange, selectedView],
    queryFn: adminApi.getSystemStats,
  });

  // Navigate through axios wrapper -> API response wrapper -> actual data
  const analyticsData = data?.data?.data || data?.data || {};

  const setPresetRange = (preset: string) => {
    const today = new Date();
    switch (preset) {
      case 'week':
        setDateRange({ start: format(subDays(today, 7), 'yyyy-MM-dd'), end: format(today, 'yyyy-MM-dd') });
        break;
      case 'month':
        setDateRange({ start: format(startOfMonth(today), 'yyyy-MM-dd'), end: format(endOfMonth(today), 'yyyy-MM-dd') });
        break;
      case 'quarter':
        setDateRange({ start: format(subDays(today, 90), 'yyyy-MM-dd'), end: format(today, 'yyyy-MM-dd') });
        break;
      case 'year':
        setDateRange({ start: format(subDays(today, 365), 'yyyy-MM-dd'), end: format(today, 'yyyy-MM-dd') });
        break;
    }
  };

  // Real data from API - use camelCase keys from backend
  const overviewStats = {
    total_students: analyticsData?.totalStudents || 0,
    active_rotations: analyticsData?.activeRotations || 0,
    tests_taken: analyticsData?.totalTests || 0,
    avg_attendance: analyticsData?.todayAttendance || 0,
    clearance_rate: analyticsData?.clearanceRate || 0,
    avg_test_score: 0,
  };

  // Provide default data for charts to prevent Recharts SVG errors
  const defaultEnrollmentTrend = [
    { month: 'Jan', students: 0 },
    { month: 'Feb', students: 0 },
    { month: 'Mar', students: 0 },
  ];
  
  const defaultLevelDistribution = [
    { name: 'Level 400', value: 0 },
    { name: 'Level 500', value: 0 },
    { name: 'Level 600', value: 0 },
  ];
  
  const defaultWeeklyActivity = [
    { day: 'Mon', attendance: 0, tests: 0 },
    { day: 'Tue', attendance: 0, tests: 0 },
    { day: 'Wed', attendance: 0, tests: 0 },
  ];
  
  const defaultPerformanceRadar = [
    { subject: 'Attendance', value: 0 },
    { subject: 'Tests', value: 0 },
    { subject: 'Participation', value: 0 },
  ];

  const enrollmentTrend = (analyticsData?.enrollmentTrend?.length > 0) 
    ? analyticsData.enrollmentTrend 
    : defaultEnrollmentTrend;

  const levelDistribution = (analyticsData?.levelDistribution?.length > 0)
    ? analyticsData.levelDistribution
    : defaultLevelDistribution;

  const rotationPerformance = (analyticsData?.rotationPerformance?.length > 0)
    ? analyticsData.rotationPerformance
    : [{ name: 'Surgery', attendance: 0, tests: 0, clearance: 0 }];

  const weeklyActivity = (analyticsData?.weeklyActivity?.length > 0)
    ? analyticsData.weeklyActivity
    : defaultWeeklyActivity;

  const performanceRadar = (analyticsData?.performanceRadar?.length > 0)
    ? analyticsData.performanceRadar
    : defaultPerformanceRadar;

  const handleExportReport = () => {
    // Generate PDF report with analytics data
    generateAdminDashboardReport({
      totalStudents: overviewStats.total_students,
      activeRotations: overviewStats.active_rotations,
      totalTests: overviewStats.tests_taken,
      todayAttendance: overviewStats.avg_attendance,
      clearanceRate: overviewStats.clearance_rate,
      levelDistribution: levelDistribution,
      enrollmentTrend: enrollmentTrend,
      performanceTrend: analyticsData?.performanceTrend || [],
      alerts: analyticsData?.alerts || [],
      recentActivity: analyticsData?.recentActivity || [],
    });
  };

  const getTrendIcon = (value: number, threshold: number) => {
    if (value >= threshold) {
      return <ArrowTrendingUpIcon className="w-4 h-4 text-green-500" />;
    }
    return <ArrowTrendingDownIcon className="w-4 h-4 text-red-500" />;
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Analytics Dashboard</h1>
          <p className="text-gray-600 mt-1">System-wide performance analytics and insights</p>
        </div>
        <div className="flex items-center gap-4">
          <div className="flex items-center gap-2 bg-white rounded-lg p-1 border border-gray-200">
            {['week', 'month', 'quarter', 'year'].map((preset) => (
              <button
                key={preset}
                onClick={() => setPresetRange(preset)}
                className={`px-3 py-1.5 rounded text-sm font-medium transition-colors ${
                  dateRange.start === format(subDays(new Date(), preset === 'week' ? 7 : preset === 'month' ? 30 : preset === 'quarter' ? 90 : 365), 'yyyy-MM-dd')
                    ? 'bg-primary-600 text-white'
                    : 'text-gray-600 hover:bg-gray-100'
                }`}
              >
                {preset.charAt(0).toUpperCase() + preset.slice(1)}
              </button>
            ))}
          </div>
          <button 
            className="btn btn-primary flex items-center gap-2"
            onClick={handleExportReport}
          >
            <ArrowDownTrayIcon className="w-5 h-5" />
            Export Report
          </button>
        </div>
      </div>

      <div className="flex gap-2">
        {[
          { id: 'overview', label: 'Overview', icon: ChartBarIcon },
          { id: 'students', label: 'Students', icon: UserGroupIcon },
          { id: 'rotations', label: 'Rotations', icon: CalendarIcon },
          { id: 'tests', label: 'Tests', icon: DocumentTextIcon },
        ].map((view) => (
          <button
            key={view.id}
            onClick={() => setSelectedView(view.id as any)}
            className={`flex items-center gap-2 px-4 py-2 rounded-lg font-medium transition-colors ${
              selectedView === view.id
                ? 'bg-primary-600 text-white'
                : 'bg-white text-gray-700 hover:bg-gray-50 border border-gray-200'
            }`}
          >
            <view.icon className="w-5 h-5" />
            {view.label}
          </button>
        ))}
      </div>

      {isLoading ? (
        <div className="card text-center py-16">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto" />
          <p className="text-gray-500 mt-4">Loading analytics...</p>
        </div>
      ) : (
        <>
          <div className="grid grid-cols-6 gap-4">
            <div className="card bg-gradient-to-br from-blue-500 to-blue-600 text-white">
              <div className="flex items-center justify-between mb-2">
                <UserGroupIcon className="w-8 h-8 opacity-80" />
                {getTrendIcon(overviewStats.total_students, 200)}
              </div>
              <p className="text-3xl font-bold">{overviewStats.total_students}</p>
              <p className="text-blue-100 text-sm">Total Students</p>
            </div>
            <div className="card bg-gradient-to-br from-green-500 to-green-600 text-white">
              <div className="flex items-center justify-between mb-2">
                <CalendarIcon className="w-8 h-8 opacity-80" />
                {getTrendIcon(overviewStats.active_rotations, 10)}
              </div>
              <p className="text-3xl font-bold">{overviewStats.active_rotations}</p>
              <p className="text-green-100 text-sm">Active Rotations</p>
            </div>
            <div className="card bg-gradient-to-br from-purple-500 to-purple-600 text-white">
              <div className="flex items-center justify-between mb-2">
                <DocumentTextIcon className="w-8 h-8 opacity-80" />
                {getTrendIcon(overviewStats.tests_taken, 1500)}
              </div>
              <p className="text-3xl font-bold">{overviewStats.tests_taken}</p>
              <p className="text-purple-100 text-sm">Tests Taken</p>
            </div>
            <div className="card bg-gradient-to-br from-yellow-500 to-yellow-600 text-white">
              <div className="flex items-center justify-between mb-2">
                <ClockIcon className="w-8 h-8 opacity-80" />
                {getTrendIcon(overviewStats.avg_attendance, 80)}
              </div>
              <p className="text-3xl font-bold">{overviewStats.avg_attendance}%</p>
              <p className="text-yellow-100 text-sm">Avg Attendance</p>
            </div>
            <div className="card bg-gradient-to-br from-teal-500 to-teal-600 text-white">
              <div className="flex items-center justify-between mb-2">
                <CheckCircleIcon className="w-8 h-8 opacity-80" />
                {getTrendIcon(overviewStats.clearance_rate, 75)}
              </div>
              <p className="text-3xl font-bold">{overviewStats.clearance_rate}%</p>
              <p className="text-teal-100 text-sm">Clearance Rate</p>
            </div>
            <div className="card bg-gradient-to-br from-indigo-500 to-indigo-600 text-white">
              <div className="flex items-center justify-between mb-2">
                <AcademicCapIcon className="w-8 h-8 opacity-80" />
                {getTrendIcon(overviewStats.avg_test_score, 70)}
              </div>
              <p className="text-3xl font-bold">{overviewStats.avg_test_score}%</p>
              <p className="text-indigo-100 text-sm">Avg Test Score</p>
            </div>
          </div>

          <div className="grid grid-cols-3 gap-6">
            <div className="col-span-2 card">
              <h3 className="text-lg font-semibold text-gray-900 mb-4">Enrollment Trend</h3>
              <div className="h-72">
                <ResponsiveContainer width="100%" height="100%">
                  <AreaChart data={enrollmentTrend}>
                    <defs>
                      <linearGradient id="colorStudents" x1="0" y1="0" x2="0" y2="1">
                        <stop offset="5%" stopColor="#1e3a5f" stopOpacity={0.8}/>
                        <stop offset="95%" stopColor="#1e3a5f" stopOpacity={0}/>
                      </linearGradient>
                    </defs>
                    <CartesianGrid strokeDasharray="3 3" />
                    <XAxis dataKey="month" />
                    <YAxis />
                    <Tooltip />
                    <Area type="monotone" dataKey="students" stroke="#1e3a5f" fillOpacity={1} fill="url(#colorStudents)" />
                  </AreaChart>
                </ResponsiveContainer>
              </div>
            </div>

            <div className="card">
              <h3 className="text-lg font-semibold text-gray-900 mb-4">Students by Level</h3>
              <div className="h-72">
                <ResponsiveContainer width="100%" height="100%">
                  <PieChart>
                    <Pie
                      data={levelDistribution}
                      dataKey="value"
                      nameKey="name"
                      cx="50%"
                      cy="50%"
                      outerRadius={80}
                      label={({ name, percent }) => `${name}: ${(percent * 100).toFixed(0)}%`}
                    >
                      {levelDistribution.map((_: any, index: number) => (
                        <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                      ))}
                    </Pie>
                    <Tooltip />
                  </PieChart>
                </ResponsiveContainer>
              </div>
            </div>
          </div>

          <div className="grid grid-cols-2 gap-6">
            <div className="card">
              <h3 className="text-lg font-semibold text-gray-900 mb-4">Rotation Performance</h3>
              <div className="h-72">
                <ResponsiveContainer width="100%" height="100%">
                  <BarChart data={rotationPerformance} layout="vertical">
                    <CartesianGrid strokeDasharray="3 3" />
                    <XAxis type="number" domain={[0, 100]} />
                    <YAxis dataKey="rotation" type="category" width={100} />
                    <Tooltip />
                    <Legend />
                    <Bar dataKey="attendance" name="Attendance" fill="#1e3a5f" />
                    <Bar dataKey="tests" name="Tests" fill="#4ade80" />
                    <Bar dataKey="participation" name="Participation" fill="#facc15" />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            </div>

            <div className="card">
              <h3 className="text-lg font-semibold text-gray-900 mb-4">Weekly Activity</h3>
              <div className="h-72">
                <ResponsiveContainer width="100%" height="100%">
                  <LineChart data={weeklyActivity}>
                    <CartesianGrid strokeDasharray="3 3" />
                    <XAxis dataKey="day" />
                    <YAxis yAxisId="left" />
                    <YAxis yAxisId="right" orientation="right" />
                    <Tooltip />
                    <Legend />
                    <Line yAxisId="left" type="monotone" dataKey="attendance" name="Attendance" stroke="#1e3a5f" strokeWidth={2} />
                    <Line yAxisId="right" type="monotone" dataKey="tests" name="Tests Taken" stroke="#4ade80" strokeWidth={2} />
                  </LineChart>
                </ResponsiveContainer>
              </div>
            </div>
          </div>

          <div className="grid grid-cols-3 gap-6">
            <div className="card">
              <h3 className="text-lg font-semibold text-gray-900 mb-4">Performance Overview</h3>
              <div className="h-72">
                <ResponsiveContainer width="100%" height="100%">
                  <RadarChart data={performanceRadar}>
                    <PolarGrid />
                    <PolarAngleAxis dataKey="subject" />
                    <PolarRadiusAxis angle={30} domain={[0, 100]} />
                    <Radar name="Performance" dataKey="A" stroke="#1e3a5f" fill="#1e3a5f" fillOpacity={0.6} />
                    <Tooltip />
                  </RadarChart>
                </ResponsiveContainer>
              </div>
            </div>

            <div className="col-span-2 card">
              <h3 className="text-lg font-semibold text-gray-900 mb-4">Top Performing Students</h3>
              <div className="overflow-x-auto">
                <table className="min-w-full divide-y divide-gray-200">
                  <thead className="bg-gray-50">
                    <tr>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Rank</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Student</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Level</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Attendance</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Test Avg</th>
                      <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Overall</th>
                    </tr>
                  </thead>
                  <tbody className="bg-white divide-y divide-gray-200">
                    {(analyticsData?.top_students || []).length === 0 ? (
                      <tr>
                        <td colSpan={6} className="px-4 py-8 text-center text-gray-500">
                          No student data available yet
                        </td>
                      </tr>
                    ) : (analyticsData?.top_students || []).map((student: { rank: number; name: string; level: string; attendance: number; tests: number; overall: number }) => (
                      <tr key={student.rank} className="hover:bg-gray-50">
                        <td className="px-4 py-3">
                          <span className={`w-6 h-6 rounded-full flex items-center justify-center text-xs font-bold ${
                            student.rank === 1 ? 'bg-yellow-400 text-yellow-900' :
                            student.rank === 2 ? 'bg-gray-300 text-gray-700' :
                            student.rank === 3 ? 'bg-amber-600 text-white' :
                            'bg-gray-100 text-gray-600'
                          }`}>
                            {student.rank}
                          </span>
                        </td>
                        <td className="px-4 py-3 font-medium text-gray-900">{student.name}</td>
                        <td className="px-4 py-3 text-gray-600">{student.level}</td>
                        <td className="px-4 py-3 text-gray-900">{student.attendance}%</td>
                        <td className="px-4 py-3 text-gray-900">{student.tests}%</td>
                        <td className="px-4 py-3">
                          <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
                            {student.overall}%
                          </span>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </>
      )}
    </div>
  );
}
