import { useState, useEffect } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '../../contexts/AuthContext';
import { testsApi, studentsApi } from '../../services/api';
import toast from 'react-hot-toast';
import {
  ComputerDesktopIcon,
  ClockIcon,
  CheckCircleIcon,
  LockClosedIcon,
  PlayIcon,
  ExclamationTriangleIcon,
  CalendarDaysIcon,
  AcademicCapIcon,
  DocumentCheckIcon,
} from '@heroicons/react/24/outline';
import { format, differenceInDays, differenceInWeeks, isWithinInterval, addDays, subDays } from 'date-fns';

interface StudentRotation {
  id: string;
  rotation_id: string;
  rotation_name: string;
  category_id: string;
  category_name: string;
  start_date: string;
  end_date: string;
  status: string;
  is_cleared: boolean;
}

interface TestInfo {
  id?: string;
  type: 'pre_test' | 'mid_test' | 'post_test';
  label: string;
  description: string;
  status: 'locked' | 'available' | 'completed' | 'missed';
  score?: number;
  percentage?: number;
  completedAt?: string;
  availableFrom: Date;
  availableTo: Date;
  icon: React.ComponentType<{ className?: string }>;
}

export default function StudentCBT() {
  useAuth(); // Ensure user is authenticated
  const navigate = useNavigate();
  const queryClient = useQueryClient();
  const [selectedRotation, setSelectedRotation] = useState<StudentRotation | null>(null);

  // Fetch student's current rotations
  const { data: rotationsData, isLoading: rotationsLoading } = useQuery({
    queryKey: ['my-rotations'],
    queryFn: async () => {
      const response = await studentsApi.getMyRotations();
      return response.data;
    },
  });

  // Fetch student's tests
  const { data: testsData } = useQuery({
    queryKey: ['my-tests', selectedRotation?.rotation_id],
    queryFn: async () => {
      const response = await testsApi.getMyTests();
      return response.data;
    },
    enabled: !!selectedRotation,
  });

  const rotations: StudentRotation[] = rotationsData?.rotations || rotationsData || [];
  const tests = testsData?.tests || testsData || [];

  // Auto-select active rotation
  useEffect(() => {
    if (rotations.length > 0 && !selectedRotation) {
      const activeRotation = rotations.find(r => r.status === 'active');
      setSelectedRotation(activeRotation || rotations[0]);
    }
  }, [rotations, selectedRotation]);

  // Start test mutation
  const startTestMutation = useMutation({
    mutationFn: async ({ rotationId, testType }: { rotationId: string; testType: string }) => {
      const response = await testsApi.start(rotationId, testType);
      return response.data;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['my-tests'] });
      navigate(`/test/${data.testId || data.id}`);
    },
    onError: (error: any) => {
      toast.error(error.response?.data?.message || 'Failed to start test');
    },
  });

  // Calculate test windows based on rotation dates
  const calculateTestWindows = (rotation: StudentRotation): TestInfo[] => {
    const startDate = new Date(rotation.start_date);
    const endDate = new Date(rotation.end_date);
    const today = new Date();
    const totalDays = differenceInDays(endDate, startDate);
    const midPoint = addDays(startDate, Math.floor(totalDays / 2));

    // Pre-test: First week (day 1-7)
    const preTestStart = startDate;
    const preTestEnd = addDays(startDate, 6);

    // Mid-test: Middle week (around midpoint, 3 days before and after)
    const midTestStart = subDays(midPoint, 3);
    const midTestEnd = addDays(midPoint, 3);

    // Post-test: Last week (last 7 days)
    const postTestStart = subDays(endDate, 6);
    const postTestEnd = endDate;

    // Find existing test results
    const preTest = tests.find((t: any) => t.rotation_id === rotation.rotation_id && t.test_type === 'pre_test');
    const midTest = tests.find((t: any) => t.rotation_id === rotation.rotation_id && t.test_type === 'mid_test');
    const postTest = tests.find((t: any) => t.rotation_id === rotation.rotation_id && t.test_type === 'post_test');

    const getStatus = (
      test: any, 
      availableFrom: Date, 
      availableTo: Date
    ): 'locked' | 'available' | 'completed' | 'missed' => {
      if (test?.completed_at || test?.completedAt) return 'completed';
      if (isWithinInterval(today, { start: availableFrom, end: availableTo })) return 'available';
      if (today > availableTo) return 'missed';
      return 'locked';
    };

    return [
      {
        id: preTest?.id,
        type: 'pre_test',
        label: 'Pre-Test',
        description: 'Baseline assessment before starting the rotation',
        status: getStatus(preTest, preTestStart, preTestEnd),
        score: preTest?.score,
        percentage: preTest?.percentage,
        completedAt: preTest?.completed_at || preTest?.completedAt,
        availableFrom: preTestStart,
        availableTo: preTestEnd,
        icon: PlayIcon,
      },
      {
        id: midTest?.id,
        type: 'mid_test',
        label: 'Mid-Test',
        description: 'Progress assessment at the midpoint of rotation',
        status: getStatus(midTest, midTestStart, midTestEnd),
        score: midTest?.score,
        percentage: midTest?.percentage,
        completedAt: midTest?.completed_at || midTest?.completedAt,
        availableFrom: midTestStart,
        availableTo: midTestEnd,
        icon: ClockIcon,
      },
      {
        id: postTest?.id,
        type: 'post_test',
        label: 'Post-Test',
        description: 'Final assessment at the end of rotation',
        status: getStatus(postTest, postTestStart, postTestEnd),
        score: postTest?.score,
        percentage: postTest?.percentage,
        completedAt: postTest?.completed_at || postTest?.completedAt,
        availableFrom: postTestStart,
        availableTo: postTestEnd,
        icon: CheckCircleIcon,
      },
    ];
  };

  const testWindows = selectedRotation ? calculateTestWindows(selectedRotation) : [];

  const handleStartTest = (testType: string) => {
    if (!selectedRotation) return;
    
    startTestMutation.mutate({
      rotationId: selectedRotation.rotation_id,
      testType,
    });
  };

  const getStatusBadge = (status: string) => {
    switch (status) {
      case 'available':
        return <span className="px-2 py-1 text-xs font-semibold rounded-full bg-green-100 text-green-800">Available Now</span>;
      case 'completed':
        return <span className="px-2 py-1 text-xs font-semibold rounded-full bg-blue-100 text-blue-800">Completed</span>;
      case 'missed':
        return <span className="px-2 py-1 text-xs font-semibold rounded-full bg-red-100 text-red-800">Missed</span>;
      case 'locked':
      default:
        return <span className="px-2 py-1 text-xs font-semibold rounded-full bg-gray-100 text-gray-800">Upcoming</span>;
    }
  };

  const getScoreColor = (percentage: number) => {
    if (percentage >= 75) return 'text-green-600';
    if (percentage >= 50) return 'text-yellow-600';
    return 'text-red-600';
  };

  if (rotationsLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/4"></div>
        <div className="h-32 bg-gray-200 rounded-xl"></div>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {[1, 2, 3].map((i) => (
            <div key={i} className="h-48 bg-gray-200 rounded-xl"></div>
          ))}
        </div>
      </div>
    );
  }

  if (rotations.length === 0) {
    return (
      <div className="space-y-6">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Computer-Based Tests (CBT)</h1>
          <p className="text-gray-600">Take rotation assessments</p>
        </div>
        <div className="card bg-yellow-50 border border-yellow-200">
          <div className="flex items-start gap-3">
            <ExclamationTriangleIcon className="w-6 h-6 text-yellow-600 flex-shrink-0" />
            <div>
              <h3 className="font-semibold text-yellow-800">No Active Rotations</h3>
              <p className="text-sm text-yellow-700 mt-1">
                You are not currently enrolled in any rotations. Please contact your administrator to get enrolled.
              </p>
            </div>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-2xl font-bold text-gray-900">Computer-Based Tests (CBT)</h1>
        <p className="text-gray-600">Take your rotation assessments - Pre-test, Mid-test, and Post-test</p>
      </div>

      {/* Test Instructions */}
      <div className="card bg-blue-50 border border-blue-200">
        <div className="flex items-start gap-3">
          <ComputerDesktopIcon className="w-6 h-6 text-blue-600 flex-shrink-0" />
          <div>
            <h3 className="font-semibold text-blue-800">CBT Instructions</h3>
            <ul className="mt-2 text-sm text-blue-700 space-y-1">
              <li>• Each test contains <strong>50 MCQs</strong> from your rotation's question bank</li>
              <li>• You have <strong>10 minutes</strong> to complete each test</li>
              <li>• Tests are available during specific windows based on your rotation dates</li>
              <li>• <strong>Pre-Test:</strong> First week of rotation | <strong>Mid-Test:</strong> Middle of rotation | <strong>Post-Test:</strong> Last week</li>
              <li>• A minimum score of <strong>75%</strong> is required for clearance</li>
              <li>• Fullscreen mode is required - tab switching will be recorded</li>
            </ul>
          </div>
        </div>
      </div>

      {/* Rotation Selector */}
      {rotations.length > 1 && (
        <div className="card">
          <label className="block text-sm font-medium text-gray-700 mb-2">
            Select Rotation
          </label>
          <select
            value={selectedRotation?.id || ''}
            onChange={(e) => {
              const rotation = rotations.find(r => r.id === e.target.value);
              setSelectedRotation(rotation || null);
            }}
            className="input w-full md:w-1/2"
          >
            {rotations.map((rotation) => (
              <option key={rotation.id} value={rotation.id}>
                {rotation.category_name || rotation.rotation_name} ({rotation.status})
              </option>
            ))}
          </select>
        </div>
      )}

      {/* Current Rotation Info */}
      {selectedRotation && (
        <div className="card bg-gradient-to-r from-primary-50 to-primary-100 border border-primary-200">
          <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
            <div className="flex items-center gap-4">
              <div className="p-3 bg-primary-200 rounded-xl">
                <AcademicCapIcon className="w-8 h-8 text-primary-700" />
              </div>
              <div>
                <h3 className="text-lg font-bold text-primary-900">
                  {selectedRotation.category_name || selectedRotation.rotation_name}
                </h3>
                <div className="flex items-center gap-4 text-sm text-primary-700 mt-1">
                  <span className="flex items-center gap-1">
                    <CalendarDaysIcon className="w-4 h-4" />
                    {format(new Date(selectedRotation.start_date), 'MMM d, yyyy')} - {format(new Date(selectedRotation.end_date), 'MMM d, yyyy')}
                  </span>
                  <span>
                    ({differenceInWeeks(new Date(selectedRotation.end_date), new Date(selectedRotation.start_date))} weeks)
                  </span>
                </div>
              </div>
            </div>
            <div className={`px-4 py-2 rounded-lg font-semibold ${
              selectedRotation.is_cleared 
                ? 'bg-green-100 text-green-800' 
                : 'bg-yellow-100 text-yellow-800'
            }`}>
              {selectedRotation.is_cleared ? '✓ Cleared' : 'In Progress'}
            </div>
          </div>
        </div>
      )}

      {/* Test Cards */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        {testWindows.map((test) => (
          <div
            key={test.type}
            className={`card border-2 transition-all ${
              test.status === 'available' 
                ? 'border-green-300 bg-green-50 hover:shadow-lg' 
                : test.status === 'completed'
                  ? 'border-blue-300 bg-blue-50'
                  : test.status === 'missed'
                    ? 'border-red-300 bg-red-50'
                    : 'border-gray-200 bg-gray-50'
            }`}
          >
            <div className="flex flex-col h-full">
              {/* Header */}
              <div className="flex items-start justify-between mb-4">
                <div className={`p-3 rounded-xl ${
                  test.status === 'available' 
                    ? 'bg-green-200' 
                    : test.status === 'completed'
                      ? 'bg-blue-200'
                      : test.status === 'missed'
                        ? 'bg-red-200'
                        : 'bg-gray-200'
                }`}>
                  <test.icon className={`w-6 h-6 ${
                    test.status === 'available' 
                      ? 'text-green-700' 
                      : test.status === 'completed'
                        ? 'text-blue-700'
                        : test.status === 'missed'
                          ? 'text-red-700'
                          : 'text-gray-500'
                  }`} />
                </div>
                {getStatusBadge(test.status)}
              </div>

              {/* Content */}
              <h3 className="text-lg font-bold text-gray-900">{test.label}</h3>
              <p className="text-sm text-gray-600 mt-1 flex-grow">{test.description}</p>

              {/* Test Window */}
              <div className="mt-4 p-3 bg-white rounded-lg border border-gray-200">
                <p className="text-xs font-medium text-gray-500 uppercase">Available Window</p>
                <p className="text-sm font-semibold text-gray-900">
                  {format(test.availableFrom, 'MMM d')} - {format(test.availableTo, 'MMM d, yyyy')}
                </p>
              </div>

              {/* Score (if completed) */}
              {test.status === 'completed' && test.percentage !== undefined && (
                <div className="mt-4 p-3 bg-white rounded-lg border border-gray-200">
                  <p className="text-xs font-medium text-gray-500 uppercase">Your Score</p>
                  <p className={`text-2xl font-bold ${getScoreColor(test.percentage)}`}>
                    {test.percentage.toFixed(1)}%
                  </p>
                  {test.completedAt && (
                    <p className="text-xs text-gray-500 mt-1">
                      Completed on {format(new Date(test.completedAt), 'MMM d, yyyy h:mm a')}
                    </p>
                  )}
                </div>
              )}

              {/* Action Button */}
              <div className="mt-4">
                {test.status === 'available' ? (
                  <button
                    onClick={() => handleStartTest(test.type)}
                    disabled={startTestMutation.isPending}
                    className="btn btn-primary w-full flex items-center justify-center gap-2"
                  >
                    {startTestMutation.isPending ? (
                      <>
                        <div className="w-5 h-5 border-2 border-white border-t-transparent rounded-full animate-spin"></div>
                        Starting...
                      </>
                    ) : (
                      <>
                        <PlayIcon className="w-5 h-5" />
                        Start {test.label}
                      </>
                    )}
                  </button>
                ) : test.status === 'completed' ? (
                  <button
                    disabled
                    className="btn w-full bg-blue-100 text-blue-800 cursor-not-allowed flex items-center justify-center gap-2"
                  >
                    <DocumentCheckIcon className="w-5 h-5" />
                    Completed
                  </button>
                ) : test.status === 'missed' ? (
                  <button
                    disabled
                    className="btn w-full bg-red-100 text-red-800 cursor-not-allowed flex items-center justify-center gap-2"
                  >
                    <ExclamationTriangleIcon className="w-5 h-5" />
                    Window Closed
                  </button>
                ) : (
                  <button
                    disabled
                    className="btn w-full bg-gray-100 text-gray-500 cursor-not-allowed flex items-center justify-center gap-2"
                  >
                    <LockClosedIcon className="w-5 h-5" />
                    Not Yet Available
                  </button>
                )}
              </div>
            </div>
          </div>
        ))}
      </div>

      {/* Overall Progress */}
      {selectedRotation && (
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">CBT Progress</h3>
          <div className="flex items-center gap-4">
            <div className="flex-grow">
              <div className="h-3 bg-gray-200 rounded-full overflow-hidden">
                <div
                  className="h-full bg-gradient-to-r from-green-500 to-primary-500 transition-all duration-500"
                  style={{ 
                    width: `${(testWindows.filter(t => t.status === 'completed').length / 3) * 100}%` 
                  }}
                />
              </div>
            </div>
            <span className="text-sm font-semibold text-gray-600">
              {testWindows.filter(t => t.status === 'completed').length}/3 Completed
            </span>
          </div>

          {/* Average Score */}
          {testWindows.some(t => t.status === 'completed') && (
            <div className="mt-4 flex items-center justify-between">
              <span className="text-sm text-gray-600">Average Score:</span>
              <span className={`text-lg font-bold ${getScoreColor(
                testWindows
                  .filter(t => t.percentage !== undefined)
                  .reduce((sum, t) => sum + (t.percentage || 0), 0) / 
                  testWindows.filter(t => t.percentage !== undefined).length || 0
              )}`}>
                {(
                  testWindows
                    .filter(t => t.percentage !== undefined)
                    .reduce((sum, t) => sum + (t.percentage || 0), 0) / 
                    testWindows.filter(t => t.percentage !== undefined).length || 0
                ).toFixed(1)}%
              </span>
            </div>
          )}
        </div>
      )}
    </div>
  );
}
