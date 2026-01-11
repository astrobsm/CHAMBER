import { useState } from 'react';
import { useQuery } from '@tanstack/react-query';
import { testsApi, rotationsApi } from '../../services/api';
import {
  ComputerDesktopIcon,
  ChartBarIcon,
  UsersIcon,
  ClockIcon,
  CheckCircleIcon,
  ExclamationTriangleIcon,
  AcademicCapIcon,
} from '@heroicons/react/24/outline';
import { format } from 'date-fns';

interface TestSummary {
  rotation_id: string;
  rotation_name: string;
  category_name: string;
  total_students: number;
  pre_test_completed: number;
  mid_test_completed: number;
  post_test_completed: number;
  average_pre_score: number;
  average_mid_score: number;
  average_post_score: number;
}

export default function AdminCBT() {
  const [selectedRotation, setSelectedRotation] = useState<string>('');

  // Fetch rotations
  const { data: rotationsData, isLoading: rotationsLoading } = useQuery({
    queryKey: ['rotations'],
    queryFn: async () => {
      const response = await rotationsApi.list();
      return response.data;
    },
  });

  // Fetch test statistics
  const { data: statsData, isLoading: statsLoading } = useQuery({
    queryKey: ['cbt-stats', selectedRotation],
    queryFn: async () => {
      const response = await testsApi.list(selectedRotation || undefined);
      return response.data;
    },
  });

  const rotations = rotationsData?.data || rotationsData?.rotations || rotationsData || [];
  const tests = statsData?.data || statsData?.tests || statsData || [];

  // Calculate summary statistics
  const totalTests = Array.isArray(tests) ? tests.length : 0;
  const completedTests = Array.isArray(tests) ? tests.filter((t: any) => t.status === 'completed').length : 0;
  const inProgressTests = Array.isArray(tests) ? tests.filter((t: any) => t.status === 'in_progress').length : 0;
  const averageScore = Array.isArray(tests) && completedTests > 0
    ? tests
        .filter((t: any) => t.status === 'completed' && t.percentage)
        .reduce((sum: number, t: any) => sum + (t.percentage || 0), 0) / completedTests
    : 0;

  const isLoading = rotationsLoading || statsLoading;

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">CBT Overview</h1>
          <p className="text-gray-600">Monitor and manage Computer-Based Tests across all rotations</p>
        </div>
        
        {/* Rotation Filter */}
        <div className="flex items-center gap-2">
          <label className="text-sm font-medium text-gray-700">Filter by Rotation:</label>
          <select
            value={selectedRotation}
            onChange={(e) => setSelectedRotation(e.target.value)}
            className="input w-64"
          >
            <option value="">All Rotations</option>
            {Array.isArray(rotations) && rotations.map((rotation: any) => (
              <option key={rotation.id} value={rotation.id}>
                {rotation.name || rotation.category_name}
              </option>
            ))}
          </select>
        </div>
      </div>

      {/* Summary Stats */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="card bg-gradient-to-br from-blue-50 to-blue-100 border border-blue-200">
          <div className="flex items-center gap-4">
            <div className="p-3 bg-blue-200 rounded-xl">
              <ComputerDesktopIcon className="w-6 h-6 text-blue-700" />
            </div>
            <div>
              <p className="text-sm text-blue-600">Total Tests</p>
              <p className="text-2xl font-bold text-blue-900">{totalTests}</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-green-50 to-green-100 border border-green-200">
          <div className="flex items-center gap-4">
            <div className="p-3 bg-green-200 rounded-xl">
              <CheckCircleIcon className="w-6 h-6 text-green-700" />
            </div>
            <div>
              <p className="text-sm text-green-600">Completed</p>
              <p className="text-2xl font-bold text-green-900">{completedTests}</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-yellow-50 to-yellow-100 border border-yellow-200">
          <div className="flex items-center gap-4">
            <div className="p-3 bg-yellow-200 rounded-xl">
              <ClockIcon className="w-6 h-6 text-yellow-700" />
            </div>
            <div>
              <p className="text-sm text-yellow-600">In Progress</p>
              <p className="text-2xl font-bold text-yellow-900">{inProgressTests}</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-purple-50 to-purple-100 border border-purple-200">
          <div className="flex items-center gap-4">
            <div className="p-3 bg-purple-200 rounded-xl">
              <ChartBarIcon className="w-6 h-6 text-purple-700" />
            </div>
            <div>
              <p className="text-sm text-purple-600">Average Score</p>
              <p className="text-2xl font-bold text-purple-900">{averageScore.toFixed(1)}%</p>
            </div>
          </div>
        </div>
      </div>

      {/* CBT Configuration Info */}
      <div className="card bg-blue-50 border border-blue-200">
        <div className="flex items-start gap-3">
          <ComputerDesktopIcon className="w-6 h-6 text-blue-600 flex-shrink-0" />
          <div>
            <h3 className="font-semibold text-blue-800">CBT Configuration</h3>
            <div className="mt-2 grid grid-cols-1 md:grid-cols-3 gap-4 text-sm text-blue-700">
              <div>
                <strong>Questions per Test:</strong> 50 MCQs
              </div>
              <div>
                <strong>Duration:</strong> 10 minutes
              </div>
              <div>
                <strong>Passing Score:</strong> 75%
              </div>
            </div>
            <div className="mt-3 text-sm text-blue-700">
              <strong>Test Windows:</strong>
              <ul className="mt-1 ml-4 list-disc">
                <li><strong>Pre-Test:</strong> First week of rotation (Days 1-7)</li>
                <li><strong>Mid-Test:</strong> Around midpoint of rotation (±3 days)</li>
                <li><strong>Post-Test:</strong> Last week of rotation (Final 7 days)</li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      {/* Recent Tests Table */}
      <div className="card">
        <h3 className="font-semibold text-gray-900 mb-4">Recent Tests</h3>
        
        {isLoading ? (
          <div className="animate-pulse space-y-3">
            {[1, 2, 3, 4, 5].map((i) => (
              <div key={i} className="h-12 bg-gray-200 rounded"></div>
            ))}
          </div>
        ) : Array.isArray(tests) && tests.length > 0 ? (
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead>
                <tr className="border-b border-gray-200">
                  <th className="text-left py-3 px-2 font-medium text-gray-600">Student</th>
                  <th className="text-left py-3 px-2 font-medium text-gray-600">Rotation</th>
                  <th className="text-left py-3 px-2 font-medium text-gray-600">Test Type</th>
                  <th className="text-left py-3 px-2 font-medium text-gray-600">Status</th>
                  <th className="text-left py-3 px-2 font-medium text-gray-600">Score</th>
                  <th className="text-left py-3 px-2 font-medium text-gray-600">Date</th>
                </tr>
              </thead>
              <tbody>
                {tests.slice(0, 20).map((test: any) => (
                  <tr key={test.id} className="border-b border-gray-100 hover:bg-gray-50">
                    <td className="py-3 px-2">
                      <div className="flex items-center gap-2">
                        <UsersIcon className="w-4 h-4 text-gray-400" />
                        <span>{test.student_name || test.student_id?.substring(0, 8) || 'Unknown'}</span>
                      </div>
                    </td>
                    <td className="py-3 px-2">
                      <div className="flex items-center gap-2">
                        <AcademicCapIcon className="w-4 h-4 text-gray-400" />
                        <span>{test.rotation_name || test.category_name || 'N/A'}</span>
                      </div>
                    </td>
                    <td className="py-3 px-2">
                      <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                        test.test_type === 'pre_test' 
                          ? 'bg-blue-100 text-blue-800'
                          : test.test_type === 'mid_test'
                            ? 'bg-yellow-100 text-yellow-800'
                            : 'bg-green-100 text-green-800'
                      }`}>
                        {test.test_type === 'pre_test' ? 'Pre-Test' 
                          : test.test_type === 'mid_test' ? 'Mid-Test' 
                          : 'Post-Test'}
                      </span>
                    </td>
                    <td className="py-3 px-2">
                      <span className={`px-2 py-1 rounded-full text-xs font-medium ${
                        test.status === 'completed' 
                          ? 'bg-green-100 text-green-800'
                          : test.status === 'in_progress'
                            ? 'bg-yellow-100 text-yellow-800'
                            : 'bg-gray-100 text-gray-800'
                      }`}>
                        {test.status === 'completed' ? 'Completed' 
                          : test.status === 'in_progress' ? 'In Progress' 
                          : test.status}
                      </span>
                    </td>
                    <td className="py-3 px-2">
                      {test.percentage !== undefined && test.percentage !== null ? (
                        <span className={`font-semibold ${
                          test.percentage >= 75 ? 'text-green-600' 
                            : test.percentage >= 50 ? 'text-yellow-600' 
                            : 'text-red-600'
                        }`}>
                          {test.percentage.toFixed(1)}%
                        </span>
                      ) : (
                        <span className="text-gray-400">—</span>
                      )}
                    </td>
                    <td className="py-3 px-2 text-gray-500">
                      {test.started_at || test.created_at ? (
                        format(new Date(test.started_at || test.created_at), 'MMM d, yyyy h:mm a')
                      ) : (
                        '—'
                      )}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        ) : (
          <div className="text-center py-8 text-gray-500">
            <ComputerDesktopIcon className="w-12 h-12 mx-auto text-gray-300 mb-3" />
            <p>No tests found</p>
            <p className="text-sm mt-1">Tests will appear here once students start taking them</p>
          </div>
        )}
      </div>

      {/* Test Type Summary */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        {['pre_test', 'mid_test', 'post_test'].map((testType) => {
          const typeTests = Array.isArray(tests) 
            ? tests.filter((t: any) => t.test_type === testType) 
            : [];
          const completed = typeTests.filter((t: any) => t.status === 'completed');
          const avgScore = completed.length > 0
            ? completed.reduce((sum: number, t: any) => sum + (t.percentage || 0), 0) / completed.length
            : 0;
          const passing = completed.filter((t: any) => (t.percentage || 0) >= 75).length;

          return (
            <div key={testType} className="card">
              <h4 className="font-semibold text-gray-900 mb-3 capitalize">
                {testType.replace('_', '-').replace('test', 'Test')}
              </h4>
              <div className="space-y-2 text-sm">
                <div className="flex justify-between">
                  <span className="text-gray-600">Total Taken:</span>
                  <span className="font-medium">{typeTests.length}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-600">Completed:</span>
                  <span className="font-medium text-green-600">{completed.length}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-600">Average Score:</span>
                  <span className={`font-medium ${avgScore >= 75 ? 'text-green-600' : avgScore >= 50 ? 'text-yellow-600' : 'text-red-600'}`}>
                    {avgScore.toFixed(1)}%
                  </span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-600">Passing (≥75%):</span>
                  <span className="font-medium text-green-600">
                    {passing} ({completed.length > 0 ? ((passing / completed.length) * 100).toFixed(0) : 0}%)
                  </span>
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}
