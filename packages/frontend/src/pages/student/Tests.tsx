import { useQuery } from '@tanstack/react-query';
import { Link } from 'react-router-dom';
import { testsApi } from '../../services/api';
import { Test, TestAttempt } from '../../types';
import {
  ClipboardDocumentListIcon,
  ClockIcon,
  CheckCircleIcon,
  PlayIcon,
  LockClosedIcon,
  ExclamationTriangleIcon,
} from '@heroicons/react/24/outline';
import { format, isPast, isFuture, isToday } from 'date-fns';

interface TestWithAttempt extends Test {
  lastAttempt?: TestAttempt;
  canTake: boolean;
  attemptsRemaining: number;
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

  const tests: Test[] = testsData?.data || [];
  const attempts: TestAttempt[] = attemptsData?.data || [];

  // Merge tests with attempts
  const testsWithAttempts: TestWithAttempt[] = tests.map(test => {
    const testAttempts = attempts.filter(a => a.testId === test.id);
    const lastAttempt = testAttempts.sort((a, b) => 
      new Date(b.startedAt).getTime() - new Date(a.startedAt).getTime()
    )[0];
    
    return {
      ...test,
      lastAttempt,
      canTake: testAttempts.length < test.maxAttempts && !isPast(new Date(test.scheduledAt)),
      attemptsRemaining: test.maxAttempts - testAttempts.length,
    };
  });

  const availableTests = testsWithAttempts.filter(t => t.isActive && t.canTake);
  const completedTests = testsWithAttempts.filter(t => t.lastAttempt?.completedAt);
  const upcomingTests = testsWithAttempts.filter(t => isFuture(new Date(t.scheduledAt)));

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
      <div>
        <h1 className="text-2xl font-bold text-gray-900">Tests</h1>
        <p className="text-gray-600">Take tests and track your performance</p>
      </div>

      {/* Test Instructions */}
      <div className="card bg-amber-50 border border-amber-200">
        <div className="flex items-start gap-3">
          <ExclamationTriangleIcon className="w-6 h-6 text-amber-600 flex-shrink-0" />
          <div>
            <h3 className="font-semibold text-amber-800">Test Instructions</h3>
            <ul className="mt-2 text-sm text-amber-700 space-y-1">
              <li>• Each test has 50 multiple choice questions to complete in 10 minutes</li>
              <li>• You cannot leave the test screen once started (fullscreen mode required)</li>
              <li>• Tab switching or screen sharing will be flagged</li>
              <li>• Make sure you have a stable internet connection before starting</li>
              <li>• Minimum 75% score required for rotation clearance</li>
            </ul>
          </div>
        </div>
      </div>

      {/* Available Tests */}
      {availableTests.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4 flex items-center gap-2">
            <PlayIcon className="w-5 h-5 text-green-600" />
            Available Now
          </h3>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {availableTests.map((test) => (
              <div key={test.id} className="card border-2 border-green-200 hover:border-green-400 transition-colors">
                <div className="flex items-start justify-between mb-3">
                  <div className="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
                    <ClipboardDocumentListIcon className="w-6 h-6 text-green-600" />
                  </div>
                  <span className="badge badge-success">Available</span>
                </div>
                <h4 className="font-semibold text-gray-900 mb-1">{test.title}</h4>
                <p className="text-sm text-gray-600 mb-4 line-clamp-2">{test.description}</p>
                
                <div className="flex items-center gap-4 text-sm text-gray-500 mb-4">
                  <span className="flex items-center gap-1">
                    <ClipboardDocumentListIcon className="w-4 h-4" />
                    {test.totalQuestions} Qs
                  </span>
                  <span className="flex items-center gap-1">
                    <ClockIcon className="w-4 h-4" />
                    {test.durationMinutes} min
                  </span>
                </div>

                <div className="flex items-center justify-between">
                  <span className="text-xs text-gray-500">
                    {test.attemptsRemaining} attempt{test.attemptsRemaining !== 1 ? 's' : ''} left
                  </span>
                  <Link to={`/test/${test.id}`} className="btn-primary text-sm py-2">
                    Start Test
                  </Link>
                </div>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Upcoming Tests */}
      {upcomingTests.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4 flex items-center gap-2">
            <ClockIcon className="w-5 h-5 text-blue-600" />
            Upcoming Tests
          </h3>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {upcomingTests.map((test) => (
              <div key={test.id} className="card bg-gray-50">
                <div className="flex items-start justify-between mb-3">
                  <div className="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center">
                    <ClockIcon className="w-6 h-6 text-blue-600" />
                  </div>
                  <span className="badge badge-info">
                    {isToday(new Date(test.scheduledAt)) ? 'Today' : format(new Date(test.scheduledAt), 'MMM d')}
                  </span>
                </div>
                <h4 className="font-semibold text-gray-900 mb-1">{test.title}</h4>
                <p className="text-sm text-gray-600 mb-4">{test.description}</p>
                
                <div className="flex items-center gap-4 text-sm text-gray-500 mb-4">
                  <span className="flex items-center gap-1">
                    <ClipboardDocumentListIcon className="w-4 h-4" />
                    {test.totalQuestions} Qs
                  </span>
                  <span className="flex items-center gap-1">
                    <ClockIcon className="w-4 h-4" />
                    {test.durationMinutes} min
                  </span>
                </div>

                <button disabled className="btn-outline w-full text-sm py-2 opacity-50 cursor-not-allowed">
                  <LockClosedIcon className="w-4 h-4 mr-2" />
                  Opens {format(new Date(test.scheduledAt), 'h:mm a')}
                </button>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Completed Tests */}
      {completedTests.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4 flex items-center gap-2">
            <CheckCircleIcon className="w-5 h-5 text-gray-600" />
            Completed Tests
          </h3>
          <div className="card overflow-hidden">
            <table className="w-full">
              <thead className="bg-gray-50 border-b">
                <tr>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Test</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Completed</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Score</th>
                  <th className="text-left px-4 py-3 text-sm font-semibold text-gray-600">Status</th>
                </tr>
              </thead>
              <tbody className="divide-y">
                {completedTests.map((test) => (
                  <tr key={test.id} className="hover:bg-gray-50">
                    <td className="px-4 py-3">
                      <p className="font-medium text-gray-900">{test.title}</p>
                      <p className="text-sm text-gray-500">{test.totalQuestions} questions</p>
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600">
                      {test.lastAttempt?.completedAt && 
                        format(new Date(test.lastAttempt.completedAt), 'MMM d, yyyy • h:mm a')
                      }
                    </td>
                    <td className="px-4 py-3">
                      <span className={`text-lg font-bold ${
                        (test.lastAttempt?.percentageScore || 0) >= test.passingScore 
                          ? 'text-green-600' 
                          : 'text-red-600'
                      }`}>
                        {test.lastAttempt?.percentageScore}%
                      </span>
                    </td>
                    <td className="px-4 py-3">
                      <span className={`badge ${
                        test.lastAttempt?.passed ? 'badge-success' : 'badge-danger'
                      }`}>
                        {test.lastAttempt?.passed ? 'Passed' : 'Failed'}
                      </span>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {/* Empty State */}
      {tests.length === 0 && (
        <div className="card text-center py-12">
          <ClipboardDocumentListIcon className="w-16 h-16 mx-auto text-gray-300 mb-4" />
          <h3 className="text-lg font-semibold text-gray-900 mb-2">No Tests Available</h3>
          <p className="text-gray-600">There are no tests scheduled for your rotations at this time.</p>
        </div>
      )}
    </div>
  );
}

export default StudentTests;
