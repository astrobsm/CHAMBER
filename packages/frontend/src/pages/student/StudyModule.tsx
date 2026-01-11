import { useState } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useNavigate, useParams } from 'react-router-dom';
import {
  BookOpenIcon,
  AcademicCapIcon,
  CheckCircleIcon,
  ClockIcon,
  ChartBarIcon,
  DocumentTextIcon,
  PlayIcon,
  ArrowLeftIcon,
  ArrowRightIcon,
  LockClosedIcon,
  StarIcon,
} from '@heroicons/react/24/outline';
import { CheckCircleIcon as CheckCircleSolidIcon } from '@heroicons/react/24/solid';
import toast from 'react-hot-toast';
import api from '../../services/api';

// API service for study module
const studyApi = {
  getArticles: async () => {
    const response = await api.get('/study/articles');
    return response.data;
  },
  getArticle: async (id: string) => {
    const response = await api.get(`/study/articles/${id}`);
    return response.data;
  },
  updateProgress: async (id: string, data: any) => {
    const response = await api.post(`/study/articles/${id}/progress`, data);
    return response.data;
  },
  getAssessment: async (id: string) => {
    const response = await api.get(`/study/articles/${id}/assessment`);
    return response.data;
  },
  submitAssessment: async (id: string, answers: any[]) => {
    const response = await api.post(`/study/articles/${id}/assessment/submit`, { answers });
    return response.data;
  },
  getProgress: async () => {
    const response = await api.get('/study/progress');
    return response.data;
  }
};

// Main Study Module Dashboard
export function StudyModule() {
  const navigate = useNavigate();
  const { data, isLoading } = useQuery({
    queryKey: ['study-articles'],
    queryFn: studyApi.getArticles
  });

  const { data: progressData } = useQuery({
    queryKey: ['study-progress'],
    queryFn: studyApi.getProgress
  });

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

  const articles = data?.data?.articles || [];
  const summary = data?.data?.summary || {};
  const progress = progressData?.data?.summary || {};

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Study Module</h1>
          <p className="text-gray-600">Comprehensive CME articles with self-assessment</p>
        </div>
        <div className="flex items-center gap-2 bg-primary-50 px-4 py-2 rounded-lg">
          <AcademicCapIcon className="w-5 h-5 text-primary-600" />
          <span className="text-primary-700 font-medium">
            {summary.earnedCredits?.toFixed(1) || 0} / {summary.totalCredits?.toFixed(1) || 0} CME Credits
          </span>
        </div>
      </div>

      {/* Progress Summary */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="card bg-gradient-to-br from-primary-800 to-primary-600 text-white">
          <div className="flex items-center gap-4">
            <div className="w-14 h-14 bg-white/20 rounded-xl flex items-center justify-center">
              <BookOpenIcon className="w-7 h-7" />
            </div>
            <div>
              <p className="text-primary-200 text-sm">Articles Available</p>
              <p className="text-2xl font-bold">{summary.totalArticles || 0}</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-green-600 to-green-500 text-white">
          <div className="flex items-center gap-4">
            <div className="w-14 h-14 bg-white/20 rounded-xl flex items-center justify-center">
              <CheckCircleIcon className="w-7 h-7" />
            </div>
            <div>
              <p className="text-green-100 text-sm">Completed</p>
              <p className="text-2xl font-bold">{summary.completedArticles || 0}</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-blue-600 to-blue-500 text-white">
          <div className="flex items-center gap-4">
            <div className="w-14 h-14 bg-white/20 rounded-xl flex items-center justify-center">
              <ChartBarIcon className="w-7 h-7" />
            </div>
            <div>
              <p className="text-blue-100 text-sm">Progress</p>
              <p className="text-2xl font-bold">{summary.progressPercent || 0}%</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-purple-600 to-purple-500 text-white">
          <div className="flex items-center gap-4">
            <div className="w-14 h-14 bg-white/20 rounded-xl flex items-center justify-center">
              <ClockIcon className="w-7 h-7" />
            </div>
            <div>
              <p className="text-purple-100 text-sm">Study Time</p>
              <p className="text-2xl font-bold">
                {Math.round((progress.total_time_seconds || 0) / 3600)}h
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Articles List */}
      <div className="card">
        <h2 className="text-lg font-semibold text-gray-900 mb-4">CME Articles</h2>
        <div className="space-y-4">
          {articles.map((article: any) => (
            <ArticleCard 
              key={article.id} 
              article={article} 
              onClick={() => navigate(`/student/study/${article.id}`)}
            />
          ))}
          {articles.length === 0 && (
            <div className="text-center py-12 text-gray-500">
              <BookOpenIcon className="w-16 h-16 mx-auto mb-4 opacity-50" />
              <p>No articles available yet</p>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

// Article Card Component
function ArticleCard({ article, onClick }: { article: any; onClick: () => void }) {
  const getDifficultyColor = (level: string) => {
    switch (level) {
      case 'easy': return 'bg-green-100 text-green-700';
      case 'medium': return 'bg-yellow-100 text-yellow-700';
      case 'hard': return 'bg-red-100 text-red-700';
      default: return 'bg-gray-100 text-gray-700';
    }
  };

  return (
    <div 
      className="border border-gray-200 rounded-lg p-4 hover:border-primary-300 hover:bg-primary-50/30 transition-all cursor-pointer"
      onClick={onClick}
    >
      <div className="flex items-start justify-between">
        <div className="flex-1">
          <div className="flex items-center gap-2 mb-2">
            <span className="text-sm font-medium text-primary-600">{article.topic_name}</span>
            <span className={`px-2 py-0.5 rounded-full text-xs font-medium ${getDifficultyColor(article.difficulty_level)}`}>
              {article.difficulty_level}
            </span>
            {article.completed && (
              <CheckCircleSolidIcon className="w-5 h-5 text-green-500" />
            )}
          </div>
          <h3 className="font-semibold text-gray-900">{article.title}</h3>
          {article.subtitle && (
            <p className="text-sm text-gray-500 mt-1">{article.subtitle}</p>
          )}
          <div className="flex items-center gap-4 mt-3 text-sm text-gray-500">
            <span className="flex items-center gap-1">
              <ClockIcon className="w-4 h-4" />
              {article.estimated_reading_minutes} min read
            </span>
            <span className="flex items-center gap-1">
              <AcademicCapIcon className="w-4 h-4" />
              {article.cme_credits} CME credit{article.cme_credits > 1 ? 's' : ''}
            </span>
            <span className="flex items-center gap-1">
              <DocumentTextIcon className="w-4 h-4" />
              {article.question_count} questions
            </span>
          </div>
        </div>
        <div className="ml-4">
          {article.started && !article.completed ? (
            <div className="text-center">
              <div className="w-16 h-16 relative">
                <svg className="w-16 h-16 transform -rotate-90">
                  <circle
                    cx="32" cy="32" r="28"
                    stroke="#e5e7eb" strokeWidth="4" fill="none"
                  />
                  <circle
                    cx="32" cy="32" r="28"
                    stroke="#3b82f6" strokeWidth="4" fill="none"
                    strokeDasharray={`${(article.reading_progress / 100) * 176} 176`}
                  />
                </svg>
                <span className="absolute inset-0 flex items-center justify-center text-sm font-medium text-gray-700">
                  {Math.round(article.reading_progress)}%
                </span>
              </div>
            </div>
          ) : article.completed ? (
            <div className="flex flex-col items-center text-green-600">
              <CheckCircleSolidIcon className="w-10 h-10" />
              <span className="text-xs mt-1">
                Score: {Math.round(article.assessment_score)}%
              </span>
            </div>
          ) : (
            <button className="btn-primary flex items-center gap-2">
              <PlayIcon className="w-4 h-4" />
              Start
            </button>
          )}
        </div>
      </div>
    </div>
  );
}

// Article Viewer Component
export function ArticleViewer() {
  const { id } = useParams<{ id: string }>();
  const navigate = useNavigate();
  const queryClient = useQueryClient();
  const [currentSection, setCurrentSection] = useState(0);
  const [showAssessment, setShowAssessment] = useState(false);

  const { data, isLoading } = useQuery({
    queryKey: ['study-article', id],
    queryFn: () => studyApi.getArticle(id!),
    enabled: !!id
  });

  const progressMutation = useMutation({
    mutationFn: (data: any) => studyApi.updateProgress(id!, data),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['study-article', id] });
    }
  });

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-3/4"></div>
        <div className="h-64 bg-gray-200 rounded-xl"></div>
      </div>
    );
  }

  const article = data?.data?.article;
  const sections = data?.data?.sections || [];
  const references = data?.data?.references || [];
  const progress = data?.data?.progress;

  if (!article) {
    return (
      <div className="text-center py-12">
        <p className="text-gray-500">Article not found</p>
        <button 
          className="btn-primary mt-4"
          onClick={() => navigate('/student/study')}
        >
          Back to Study Module
        </button>
      </div>
    );
  }

  const handleNextSection = () => {
    if (currentSection < sections.length - 1) {
      setCurrentSection(currentSection + 1);
      const progressPercent = ((currentSection + 2) / sections.length) * 100;
      progressMutation.mutate({ progress_percent: progressPercent });
    }
  };

  const handlePrevSection = () => {
    if (currentSection > 0) {
      setCurrentSection(currentSection - 1);
    }
  };

  const handleCompleteReading = () => {
    progressMutation.mutate({ progress_percent: 100 });
    setShowAssessment(true);
  };

  if (showAssessment) {
    return <SelfAssessment articleId={id!} onBack={() => setShowAssessment(false)} />;
  }

  return (
    <div className="max-w-4xl mx-auto">
      {/* Header */}
      <div className="mb-6">
        <button 
          className="flex items-center gap-2 text-gray-600 hover:text-primary-600 mb-4"
          onClick={() => navigate('/student/study')}
        >
          <ArrowLeftIcon className="w-4 h-4" />
          Back to Study Module
        </button>
        <div className="flex items-center gap-2 text-sm text-primary-600 mb-2">
          <span>{article.topic_name}</span>
          <span>•</span>
          <span>{article.cme_credits} CME Credits</span>
        </div>
        <h1 className="text-2xl font-bold text-gray-900">{article.title}</h1>
        {article.subtitle && (
          <p className="text-lg text-gray-600 mt-1">{article.subtitle}</p>
        )}
        <p className="text-sm text-gray-500 mt-2">
          By {article.authors} • {article.estimated_reading_minutes} min read
        </p>
      </div>

      {/* Progress Bar */}
      <div className="mb-6">
        <div className="flex items-center justify-between text-sm text-gray-600 mb-2">
          <span>Progress</span>
          <span>{currentSection + 1} of {sections.length} sections</span>
        </div>
        <div className="w-full bg-gray-200 rounded-full h-2">
          <div 
            className="bg-primary-600 h-2 rounded-full transition-all"
            style={{ width: `${((currentSection + 1) / sections.length) * 100}%` }}
          />
        </div>
      </div>

      {/* Content */}
      <div className="card mb-6">
        {sections[currentSection] && (
          <div>
            <h2 className="text-xl font-semibold text-gray-900 mb-4 capitalize">
              {sections[currentSection].title || sections[currentSection].section_type.replace('_', ' ')}
            </h2>
            <div 
              className="prose prose-primary max-w-none"
              dangerouslySetInnerHTML={{ __html: formatContent(sections[currentSection].content) }}
            />
          </div>
        )}
      </div>

      {/* Navigation */}
      <div className="flex items-center justify-between">
        <button 
          className="btn-secondary flex items-center gap-2"
          onClick={handlePrevSection}
          disabled={currentSection === 0}
        >
          <ArrowLeftIcon className="w-4 h-4" />
          Previous
        </button>

        {currentSection === sections.length - 1 ? (
          <button 
            className="btn-primary flex items-center gap-2"
            onClick={handleCompleteReading}
          >
            <AcademicCapIcon className="w-5 h-5" />
            Take Self-Assessment
          </button>
        ) : (
          <button 
            className="btn-primary flex items-center gap-2"
            onClick={handleNextSection}
          >
            Next
            <ArrowRightIcon className="w-4 h-4" />
          </button>
        )}
      </div>

      {/* Table of Contents */}
      <div className="mt-8 card bg-gray-50">
        <h3 className="font-semibold text-gray-900 mb-3">Table of Contents</h3>
        <div className="space-y-2">
          {sections.map((section: any, index: number) => (
            <button
              key={section.id}
              className={`w-full text-left px-3 py-2 rounded-lg transition-colors ${
                index === currentSection 
                  ? 'bg-primary-100 text-primary-700' 
                  : index < currentSection
                  ? 'text-green-600 hover:bg-gray-100'
                  : 'text-gray-600 hover:bg-gray-100'
              }`}
              onClick={() => setCurrentSection(index)}
            >
              <span className="flex items-center gap-2">
                {index < currentSection && <CheckCircleSolidIcon className="w-4 h-4" />}
                <span className="capitalize">
                  {section.title || section.section_type.replace('_', ' ')}
                </span>
              </span>
            </button>
          ))}
        </div>
      </div>

      {/* References */}
      {references.length > 0 && (
        <div className="mt-8 card">
          <h3 className="font-semibold text-gray-900 mb-3">References</h3>
          <ol className="list-decimal list-inside space-y-2 text-sm text-gray-600">
            {references.map((ref: any) => (
              <li key={ref.reference_number}>
                {ref.citation}
                {ref.doi && (
                  <a 
                    href={`https://doi.org/${ref.doi}`} 
                    target="_blank" 
                    rel="noopener noreferrer"
                    className="text-primary-600 hover:underline ml-2"
                  >
                    [DOI]
                  </a>
                )}
              </li>
            ))}
          </ol>
        </div>
      )}
    </div>
  );
}

// Self-Assessment Component
function SelfAssessment({ articleId, onBack }: { articleId: string; onBack: () => void }) {
  const navigate = useNavigate();
  const queryClient = useQueryClient();
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [answers, setAnswers] = useState<Record<string, string>>({});
  const [submitted, setSubmitted] = useState(false);
  const [results, setResults] = useState<any>(null);

  const { data, isLoading } = useQuery({
    queryKey: ['study-assessment', articleId],
    queryFn: () => studyApi.getAssessment(articleId)
  });

  const submitMutation = useMutation({
    mutationFn: (answers: any[]) => studyApi.submitAssessment(articleId, answers),
    onSuccess: (data) => {
      setResults(data.data);
      setSubmitted(true);
      queryClient.invalidateQueries({ queryKey: ['study-articles'] });
      queryClient.invalidateQueries({ queryKey: ['study-progress'] });
      toast.success(`Assessment completed! Score: ${Math.round(data.data.score)}%`);
    },
    onError: () => {
      toast.error('Failed to submit assessment');
    }
  });

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/2"></div>
        <div className="h-64 bg-gray-200 rounded-xl"></div>
      </div>
    );
  }

  const questions = data?.data?.questions || [];
  const totalQuestions = questions.length;
  const answeredCount = Object.keys(answers).length;

  const handleSelectAnswer = (questionId: string, option: string) => {
    if (!submitted) {
      setAnswers(prev => ({ ...prev, [questionId]: option }));
    }
  };

  const handleSubmit = () => {
    if (answeredCount < totalQuestions) {
      toast.error('Please answer all questions before submitting');
      return;
    }

    const formattedAnswers = Object.entries(answers).map(([question_id, selected_option]) => ({
      question_id,
      selected_option
    }));

    submitMutation.mutate(formattedAnswers);
  };

  if (submitted && results) {
    return (
      <div className="max-w-4xl mx-auto">
        <div className="card text-center mb-6">
          <div className={`w-24 h-24 mx-auto rounded-full flex items-center justify-center mb-4 ${
            results.passed ? 'bg-green-100' : 'bg-red-100'
          }`}>
            {results.passed ? (
              <CheckCircleSolidIcon className="w-12 h-12 text-green-600" />
            ) : (
              <span className="text-4xl">😔</span>
            )}
          </div>
          <h2 className="text-2xl font-bold text-gray-900 mb-2">
            {results.passed ? 'Congratulations!' : 'Keep Learning!'}
          </h2>
          <p className="text-gray-600 mb-4">
            You scored <span className="font-bold text-2xl">{Math.round(results.score)}%</span>
            <br />
            ({results.correctCount} out of {results.totalQuestions} correct)
          </p>
          {results.passed && (
            <div className="bg-green-50 border border-green-200 rounded-lg p-4 inline-block">
              <StarIcon className="w-6 h-6 text-green-600 inline mr-2" />
              <span className="text-green-700 font-medium">
                You earned {results.cmeCreditsEarned} CME credit(s)!
              </span>
            </div>
          )}
          {!results.passed && (
            <p className="text-sm text-gray-500 mt-2">
              You need 70% to pass. Review the material and try again.
            </p>
          )}
        </div>

        {/* Review Answers */}
        <div className="card">
          <h3 className="text-lg font-semibold text-gray-900 mb-4">Review Answers</h3>
          <div className="space-y-6">
            {results.results.map((result: any, index: number) => {
              const question = questions.find((q: any) => q.id === result.question_id);
              return (
                <div key={result.question_id} className={`p-4 rounded-lg border ${
                  result.is_correct ? 'bg-green-50 border-green-200' : 'bg-red-50 border-red-200'
                }`}>
                  <p className="font-medium text-gray-900 mb-3">
                    {index + 1}. {question?.question_text}
                  </p>
                  <div className="grid grid-cols-1 gap-2 mb-3">
                    {['A', 'B', 'C', 'D', 'E'].map(opt => {
                      const optionText = question?.[`option_${opt.toLowerCase()}`];
                      if (!optionText) return null;
                      const isSelected = result.selected_option === opt;
                      const isCorrect = result.correct_option === opt;
                      return (
                        <div
                          key={opt}
                          className={`p-2 rounded border ${
                            isCorrect 
                              ? 'bg-green-100 border-green-300' 
                              : isSelected 
                              ? 'bg-red-100 border-red-300'
                              : 'bg-white border-gray-200'
                          }`}
                        >
                          <span className="font-medium mr-2">{opt}.</span>
                          {optionText}
                          {isCorrect && <span className="ml-2 text-green-600">✓ Correct</span>}
                          {isSelected && !isCorrect && <span className="ml-2 text-red-600">✗ Your answer</span>}
                        </div>
                      );
                    })}
                  </div>
                  <div className="bg-white p-3 rounded border border-gray-200">
                    <p className="text-sm font-medium text-gray-700 mb-1">Explanation:</p>
                    <p className="text-sm text-gray-600">{result.explanation}</p>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        <div className="flex justify-center gap-4 mt-6">
          <button 
            className="btn-secondary"
            onClick={() => navigate('/student/study')}
          >
            Back to Study Module
          </button>
          {!results.passed && (
            <button 
              className="btn-primary"
              onClick={onBack}
            >
              Review Article
            </button>
          )}
        </div>
      </div>
    );
  }

  const question = questions[currentQuestion];

  return (
    <div className="max-w-4xl mx-auto">
      <div className="mb-6">
        <button 
          className="flex items-center gap-2 text-gray-600 hover:text-primary-600 mb-4"
          onClick={onBack}
        >
          <ArrowLeftIcon className="w-4 h-4" />
          Back to Article
        </button>
        <h1 className="text-2xl font-bold text-gray-900">Self-Assessment</h1>
        <p className="text-gray-600">Answer all questions to complete this article</p>
      </div>

      {/* Progress */}
      <div className="mb-6">
        <div className="flex items-center justify-between text-sm text-gray-600 mb-2">
          <span>Question {currentQuestion + 1} of {totalQuestions}</span>
          <span>{answeredCount} answered</span>
        </div>
        <div className="w-full bg-gray-200 rounded-full h-2">
          <div 
            className="bg-primary-600 h-2 rounded-full transition-all"
            style={{ width: `${((currentQuestion + 1) / totalQuestions) * 100}%` }}
          />
        </div>
      </div>

      {/* Question */}
      {question && (
        <div className="card mb-6">
          <p className="font-medium text-gray-900 mb-4 text-lg">{question.question_text}</p>
          <div className="space-y-3">
            {['A', 'B', 'C', 'D', 'E'].map(opt => {
              const optionText = question[`option_${opt.toLowerCase()}`];
              if (!optionText) return null;
              const isSelected = answers[question.id] === opt;
              return (
                <button
                  key={opt}
                  className={`w-full p-4 text-left rounded-lg border transition-all ${
                    isSelected 
                      ? 'bg-primary-50 border-primary-500 ring-2 ring-primary-500'
                      : 'bg-white border-gray-200 hover:border-primary-300 hover:bg-gray-50'
                  }`}
                  onClick={() => handleSelectAnswer(question.id, opt)}
                >
                  <span className={`inline-flex items-center justify-center w-8 h-8 rounded-full mr-3 ${
                    isSelected ? 'bg-primary-600 text-white' : 'bg-gray-100 text-gray-600'
                  }`}>
                    {opt}
                  </span>
                  {optionText}
                </button>
              );
            })}
          </div>
        </div>
      )}

      {/* Navigation */}
      <div className="flex items-center justify-between">
        <button 
          className="btn-secondary flex items-center gap-2"
          onClick={() => setCurrentQuestion(Math.max(0, currentQuestion - 1))}
          disabled={currentQuestion === 0}
        >
          <ArrowLeftIcon className="w-4 h-4" />
          Previous
        </button>

        {currentQuestion === totalQuestions - 1 ? (
          <button 
            className="btn-primary flex items-center gap-2"
            onClick={handleSubmit}
            disabled={submitMutation.isPending}
          >
            {submitMutation.isPending ? 'Submitting...' : 'Submit Assessment'}
          </button>
        ) : (
          <button 
            className="btn-primary flex items-center gap-2"
            onClick={() => setCurrentQuestion(Math.min(totalQuestions - 1, currentQuestion + 1))}
          >
            Next
            <ArrowRightIcon className="w-4 h-4" />
          </button>
        )}
      </div>

      {/* Question Navigator */}
      <div className="mt-8 card bg-gray-50">
        <h3 className="font-semibold text-gray-900 mb-3">Question Navigator</h3>
        <div className="flex flex-wrap gap-2">
          {questions.map((q: any, index: number) => (
            <button
              key={q.id}
              className={`w-10 h-10 rounded-lg font-medium transition-all ${
                index === currentQuestion
                  ? 'bg-primary-600 text-white'
                  : answers[q.id]
                  ? 'bg-green-100 text-green-700 border border-green-300'
                  : 'bg-white text-gray-600 border border-gray-200 hover:border-primary-300'
              }`}
              onClick={() => setCurrentQuestion(index)}
            >
              {index + 1}
            </button>
          ))}
        </div>
      </div>
    </div>
  );
}

// Helper function to format markdown/HTML content
function formatContent(content: string): string {
  if (!content) return '';
  
  // Convert markdown-style formatting to HTML
  let html = content
    .replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>')
    .replace(/\*(.*?)\*/g, '<em>$1</em>')
    .replace(/^### (.*$)/gm, '<h3 class="text-lg font-semibold text-gray-900 mt-4 mb-2">$1</h3>')
    .replace(/^## (.*$)/gm, '<h2 class="text-xl font-semibold text-gray-900 mt-6 mb-3">$1</h2>')
    .replace(/^# (.*$)/gm, '<h1 class="text-2xl font-bold text-gray-900 mt-6 mb-4">$1</h1>')
    .replace(/^\- (.*$)/gm, '<li class="ml-4">$1</li>')
    .replace(/^\d+\. (.*$)/gm, '<li class="ml-4 list-decimal">$1</li>')
    .replace(/\n\n/g, '</p><p class="mb-4">')
    .replace(/\n/g, '<br />');

  return `<p class="mb-4">${html}</p>`;
}

export default StudyModule;
