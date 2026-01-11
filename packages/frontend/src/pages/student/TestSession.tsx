import { useState, useEffect, useCallback, useRef } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useQuery, useMutation } from '@tanstack/react-query';
import { testsApi } from '../../services/api';
import { Question, TestAttempt, AntiCheatFlag } from '../../types';
import toast from 'react-hot-toast';
import {
  ClockIcon,
  ChevronLeftIcon,
  ChevronRightIcon,
  FlagIcon,
  ExclamationTriangleIcon,
  CheckCircleIcon,
} from '@heroicons/react/24/outline';
import FingerprintJS from '@fingerprintjs/fingerprintjs';

interface TestData {
  test: {
    id: string;
    title: string;
    durationMinutes: number;
    totalQuestions: number;
    passingScore: number;
  };
  questions: Question[];
  attempt: TestAttempt;
}

export function TestSession() {
  const { testId } = useParams<{ testId: string }>();
  const navigate = useNavigate();
  
  const [isStarted, setIsStarted] = useState(false);
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [answers, setAnswers] = useState<Record<string, string[]>>({});
  const [flaggedQuestions, setFlaggedQuestions] = useState<Set<number>>(new Set());
  const [timeRemaining, setTimeRemaining] = useState(0);
  const [antiCheatFlags, setAntiCheatFlags] = useState<AntiCheatFlag[]>([]);
  const [isFullscreen, setIsFullscreen] = useState(false);
  const [showWarning, setShowWarning] = useState(false);
  const [deviceFingerprint, setDeviceFingerprint] = useState('');
  const [testData, setTestData] = useState<TestData | null>(null);
  
  const questionStartTime = useRef(Date.now());
  const warningCount = useRef(0);

  // Get device fingerprint
  useEffect(() => {
    const getFingerprint = async () => {
      const fp = await FingerprintJS.load();
      const result = await fp.get();
      setDeviceFingerprint(result.visitorId);
    };
    getFingerprint();
  }, []);

  // Fetch test data
  const { data, isLoading } = useQuery({
    queryKey: ['test', testId],
    queryFn: () => testsApi.get(testId!),
    enabled: !!testId,
  });

  // Start test mutation
  const startMutation = useMutation({
    mutationFn: () => testsApi.start(testId!, deviceFingerprint),
    onSuccess: (response) => {
      setTestData(response.data);
      setTimeRemaining(response.data.test.durationMinutes * 60);
      setIsStarted(true);
      enterFullscreen();
    },
    onError: () => {
      toast.error('Failed to start test. Please try again.');
    },
  });

  // Submit answer mutation
  const submitAnswerMutation = useMutation({
    mutationFn: ({ questionId, optionIds, timeTaken }: { 
      questionId: string; 
      optionIds: string[]; 
      timeTaken: number 
    }) => testsApi.submitAnswer(testData!.attempt.id, questionId, optionIds, timeTaken),
  });

  // Complete test mutation
  const completeMutation = useMutation({
    mutationFn: () => testsApi.complete(testData!.attempt.id),
    onSuccess: (response) => {
      exitFullscreen();
      navigate(`/student/tests`, { 
        state: { 
          completed: true, 
          score: response.data.percentageScore,
          passed: response.data.passed,
        } 
      });
    },
  });

  // Report anti-cheat flag
  const reportFlagMutation = useMutation({
    mutationFn: (flag: { type: string; details?: string }) => 
      testsApi.reportAntiCheat(testData!.attempt.id, flag),
  });

  // Fullscreen management
  const enterFullscreen = useCallback(async () => {
    try {
      await document.documentElement.requestFullscreen();
      setIsFullscreen(true);
    } catch {
      toast.error('Fullscreen is required for this test');
    }
  }, []);

  const exitFullscreen = useCallback(() => {
    if (document.fullscreenElement) {
      document.exitFullscreen();
    }
    setIsFullscreen(false);
  }, []);

  // Anti-cheat: Detect fullscreen exit
  useEffect(() => {
    const handleFullscreenChange = () => {
      if (!document.fullscreenElement && isStarted && !completeMutation.isPending) {
        const flag: AntiCheatFlag = {
          type: 'fullscreen_exit',
          timestamp: new Date().toISOString(),
          details: 'User exited fullscreen mode',
        };
        setAntiCheatFlags(prev => [...prev, flag]);
        reportFlagMutation.mutate({ type: 'fullscreen_exit' });
        
        warningCount.current++;
        if (warningCount.current >= 3) {
          toast.error('Too many violations. Test will be submitted.');
          handleSubmit();
        } else {
          setShowWarning(true);
          setTimeout(() => {
            setShowWarning(false);
            enterFullscreen();
          }, 3000);
        }
      }
    };

    document.addEventListener('fullscreenchange', handleFullscreenChange);
    return () => document.removeEventListener('fullscreenchange', handleFullscreenChange);
  }, [isStarted]);

  // Anti-cheat: Detect tab switching
  useEffect(() => {
    const handleVisibilityChange = () => {
      if (document.hidden && isStarted && !completeMutation.isPending) {
        const flag: AntiCheatFlag = {
          type: 'tab_switch',
          timestamp: new Date().toISOString(),
          details: 'User switched tabs or minimized window',
        };
        setAntiCheatFlags(prev => [...prev, flag]);
        reportFlagMutation.mutate({ type: 'tab_switch' });
        
        warningCount.current++;
        toast.error(`Warning: Tab switching detected (${warningCount.current}/3)`);
        
        if (warningCount.current >= 3) {
          handleSubmit();
        }
      }
    };

    document.addEventListener('visibilitychange', handleVisibilityChange);
    return () => document.removeEventListener('visibilitychange', handleVisibilityChange);
  }, [isStarted]);

  // Anti-cheat: Prevent copy/paste
  useEffect(() => {
    const handleCopy = (e: ClipboardEvent) => {
      if (isStarted) {
        e.preventDefault();
        const flag: AntiCheatFlag = {
          type: 'copy_attempt',
          timestamp: new Date().toISOString(),
        };
        setAntiCheatFlags(prev => [...prev, flag]);
        reportFlagMutation.mutate({ type: 'copy_attempt' });
        toast.error('Copying is not allowed during the test');
      }
    };

    const handleContextMenu = (e: MouseEvent) => {
      if (isStarted) {
        e.preventDefault();
      }
    };

    document.addEventListener('copy', handleCopy);
    document.addEventListener('contextmenu', handleContextMenu);
    return () => {
      document.removeEventListener('copy', handleCopy);
      document.removeEventListener('contextmenu', handleContextMenu);
    };
  }, [isStarted]);

  // Timer countdown
  useEffect(() => {
    if (!isStarted || timeRemaining <= 0) return;

    const timer = setInterval(() => {
      setTimeRemaining(prev => {
        if (prev <= 1) {
          handleSubmit();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    return () => clearInterval(timer);
  }, [isStarted, timeRemaining]);

  // Handle answer selection
  const handleAnswerSelect = (optionId: string) => {
    const question = testData?.questions[currentQuestion];
    if (!question) return;

    const currentAnswers = answers[question.id] || [];
    let newAnswers: string[];

    if (question.type === 'single_choice' || question.type === 'true_false') {
      newAnswers = [optionId];
    } else {
      // Multiple choice - toggle selection
      if (currentAnswers.includes(optionId)) {
        newAnswers = currentAnswers.filter(id => id !== optionId);
      } else {
        newAnswers = [...currentAnswers, optionId];
      }
    }

    setAnswers(prev => ({ ...prev, [question.id]: newAnswers }));
  };

  // Handle question navigation
  const handleNextQuestion = async () => {
    const question = testData?.questions[currentQuestion];
    if (question && answers[question.id]) {
      const timeTaken = Math.round((Date.now() - questionStartTime.current) / 1000);
      await submitAnswerMutation.mutateAsync({
        questionId: question.id,
        optionIds: answers[question.id],
        timeTaken,
      });
    }

    if (currentQuestion < (testData?.questions.length || 0) - 1) {
      setCurrentQuestion(prev => prev + 1);
      questionStartTime.current = Date.now();
    }
  };

  const handlePrevQuestion = () => {
    if (currentQuestion > 0) {
      setCurrentQuestion(prev => prev - 1);
      questionStartTime.current = Date.now();
    }
  };

  // Toggle flag
  const toggleFlag = () => {
    setFlaggedQuestions(prev => {
      const newFlags = new Set(prev);
      if (newFlags.has(currentQuestion)) {
        newFlags.delete(currentQuestion);
      } else {
        newFlags.add(currentQuestion);
      }
      return newFlags;
    });
  };

  // Submit test
  const handleSubmit = async () => {
    // Submit current answer if any
    const question = testData?.questions[currentQuestion];
    if (question && answers[question.id]) {
      const timeTaken = Math.round((Date.now() - questionStartTime.current) / 1000);
      await submitAnswerMutation.mutateAsync({
        questionId: question.id,
        optionIds: answers[question.id],
        timeTaken,
      });
    }

    completeMutation.mutate();
  };

  // Format time
  const formatTime = (seconds: number) => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
  };

  // Loading state
  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="animate-spin w-8 h-8 border-4 border-primary-600 border-t-transparent rounded-full"></div>
      </div>
    );
  }

  // Pre-test screen
  if (!isStarted) {
    const test = data?.data;
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50 p-4">
        <div className="card max-w-lg w-full">
          <div className="text-center mb-6">
            <div className="w-16 h-16 mx-auto bg-primary-100 rounded-full flex items-center justify-center mb-4">
              <ClockIcon className="w-8 h-8 text-primary-600" />
            </div>
            <h1 className="text-2xl font-bold text-gray-900">{test?.title}</h1>
            <p className="text-gray-600 mt-2">{test?.description}</p>
          </div>

          <div className="bg-gray-50 rounded-xl p-4 mb-6">
            <h3 className="font-semibold text-gray-900 mb-3">Test Details</h3>
            <div className="grid grid-cols-2 gap-4 text-sm">
              <div>
                <p className="text-gray-500">Questions</p>
                <p className="font-semibold">{test?.totalQuestions}</p>
              </div>
              <div>
                <p className="text-gray-500">Duration</p>
                <p className="font-semibold">{test?.durationMinutes} minutes</p>
              </div>
              <div>
                <p className="text-gray-500">Passing Score</p>
                <p className="font-semibold">{test?.passingScore}%</p>
              </div>
              <div>
                <p className="text-gray-500">Type</p>
                <p className="font-semibold">Multiple Choice</p>
              </div>
            </div>
          </div>

          <div className="bg-amber-50 border border-amber-200 rounded-xl p-4 mb-6">
            <div className="flex items-start gap-2">
              <ExclamationTriangleIcon className="w-5 h-5 text-amber-600 flex-shrink-0 mt-0.5" />
              <div className="text-sm text-amber-800">
                <p className="font-semibold mb-1">Important Instructions:</p>
                <ul className="space-y-1">
                  <li>• The test will open in fullscreen mode</li>
                  <li>• Do not switch tabs or exit fullscreen</li>
                  <li>• 3 violations will auto-submit your test</li>
                  <li>• Ensure stable internet connection</li>
                  <li>• Timer starts immediately after clicking Start</li>
                </ul>
              </div>
            </div>
          </div>

          <div className="flex gap-3">
            <button
              onClick={() => navigate('/student/tests')}
              className="btn-outline flex-1"
            >
              Cancel
            </button>
            <button
              onClick={() => startMutation.mutate()}
              disabled={startMutation.isPending || !deviceFingerprint}
              className="btn-primary flex-1"
            >
              {startMutation.isPending ? 'Starting...' : 'Start Test'}
            </button>
          </div>
        </div>
      </div>
    );
  }

  // Test session
  const question = testData?.questions[currentQuestion];
  const selectedAnswers = question ? answers[question.id] || [] : [];
  const answeredCount = Object.keys(answers).length;

  return (
    <div className="fullscreen-mode test-mode bg-gray-50">
      {/* Warning overlay */}
      {showWarning && (
        <div className="fixed inset-0 z-50 bg-red-600 flex items-center justify-center">
          <div className="text-center text-white p-8">
            <ExclamationTriangleIcon className="w-16 h-16 mx-auto mb-4" />
            <h2 className="text-2xl font-bold mb-2">Violation Detected!</h2>
            <p className="mb-4">Exiting fullscreen is not allowed.</p>
            <p className="text-lg">Warnings: {warningCount.current}/3</p>
            <p className="text-sm mt-4">Returning to test...</p>
          </div>
        </div>
      )}

      {/* Header */}
      <header className="fixed top-0 left-0 right-0 bg-white border-b z-40 px-4 py-3">
        <div className="max-w-4xl mx-auto flex items-center justify-between">
          <div>
            <h1 className="font-semibold text-gray-900">{testData?.test.title}</h1>
            <p className="text-sm text-gray-500">
              Question {currentQuestion + 1} of {testData?.questions.length}
            </p>
          </div>
          
          <div className="flex items-center gap-4">
            {/* Timer */}
            <div className={`flex items-center gap-2 px-4 py-2 rounded-lg font-mono text-lg ${
              timeRemaining <= 60 ? 'bg-red-100 text-red-700' : 'bg-gray-100 text-gray-900'
            }`}>
              <ClockIcon className="w-5 h-5" />
              {formatTime(timeRemaining)}
            </div>

            {/* Anti-cheat flags indicator */}
            {antiCheatFlags.length > 0 && (
              <div className="bg-red-100 text-red-700 px-3 py-1 rounded-lg text-sm">
                {antiCheatFlags.length} violation{antiCheatFlags.length !== 1 ? 's' : ''}
              </div>
            )}
          </div>
        </div>
      </header>

      {/* Main content */}
      <main className="pt-20 pb-24 px-4">
        <div className="max-w-4xl mx-auto">
          {/* Question navigator */}
          <div className="card mb-4 p-3">
            <div className="flex flex-wrap gap-2">
              {testData?.questions.map((q, index) => (
                <button
                  key={q.id}
                  onClick={() => {
                    setCurrentQuestion(index);
                    questionStartTime.current = Date.now();
                  }}
                  className={`w-10 h-10 rounded-lg text-sm font-medium transition-colors ${
                    index === currentQuestion
                      ? 'bg-primary-600 text-white'
                      : answers[q.id]
                        ? 'bg-green-100 text-green-700'
                        : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
                  } ${flaggedQuestions.has(index) ? 'ring-2 ring-amber-500' : ''}`}
                >
                  {index + 1}
                </button>
              ))}
            </div>
            <div className="flex items-center gap-4 mt-3 text-sm text-gray-500">
              <span className="flex items-center gap-1">
                <div className="w-3 h-3 bg-green-100 rounded"></div>
                Answered ({answeredCount})
              </span>
              <span className="flex items-center gap-1">
                <div className="w-3 h-3 bg-gray-100 rounded"></div>
                Unanswered ({(testData?.questions.length || 0) - answeredCount})
              </span>
              <span className="flex items-center gap-1">
                <div className="w-3 h-3 border-2 border-amber-500 rounded"></div>
                Flagged ({flaggedQuestions.size})
              </span>
            </div>
          </div>

          {/* Question */}
          <div className="card">
            <div className="flex items-start justify-between mb-4">
              <span className="badge badge-info">Question {currentQuestion + 1}</span>
              <button
                onClick={toggleFlag}
                className={`flex items-center gap-1 text-sm ${
                  flaggedQuestions.has(currentQuestion)
                    ? 'text-amber-600'
                    : 'text-gray-400 hover:text-amber-600'
                }`}
              >
                <FlagIcon className="w-5 h-5" />
                {flaggedQuestions.has(currentQuestion) ? 'Flagged' : 'Flag for review'}
              </button>
            </div>

            <h2 className="text-lg font-medium text-gray-900 mb-6">
              {question?.text}
            </h2>

            {question?.imageUrl && (
              <img
                src={question.imageUrl}
                alt="Question illustration"
                className="max-w-md mx-auto mb-6 rounded-lg"
              />
            )}

            <div className="space-y-3">
              {question?.options.map((option, index) => (
                <button
                  key={option.id}
                  onClick={() => handleAnswerSelect(option.id)}
                  className={`w-full text-left p-4 rounded-xl border-2 transition-all ${
                    selectedAnswers.includes(option.id)
                      ? 'border-primary-500 bg-primary-50'
                      : 'border-gray-200 hover:border-gray-300 hover:bg-gray-50'
                  }`}
                >
                  <div className="flex items-center gap-3">
                    <span className={`w-8 h-8 rounded-full flex items-center justify-center text-sm font-medium ${
                      selectedAnswers.includes(option.id)
                        ? 'bg-primary-500 text-white'
                        : 'bg-gray-100 text-gray-600'
                    }`}>
                      {String.fromCharCode(65 + index)}
                    </span>
                    <span className="text-gray-900">{option.text}</span>
                    {selectedAnswers.includes(option.id) && (
                      <CheckCircleIcon className="w-5 h-5 text-primary-500 ml-auto" />
                    )}
                  </div>
                </button>
              ))}
            </div>
          </div>
        </div>
      </main>

      {/* Footer navigation */}
      <footer className="fixed bottom-0 left-0 right-0 bg-white border-t p-4 z-40">
        <div className="max-w-4xl mx-auto flex items-center justify-between">
          <button
            onClick={handlePrevQuestion}
            disabled={currentQuestion === 0}
            className="btn-outline flex items-center gap-2"
          >
            <ChevronLeftIcon className="w-5 h-5" />
            Previous
          </button>

          <div className="text-sm text-gray-500">
            {answeredCount} of {testData?.questions.length} answered
          </div>

          {currentQuestion === (testData?.questions.length || 0) - 1 ? (
            <button
              onClick={handleSubmit}
              disabled={completeMutation.isPending}
              className="btn-primary flex items-center gap-2"
            >
              {completeMutation.isPending ? 'Submitting...' : 'Submit Test'}
              <CheckCircleIcon className="w-5 h-5" />
            </button>
          ) : (
            <button
              onClick={handleNextQuestion}
              className="btn-primary flex items-center gap-2"
            >
              Next
              <ChevronRightIcon className="w-5 h-5" />
            </button>
          )}
        </div>
      </footer>
    </div>
  );
}

export default TestSession;
