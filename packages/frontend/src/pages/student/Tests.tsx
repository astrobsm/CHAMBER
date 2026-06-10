import { useQuery } from '@tanstack/react-query';
import { Link } from 'react-router-dom';
import { testsApi } from '../../services/api';
import {
  ClipboardDocumentListIcon,
  ClockIcon,
  CheckCircleIcon,
  PlayIcon,
  ArrowRightIcon,
  ExclamationTriangleIcon,
  AcademicCapIcon,
} from '@heroicons/react/24/outline';
import { format } from 'date-fns';

interface TestRecord {
  id: string;
  title: string;
  testType: string;
  status: string;
  totalQuestions: number;
  durationMinutes: number;
  startedAt: string | null;
  completedAt: string | null;
  score: number | null;
  percentage: number | null;
  questionsAnswered: number;
  correctAnswers: number;
  rotationName: string;
  categoryName: string;
}

interface TestAttemptRecord {
  id: string;
  testId: string;
  testTitle: string;
  score: number | null;
  percentage: number | null;
  percentageScore: number | null;
  totalQuestions: number;
  correctAnswers: number;
  startedAt: string | null;
  completedAt: string | null;
  status: string;
  passed: boolean;
}

export function StudentTests() {
  const { data: testsData, isLoading: testsLoading } = useQuery({
    queryKey: ['tests'],
    queryFn: () => testsApi.list(),
  });

  const { data: attemptsData } = useQuery({
    queryKey: ['my-attempts'],
    queryFn: testsApi.getMyAttempts,
  });

  const rawTests = testsData?.data?.data || testsData?.data || [];
  const rawAttempts = attemptsData?.data?.data || attemptsData?.data || [];
  const tests: TestRecord[] = Array.isArray(rawTests) ? rawTests : [];
  const attempts: TestAttemptRecord[] = Array.isArray(rawAttempts) ? rawAttempts : [];

  const inProgressTests = tests.filter(t => t.status === 'in_progress');
  const completedTests = tests.filter(t => t.status === 'completed');
  const notStartedTests = tests.filter(t => t.status === 'not_started');

  const getStatusBadge = (status: string) => {
    switch (status) {
      case 'completed':
        return <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">Completed</span>;
      case 'in_progress':
        return <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">In Progress</span>;
      default:
        return <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">Not Started</span>;
    }
  };

  const getScoreColor = (pct: number | null) => {
    if (pct == null) return 'text-gray-400';
    if (pct >= 75) return 'text-green-600';
    if (pct >= 50) return 'text-yellow-600';
    return 'text-red-600';
  };

  const getTestTypeLabel = (type: string) => {
    switch (type) {
      case 'pre_test': return 'Pre-Test';
      case 'mid_test': return 'Mid-Test';
      case 'post_test': return 'Post-Test';
      default: return type;
    }
  };

  if (testsLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/4"></div>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          {[1, 2, 3, 4, 5, 6].map((i) => (
            <div key={i} className="h-48 bg-gray-200 rounded-xl"></div>
          ))}
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Tests</h1>
          <p className="text-gray-600">View your test history and start new tests</p>
        </div>
        <Link to="/student/cbt" className="btn-primary flex items-center gap-2">
          <PlayIcon className="w-5 h-5" />
          Take a Test
        </Link>
      </div>

      {/* Summary Stats */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-xl p-4 border border-gray-200">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center">
              <ClipboardDocumentListIcon className="w-5 h-5 text-blue-600" />
            </div>
            <div>
              <p className="text-2xl font-bold text-gray-900">{tests.length}</p>
              <p className="text-xs text-gray-500">Total Tests</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl p-4 border border-gray-200">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-green-100 rounded-lg flex items-center justify-center">
              <CheckCircleIcon className="w-5 h-5 text-green-600" />
            </div>
            <div>
              <p className="text-2xl font-bold text-gray-900">{completedTests.length}</p>
              <p className="text-xs text-gray-500">Completed</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl p-4 border border-gray-200">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-yellow-100 rounded-lg flex items-center justify-center">
              <ClockIcon className="w-5 h-5 text-yellow-600" />
            </div>
            <div>
              <p className="text-2xl font-bold text-gray-900">{inProgressTests.length}</p>
              <p className="text-xs text-gray-500">In Progress</p>
            </div>
          </div>
        </div>
        <div className="bg-white rounded-xl p-4 border border-gray-200">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-purple-100 rounded-lg flex items-center justify-center">
              <AcademicCapIcon className="w-5 h-5 text-purple-600" />
            </div>
            <div>
              <p className="text-2xl font-bold text-gray-900">
                {completedTests.length > 0 
                  ? Math.round(completedTests.reduce((sum, t) => sum + (t.percentage || 0), 0) / completedTests.length) 
                  : 0}%
              </p>
              <p className="text-xs text-gray-500">Avg Score</p>
            </div>
          </div>
        </div>
      </div>

      {/* Test Instructions */}
      <div className="bg-amber-50 border border-amber-200 rounded-xl p-4">
        <div className="flex items-start gap-3">
          <ExclamationTriangleIcon className="w-6 h-6 text-amber-600 flex-shrink-0" />
          <div>
            <h3 className="font-semibold text-amber-800">How to Take a Test</h3>
            <ul className="mt-2 text-sm text-amber-700 space-y-1">
              <li>• Go to the <Link to="/student/cbt" className="underline font-medium">CBT page</Link> to start a new Pre-Test, Mid-Test, or Post-Test for your rotation</li>
              <li>• Each test has 50 multiple choice questions to complete in 10 minutes</li>
              <li>• Fullscreen mode is required — tab switching will be flagged</li>
              <li>• Minimum 75% score required for rotation clearance</li>
            </ul>
          </div>
        </div>
      </div>

      {/* In Progress Tests */}
      {inProgressTests.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4 flex items-center gap-2">
            <PlayIcon className="w-5 h-5 text-yellow-600" />
            In Progress — Resume Now
          </h3>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {inProgressTests.map((test) => (
              <div key={test.id} className="bg-white rounded-xl p-5 border-2 border-yellow-300 hover:border-yellow-400 transition-colors shadow-sm">
                <div className="flex items-start justify-between mb-3">
                  <div className="w-12 h-12 bg-yellow-100 rounded-xl flex items-center justify-center">
                    <PlayIcon className="w-6 h-6 text-yellow-600" />
                  </div>
                  {getStatusBadge(test.status)}
                </div>
                <h4 className="font-semibold text-gray-900 mb-1">{test.title}</h4>
                <p className="text-sm text-gray-500 mb-1">{getTestTypeLabel(test.testType)}</p>
                
                <div className="flex items-center gap-4 text-sm text-gray-500 mb-4">
                  <span className="flex items-center gap-1">
                    <ClipboardDocumentListIcon className="w-4 h-4" />
                    {test.questionsAnswered}/{test.totalQuestions} answered
                  </span>
                  <span className="flex items-center gap-1">
                    <ClockIcon className="w-4 h-4" />
                    {test.durationMinutes} min
                  </span>
                </div>

                <Link to={`/test/${test.id}`} className="inline-flex items-center gap-2 bg-yellow-500 text-white px-4 py-2 rounded-lg text-sm font-medium hover:bg-yellow-600 transition-colors w-full justify-center">
                  Resume Test
                  <ArrowRightIcon className="w-4 h-4" />
                </Link>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Completed Tests */}
      {completedTests.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4 flex items-center gap-2">
            <CheckCircleIcon className="w-5 h-5 text-green-600" />
            Completed Tests
          </h3>
          <div className="bg-white rounded-xl border border-gray-200 overflow-hidden">
            <table className="w-full">
              <thead className="bg-gray-50 border-b">
                <tr>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Test</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Type</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Completed</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Score</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Result</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600"></th>
                </tr>
              </thead>
              <tbody className="divide-y">
                {completedTests.map((test) => (
                  <tr key={test.id} className="hover:bg-gray-50">
                    <td className="px-4 py-3">
                      <p className="font-medium text-gray-900">{test.rotationName || 'Rotation'}</p>
                      <p className="text-sm text-gray-500">{test.correctAnswers}/{test.totalQuestions} correct</p>
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600">
                      {getTestTypeLabel(test.testType)}
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600">
                      {test.completedAt && format(new Date(test.completedAt), 'MMM d, yyyy')}
                    </td>
                    <td className="px-4 py-3">
                      <span className={`text-lg font-bold ${getScoreColor(test.percentage)}`}>
                        {test.percentage != null ? `${Math.round(test.percentage)}%` : '—'}
                      </span>
                    </td>
                    <td className="px-4 py-3">
                      {test.percentage != null && (
                        <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${
                          test.percentage >= 50 ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'
                        }`}>
                          {test.percentage >= 50 ? 'Passed' : 'Failed'}
                        </span>
                      )}
                    </td>
                    <td className="px-4 py-3">
                      <Link to={`/test/${test.id}/results`} className="text-sm text-blue-600 hover:underline">
                        View Results
                      </Link>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {/* Not Started */}
      {notStartedTests.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4 flex items-center gap-2">
            <ClockIcon className="w-5 h-5 text-gray-500" />
            Not Started
          </h3>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {notStartedTests.map((test) => (
              <div key={test.id} className="bg-white rounded-xl p-5 border border-gray-200">
                <div className="flex items-start justify-between mb-3">
                  <div className="w-12 h-12 bg-gray-100 rounded-xl flex items-center justify-center">
                    <ClipboardDocumentListIcon className="w-6 h-6 text-gray-400" />
                  </div>
                  {getStatusBadge(test.status)}
                </div>
                <h4 className="font-semibold text-gray-900 mb-1">{test.title}</h4>
                <p className="text-sm text-gray-500 mb-4">{getTestTypeLabel(test.testType)} • {test.totalQuestions} questions • {test.durationMinutes} min</p>
                <Link to={`/test/${test.id}`} className="inline-flex items-center gap-2 bg-blue-600 text-white px-4 py-2 rounded-lg text-sm font-medium hover:bg-blue-700 transition-colors w-full justify-center">
                  Start Test
                  <ArrowRightIcon className="w-4 h-4" />
                </Link>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Empty State */}
      {tests.length === 0 && (
        <div className="bg-white rounded-xl border border-gray-200 text-center py-12 px-6">
          <ClipboardDocumentListIcon className="w-16 h-16 mx-auto text-gray-300 mb-4" />
          <h3 className="text-lg font-semibold text-gray-900 mb-2">No Tests Yet</h3>
          <p className="text-gray-600 mb-6">You haven't started any tests yet. Go to the CBT page to take your first test.</p>
          <Link to="/student/cbt" className="inline-flex items-center gap-2 bg-blue-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-blue-700 transition-colors">
            <PlayIcon className="w-5 h-5" />
            Go to CBT Page
          </Link>
        </div>
      )}
    </div>
  );
}

export default StudentTests;
