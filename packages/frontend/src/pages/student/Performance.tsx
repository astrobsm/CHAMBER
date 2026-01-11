import { useQuery } from '@tanstack/react-query';
import { studentsApi } from '../../services/api';
import { useAuth } from '../../contexts/AuthContext';
import { generateStudentPerformanceReport } from '../../utils/pdfReport';
import {
  ChartBarIcon,
  TrophyIcon,
  ArrowTrendingUpIcon,
  ArrowTrendingDownIcon,
  AcademicCapIcon,
  DocumentArrowDownIcon,
} from '@heroicons/react/24/outline';
import {
  LineChart,
  Line,
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  RadarChart,
  Radar,
  PolarGrid,
  PolarAngleAxis,
  PolarRadiusAxis,
} from 'recharts';

interface PerformanceData {
  overall: {
    score: number;
    rank: number;
    totalStudents: number;
    percentile: number;
  };
  byTopic: Array<{
    topic: string;
    score: number;
    attempts: number;
  }>;
  weeklyProgress: Array<{
    week: string;
    score: number;
    attendance: number;
  }>;
  strengths: string[];
  weaknesses: string[];
  recommendations: string[];
}

export function StudentPerformance() {
  const { user } = useAuth();
  const { data, isLoading } = useQuery<{ data: PerformanceData }>({
    queryKey: ['student-performance'],
    queryFn: () => studentsApi.getPerformance(),
  });

  const performance = data?.data;

  const handleDownloadReport = () => {
    if (!performance || !user) return;

    generateStudentPerformanceReport({
      studentInfo: {
        name: `${user.first_name || ''} ${user.last_name || ''}`.trim() || user.email,
        email: user.email,
        matricNumber: user.matriculation_number,
        level: user.level,
        rotation: user.current_rotation?.name,
      },
      performance: performance,
    });
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

  // Prepare radar chart data
  const radarData = performance?.byTopic.map(t => ({
    subject: t.topic,
    score: t.score,
    fullMark: 100,
  })) || [];

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Performance Analytics</h1>
          <p className="text-gray-600">Track your academic progress and identify areas for improvement</p>
        </div>
        <button
          onClick={handleDownloadReport}
          className="btn btn-primary flex items-center gap-2"
          disabled={!performance}
        >
          <DocumentArrowDownIcon className="w-5 h-5" />
          Download Report
        </button>
      </div>

      {/* Overall Stats */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-4">
        <div className="card bg-gradient-to-br from-primary-800 to-primary-600 text-white">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-white/20 rounded-xl flex items-center justify-center">
              <ChartBarIcon className="w-6 h-6" />
            </div>
            <div>
              <p className="text-primary-200 text-sm">Overall Score</p>
              <p className="text-2xl font-bold">{performance?.overall.score || 0}%</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-amber-100 rounded-xl flex items-center justify-center">
              <TrophyIcon className="w-6 h-6 text-amber-600" />
            </div>
            <div>
              <p className="text-gray-500 text-sm">Class Rank</p>
              <p className="text-2xl font-bold text-gray-900">
                #{performance?.overall.rank || '-'}
                <span className="text-sm font-normal text-gray-500">
                  /{performance?.overall.totalStudents || '-'}
                </span>
              </p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
              <ArrowTrendingUpIcon className="w-6 h-6 text-green-600" />
            </div>
            <div>
              <p className="text-gray-500 text-sm">Percentile</p>
              <p className="text-2xl font-bold text-green-600">
                Top {100 - (performance?.overall.percentile || 0)}%
              </p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 bg-purple-100 rounded-xl flex items-center justify-center">
              <AcademicCapIcon className="w-6 h-6 text-purple-600" />
            </div>
            <div>
              <p className="text-gray-500 text-sm">Topics Covered</p>
              <p className="text-2xl font-bold text-gray-900">{performance?.byTopic.length || 0}</p>
            </div>
          </div>
        </div>
      </div>

      {/* Charts */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Progress Over Time */}
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">Weekly Progress</h3>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <LineChart data={performance?.weeklyProgress || []}>
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
                  dataKey="score"
                  stroke="#1e3a5f"
                  strokeWidth={2}
                  dot={{ fill: '#1e3a5f' }}
                  name="Test Score"
                />
                <Line
                  type="monotone"
                  dataKey="attendance"
                  stroke="#2ab96e"
                  strokeWidth={2}
                  dot={{ fill: '#2ab96e' }}
                  name="Attendance"
                />
              </LineChart>
            </ResponsiveContainer>
          </div>
        </div>

        {/* Topic Performance Radar */}
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">Performance by Topic</h3>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <RadarChart data={radarData}>
                <PolarGrid stroke="#e5e7eb" />
                <PolarAngleAxis dataKey="subject" tick={{ fontSize: 10 }} />
                <PolarRadiusAxis angle={30} domain={[0, 100]} tick={{ fontSize: 10 }} />
                <Radar
                  name="Score"
                  dataKey="score"
                  stroke="#1e3a5f"
                  fill="#1e3a5f"
                  fillOpacity={0.3}
                />
              </RadarChart>
            </ResponsiveContainer>
          </div>
        </div>
      </div>

      {/* Topic Breakdown */}
      <div className="card">
        <h3 className="font-semibold text-gray-900 mb-4">Score by Topic</h3>
        <div className="h-64">
          <ResponsiveContainer width="100%" height="100%">
            <BarChart data={performance?.byTopic || []} layout="vertical">
              <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
              <XAxis type="number" domain={[0, 100]} />
              <YAxis dataKey="topic" type="category" width={120} tick={{ fontSize: 12 }} />
              <Tooltip />
              <Bar
                dataKey="score"
                fill="#1e3a5f"
                radius={[0, 4, 4, 0]}
                name="Score"
              />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </div>

      {/* Strengths & Weaknesses */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        <div className="card">
          <div className="flex items-center gap-2 mb-4">
            <ArrowTrendingUpIcon className="w-5 h-5 text-green-600" />
            <h3 className="font-semibold text-gray-900">Strengths</h3>
          </div>
          <div className="space-y-2">
            {performance?.strengths?.map((strength, index) => (
              <div key={index} className="flex items-center gap-2 p-3 bg-green-50 rounded-lg">
                <span className="w-6 h-6 bg-green-500 text-white rounded-full flex items-center justify-center text-sm">
                  ✓
                </span>
                <span className="text-green-800">{strength}</span>
              </div>
            )) || (
              <p className="text-gray-500 text-center py-4">No data available yet</p>
            )}
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-2 mb-4">
            <ArrowTrendingDownIcon className="w-5 h-5 text-red-600" />
            <h3 className="font-semibold text-gray-900">Areas for Improvement</h3>
          </div>
          <div className="space-y-2">
            {performance?.weaknesses?.map((weakness, index) => (
              <div key={index} className="flex items-center gap-2 p-3 bg-red-50 rounded-lg">
                <span className="w-6 h-6 bg-red-500 text-white rounded-full flex items-center justify-center text-sm">
                  !
                </span>
                <span className="text-red-800">{weakness}</span>
              </div>
            )) || (
              <p className="text-gray-500 text-center py-4">No data available yet</p>
            )}
          </div>
        </div>
      </div>

      {/* Recommendations */}
      {performance?.recommendations && performance.recommendations.length > 0 && (
        <div className="card bg-blue-50 border border-blue-200">
          <h3 className="font-semibold text-blue-900 mb-4">📚 Recommendations</h3>
          <ul className="space-y-2">
            {performance.recommendations.map((rec, index) => (
              <li key={index} className="flex items-start gap-2 text-blue-800">
                <span className="text-blue-500 mt-1">•</span>
                {rec}
              </li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
}

export default StudentPerformance;
