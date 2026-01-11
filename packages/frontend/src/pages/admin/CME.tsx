import { useState } from 'react';
import { useQuery } from '@tanstack/react-query';
import { format, formatDuration, intervalToDuration } from 'date-fns';
import {
  BookOpenIcon,
  AcademicCapIcon,
  ClockIcon,
  CheckCircleIcon,
  UsersIcon,
  ChartBarIcon,
  DocumentTextIcon,
  EyeIcon,
  XMarkIcon,
  TrophyIcon,
  ArrowTrendingUpIcon,
} from '@heroicons/react/24/outline';
import api from '../../services/api';

interface CMEArticle {
  id: string;
  title: string;
  subtitle?: string;
  category_name: string;
  topic_name: string;
  level: string;
  cme_credits: number;
  estimated_reading_minutes: number;
  total_readers: number;
  completed_readers: number;
  avg_assessment_score: number;
  total_study_time_seconds: number;
  total_questions: number;
  is_published: boolean;
  created_at: string;
}

interface StudentProgress {
  id: string;
  student_id: string;
  matriculation_number: string;
  first_name: string;
  last_name: string;
  email: string;
  level: string;
  started_at: string | null;
  last_accessed_at: string | null;
  reading_completed: boolean;
  reading_completed_at: string | null;
  reading_progress_percent: number;
  time_spent_minutes: number;
  assessment_started_at: string | null;
  assessment_completed: boolean;
  assessment_completed_at: string | null;
  assessment_score: number | null;
  assessment_attempts: number;
  is_fully_completed: boolean;
  cme_credits_earned: number;
}

interface StudentSummary {
  student_id: string;
  matriculation_number: string;
  first_name: string;
  last_name: string;
  email: string;
  level: string;
  articles_started: number;
  articles_completed: number;
  total_credits: number;
  avg_assessment_score: number;
  total_study_seconds: number;
  last_study_activity: string | null;
}

interface CMEStats {
  total_articles: number;
  total_students_engaged: number;
  total_completions: number;
  total_credits_awarded: number;
  avg_assessment_score: number;
  total_study_hours: number;
  sessions_last_24h: number;
  sessions_last_7days: number;
}

export default function AdminCME() {
  const [activeTab, setActiveTab] = useState<'articles' | 'students' | 'sessions'>('articles');
  const [selectedArticle, setSelectedArticle] = useState<CMEArticle | null>(null);
  const [selectedStudent, setSelectedStudent] = useState<StudentSummary | null>(null);

  // Fetch CME statistics
  const { data: statsData, isLoading: statsLoading } = useQuery({
    queryKey: ['cme-admin-stats'],
    queryFn: async () => {
      const response = await api.get('/cme/admin/stats');
      return response.data;
    },
  });

  // Fetch articles
  const { data: articlesData, isLoading: articlesLoading } = useQuery({
    queryKey: ['cme-admin-articles'],
    queryFn: async () => {
      const response = await api.get('/cme/admin/articles');
      return response.data;
    },
  });

  // Fetch students
  const { data: studentsData, isLoading: studentsLoading } = useQuery({
    queryKey: ['cme-admin-students'],
    queryFn: async () => {
      const response = await api.get('/cme/admin/students');
      return response.data;
    },
  });

  // Fetch article progress when article is selected
  const { data: articleProgressData } = useQuery({
    queryKey: ['cme-article-progress', selectedArticle?.id],
    queryFn: async () => {
      const response = await api.get(`/cme/admin/articles/${selectedArticle!.id}/progress`);
      return response.data;
    },
    enabled: !!selectedArticle,
  });

  // Fetch student progress when student is selected
  const { data: studentProgressData } = useQuery({
    queryKey: ['cme-student-progress', selectedStudent?.student_id],
    queryFn: async () => {
      const response = await api.get(`/cme/admin/students/${selectedStudent!.student_id}/progress`);
      return response.data;
    },
    enabled: !!selectedStudent,
  });

  const stats: CMEStats = statsData?.data || {
    total_articles: 0,
    total_students_engaged: 0,
    total_completions: 0,
    total_credits_awarded: 0,
    avg_assessment_score: 0,
    total_study_hours: 0,
    sessions_last_24h: 0,
    sessions_last_7days: 0,
  };

  const articles: CMEArticle[] = articlesData?.data || [];
  const students: StudentSummary[] = studentsData?.data || [];
  const articleProgress: StudentProgress[] = articleProgressData?.data || [];
  const studentProgress = studentProgressData?.data || [];

  const formatTime = (seconds: number) => {
    if (!seconds || seconds < 60) return `${Math.round(seconds || 0)}s`;
    const duration = intervalToDuration({ start: 0, end: seconds * 1000 });
    return formatDuration(duration, { format: ['hours', 'minutes'] });
  };

  const getScoreColor = (score: number | null) => {
    if (score === null) return 'text-gray-400';
    if (score >= 80) return 'text-green-600';
    if (score >= 60) return 'text-yellow-600';
    return 'text-red-600';
  };

  const getProgressColor = (percent: number) => {
    if (percent >= 100) return 'bg-green-500';
    if (percent >= 50) return 'bg-yellow-500';
    return 'bg-blue-500';
  };

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-2xl font-bold text-gray-900">CME Study Module Management</h1>
        <p className="text-gray-600">Monitor student study progress and assessment performance</p>
      </div>

      {/* Statistics Cards */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="card bg-gradient-to-br from-blue-50 to-blue-100 border border-blue-200">
          <div className="flex items-center gap-4">
            <div className="p-3 bg-blue-200 rounded-xl">
              <BookOpenIcon className="w-6 h-6 text-blue-700" />
            </div>
            <div>
              <p className="text-sm text-blue-600">Total Articles</p>
              <p className="text-2xl font-bold text-blue-900">{stats.total_articles}</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-green-50 to-green-100 border border-green-200">
          <div className="flex items-center gap-4">
            <div className="p-3 bg-green-200 rounded-xl">
              <UsersIcon className="w-6 h-6 text-green-700" />
            </div>
            <div>
              <p className="text-sm text-green-600">Students Engaged</p>
              <p className="text-2xl font-bold text-green-900">{stats.total_students_engaged}</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-purple-50 to-purple-100 border border-purple-200">
          <div className="flex items-center gap-4">
            <div className="p-3 bg-purple-200 rounded-xl">
              <CheckCircleIcon className="w-6 h-6 text-purple-700" />
            </div>
            <div>
              <p className="text-sm text-purple-600">Completions</p>
              <p className="text-2xl font-bold text-purple-900">{stats.total_completions}</p>
            </div>
          </div>
        </div>

        <div className="card bg-gradient-to-br from-orange-50 to-orange-100 border border-orange-200">
          <div className="flex items-center gap-4">
            <div className="p-3 bg-orange-200 rounded-xl">
              <ClockIcon className="w-6 h-6 text-orange-700" />
            </div>
            <div>
              <p className="text-sm text-orange-600">Total Study Hours</p>
              <p className="text-2xl font-bold text-orange-900">{parseFloat(stats.total_study_hours?.toString() || '0').toFixed(1)}</p>
            </div>
          </div>
        </div>
      </div>

      {/* Secondary Stats */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="card">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Avg Assessment Score</p>
              <p className={`text-xl font-bold ${getScoreColor(stats.avg_assessment_score)}`}>
                {parseFloat(stats.avg_assessment_score?.toString() || '0').toFixed(1)}%
              </p>
            </div>
            <ChartBarIcon className="w-8 h-8 text-gray-300" />
          </div>
        </div>

        <div className="card">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Credits Awarded</p>
              <p className="text-xl font-bold text-primary-600">
                {parseFloat(stats.total_credits_awarded?.toString() || '0').toFixed(1)}
              </p>
            </div>
            <TrophyIcon className="w-8 h-8 text-gray-300" />
          </div>
        </div>

        <div className="card">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Sessions (24h)</p>
              <p className="text-xl font-bold text-gray-900">{stats.sessions_last_24h}</p>
            </div>
            <ArrowTrendingUpIcon className="w-8 h-8 text-gray-300" />
          </div>
        </div>

        <div className="card">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Sessions (7 days)</p>
              <p className="text-xl font-bold text-gray-900">{stats.sessions_last_7days}</p>
            </div>
            <DocumentTextIcon className="w-8 h-8 text-gray-300" />
          </div>
        </div>
      </div>

      {/* Tab Navigation */}
      <div className="border-b border-gray-200">
        <nav className="flex gap-4">
          {[
            { id: 'articles', label: 'Articles', icon: BookOpenIcon },
            { id: 'students', label: 'Students', icon: UsersIcon },
          ].map((tab) => (
            <button
              key={tab.id}
              onClick={() => setActiveTab(tab.id as any)}
              className={`flex items-center gap-2 px-4 py-3 border-b-2 font-medium text-sm transition-colors ${
                activeTab === tab.id
                  ? 'border-primary-500 text-primary-600'
                  : 'border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300'
              }`}
            >
              <tab.icon className="w-5 h-5" />
              {tab.label}
            </button>
          ))}
        </nav>
      </div>

      {/* Articles Tab */}
      {activeTab === 'articles' && (
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">CME Articles</h3>
          
          {articlesLoading ? (
            <div className="animate-pulse space-y-3">
              {[1, 2, 3, 4, 5].map((i) => (
                <div key={i} className="h-16 bg-gray-200 rounded"></div>
              ))}
            </div>
          ) : articles.length > 0 ? (
            <div className="overflow-x-auto">
              <table className="w-full text-sm">
                <thead>
                  <tr className="border-b border-gray-200">
                    <th className="text-left py-3 px-2 font-medium text-gray-600">Article</th>
                    <th className="text-left py-3 px-2 font-medium text-gray-600">Category</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Readers</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Completed</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Avg Score</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Study Time</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  {articles.map((article) => (
                    <tr key={article.id} className="border-b border-gray-100 hover:bg-gray-50">
                      <td className="py-3 px-2">
                        <div>
                          <p className="font-medium text-gray-900 truncate max-w-xs">{article.title}</p>
                          <p className="text-xs text-gray-500">{article.topic_name}</p>
                        </div>
                      </td>
                      <td className="py-3 px-2">
                        <span className="px-2 py-1 rounded-full text-xs font-medium bg-blue-100 text-blue-800">
                          {article.category_name}
                        </span>
                      </td>
                      <td className="py-3 px-2 text-center">
                        <span className="font-medium">{article.total_readers || 0}</span>
                      </td>
                      <td className="py-3 px-2 text-center">
                        <span className="font-medium text-green-600">{article.completed_readers || 0}</span>
                      </td>
                      <td className="py-3 px-2 text-center">
                        <span className={`font-medium ${getScoreColor(article.avg_assessment_score)}`}>
                          {article.avg_assessment_score ? `${parseFloat(article.avg_assessment_score.toString()).toFixed(1)}%` : '—'}
                        </span>
                      </td>
                      <td className="py-3 px-2 text-center text-gray-600">
                        {formatTime(article.total_study_time_seconds || 0)}
                      </td>
                      <td className="py-3 px-2 text-center">
                        <button
                          onClick={() => setSelectedArticle(article)}
                          className="p-2 text-primary-600 hover:bg-primary-50 rounded-lg"
                          title="View Progress"
                        >
                          <EyeIcon className="w-5 h-5" />
                        </button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          ) : (
            <div className="text-center py-8 text-gray-500">
              <BookOpenIcon className="w-12 h-12 mx-auto text-gray-300 mb-3" />
              <p>No articles found</p>
            </div>
          )}
        </div>
      )}

      {/* Students Tab */}
      {activeTab === 'students' && (
        <div className="card">
          <h3 className="font-semibold text-gray-900 mb-4">Student Study Activity</h3>
          
          {studentsLoading ? (
            <div className="animate-pulse space-y-3">
              {[1, 2, 3, 4, 5].map((i) => (
                <div key={i} className="h-16 bg-gray-200 rounded"></div>
              ))}
            </div>
          ) : students.length > 0 ? (
            <div className="overflow-x-auto">
              <table className="w-full text-sm">
                <thead>
                  <tr className="border-b border-gray-200">
                    <th className="text-left py-3 px-2 font-medium text-gray-600">Student</th>
                    <th className="text-left py-3 px-2 font-medium text-gray-600">Level</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Started</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Completed</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Credits</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Avg Score</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Study Time</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Last Active</th>
                    <th className="text-center py-3 px-2 font-medium text-gray-600">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  {students.map((student) => (
                    <tr key={student.student_id} className="border-b border-gray-100 hover:bg-gray-50">
                      <td className="py-3 px-2">
                        <div>
                          <p className="font-medium text-gray-900">{student.first_name} {student.last_name}</p>
                          <p className="text-xs text-gray-500">{student.matriculation_number}</p>
                        </div>
                      </td>
                      <td className="py-3 px-2">
                        <span className="px-2 py-1 rounded-full text-xs font-medium bg-gray-100 text-gray-800">
                          {student.level}
                        </span>
                      </td>
                      <td className="py-3 px-2 text-center">
                        <span className="font-medium">{student.articles_started || 0}</span>
                      </td>
                      <td className="py-3 px-2 text-center">
                        <span className="font-medium text-green-600">{student.articles_completed || 0}</span>
                      </td>
                      <td className="py-3 px-2 text-center">
                        <span className="font-medium text-primary-600">{parseFloat(student.total_credits?.toString() || '0').toFixed(1)}</span>
                      </td>
                      <td className="py-3 px-2 text-center">
                        <span className={`font-medium ${getScoreColor(student.avg_assessment_score)}`}>
                          {student.avg_assessment_score ? `${parseFloat(student.avg_assessment_score.toString()).toFixed(1)}%` : '—'}
                        </span>
                      </td>
                      <td className="py-3 px-2 text-center text-gray-600">
                        {formatTime(student.total_study_seconds || 0)}
                      </td>
                      <td className="py-3 px-2 text-center text-gray-500 text-xs">
                        {student.last_study_activity 
                          ? format(new Date(student.last_study_activity), 'MMM d, h:mm a')
                          : '—'}
                      </td>
                      <td className="py-3 px-2 text-center">
                        <button
                          onClick={() => setSelectedStudent(student)}
                          className="p-2 text-primary-600 hover:bg-primary-50 rounded-lg"
                          title="View Details"
                        >
                          <EyeIcon className="w-5 h-5" />
                        </button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          ) : (
            <div className="text-center py-8 text-gray-500">
              <UsersIcon className="w-12 h-12 mx-auto text-gray-300 mb-3" />
              <p>No students have started studying yet</p>
            </div>
          )}
        </div>
      )}

      {/* Article Progress Modal */}
      {selectedArticle && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/50">
          <div className="bg-white rounded-xl shadow-xl w-full max-w-4xl max-h-[90vh] overflow-hidden">
            <div className="flex items-center justify-between p-4 border-b">
              <div>
                <h3 className="font-semibold text-lg text-gray-900">{selectedArticle.title}</h3>
                <p className="text-sm text-gray-500">Student Progress Details</p>
              </div>
              <button
                onClick={() => setSelectedArticle(null)}
                className="p-2 hover:bg-gray-100 rounded-lg"
              >
                <XMarkIcon className="w-5 h-5" />
              </button>
            </div>
            
            <div className="p-4 overflow-y-auto max-h-[70vh]">
              {/* Article Stats Summary */}
              <div className="grid grid-cols-4 gap-4 mb-6">
                <div className="p-3 bg-blue-50 rounded-lg text-center">
                  <p className="text-2xl font-bold text-blue-700">{selectedArticle.total_readers || 0}</p>
                  <p className="text-xs text-blue-600">Total Readers</p>
                </div>
                <div className="p-3 bg-green-50 rounded-lg text-center">
                  <p className="text-2xl font-bold text-green-700">{selectedArticle.completed_readers || 0}</p>
                  <p className="text-xs text-green-600">Completed</p>
                </div>
                <div className="p-3 bg-purple-50 rounded-lg text-center">
                  <p className={`text-2xl font-bold ${getScoreColor(selectedArticle.avg_assessment_score)}`}>
                    {selectedArticle.avg_assessment_score ? `${parseFloat(selectedArticle.avg_assessment_score.toString()).toFixed(1)}%` : '—'}
                  </p>
                  <p className="text-xs text-purple-600">Avg Score</p>
                </div>
                <div className="p-3 bg-orange-50 rounded-lg text-center">
                  <p className="text-2xl font-bold text-orange-700">{selectedArticle.total_questions || 0}</p>
                  <p className="text-xs text-orange-600">Questions</p>
                </div>
              </div>

              {/* Progress Table */}
              {articleProgress.length > 0 ? (
                <table className="w-full text-sm">
                  <thead>
                    <tr className="border-b border-gray-200">
                      <th className="text-left py-2 px-2 font-medium text-gray-600">Student</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Started</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Reading</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Time Spent</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Assessment</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Score</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    {articleProgress.map((progress) => (
                      <tr key={progress.id} className="border-b border-gray-100">
                        <td className="py-2 px-2">
                          <p className="font-medium">{progress.first_name} {progress.last_name}</p>
                          <p className="text-xs text-gray-500">{progress.matriculation_number}</p>
                        </td>
                        <td className="py-2 px-2 text-center text-xs text-gray-600">
                          {progress.started_at ? format(new Date(progress.started_at), 'MMM d, h:mm a') : '—'}
                        </td>
                        <td className="py-2 px-2">
                          <div className="flex items-center gap-2">
                            <div className="flex-grow h-2 bg-gray-200 rounded-full overflow-hidden">
                              <div 
                                className={`h-full ${getProgressColor(progress.reading_progress_percent)}`}
                                style={{ width: `${progress.reading_progress_percent}%` }}
                              />
                            </div>
                            <span className="text-xs text-gray-600">{Math.round(progress.reading_progress_percent)}%</span>
                          </div>
                        </td>
                        <td className="py-2 px-2 text-center text-gray-600">
                          {progress.time_spent_minutes ? `${Math.round(progress.time_spent_minutes)} min` : '—'}
                        </td>
                        <td className="py-2 px-2 text-center">
                          {progress.assessment_completed ? (
                            <CheckCircleIcon className="w-5 h-5 text-green-500 mx-auto" />
                          ) : progress.assessment_started_at ? (
                            <span className="text-xs text-yellow-600">In Progress</span>
                          ) : (
                            <span className="text-xs text-gray-400">Not Started</span>
                          )}
                        </td>
                        <td className="py-2 px-2 text-center">
                          <span className={`font-medium ${getScoreColor(progress.assessment_score)}`}>
                            {progress.assessment_score !== null ? `${progress.assessment_score.toFixed(1)}%` : '—'}
                          </span>
                        </td>
                        <td className="py-2 px-2 text-center">
                          {progress.is_fully_completed ? (
                            <span className="px-2 py-1 rounded-full text-xs font-medium bg-green-100 text-green-800">
                              Completed
                            </span>
                          ) : (
                            <span className="px-2 py-1 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                              In Progress
                            </span>
                          )}
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              ) : (
                <div className="text-center py-8 text-gray-500">
                  <UsersIcon className="w-12 h-12 mx-auto text-gray-300 mb-3" />
                  <p>No students have started this article yet</p>
                </div>
              )}
            </div>
          </div>
        </div>
      )}

      {/* Student Progress Modal */}
      {selectedStudent && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/50">
          <div className="bg-white rounded-xl shadow-xl w-full max-w-4xl max-h-[90vh] overflow-hidden">
            <div className="flex items-center justify-between p-4 border-b">
              <div>
                <h3 className="font-semibold text-lg text-gray-900">
                  {selectedStudent.first_name} {selectedStudent.last_name}
                </h3>
                <p className="text-sm text-gray-500">
                  {selectedStudent.matriculation_number} • {selectedStudent.level}
                </p>
              </div>
              <button
                onClick={() => setSelectedStudent(null)}
                className="p-2 hover:bg-gray-100 rounded-lg"
              >
                <XMarkIcon className="w-5 h-5" />
              </button>
            </div>
            
            <div className="p-4 overflow-y-auto max-h-[70vh]">
              {/* Student Stats Summary */}
              <div className="grid grid-cols-4 gap-4 mb-6">
                <div className="p-3 bg-blue-50 rounded-lg text-center">
                  <p className="text-2xl font-bold text-blue-700">{selectedStudent.articles_started || 0}</p>
                  <p className="text-xs text-blue-600">Articles Started</p>
                </div>
                <div className="p-3 bg-green-50 rounded-lg text-center">
                  <p className="text-2xl font-bold text-green-700">{selectedStudent.articles_completed || 0}</p>
                  <p className="text-xs text-green-600">Completed</p>
                </div>
                <div className="p-3 bg-purple-50 rounded-lg text-center">
                  <p className="text-2xl font-bold text-purple-700">
                    {parseFloat(selectedStudent.total_credits?.toString() || '0').toFixed(1)}
                  </p>
                  <p className="text-xs text-purple-600">Credits Earned</p>
                </div>
                <div className="p-3 bg-orange-50 rounded-lg text-center">
                  <p className="text-2xl font-bold text-orange-700">
                    {formatTime(selectedStudent.total_study_seconds || 0)}
                  </p>
                  <p className="text-xs text-orange-600">Total Study Time</p>
                </div>
              </div>

              {/* Progress Table */}
              {studentProgress.length > 0 ? (
                <table className="w-full text-sm">
                  <thead>
                    <tr className="border-b border-gray-200">
                      <th className="text-left py-2 px-2 font-medium text-gray-600">Article</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Started</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Reading</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Time</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Score</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Credits</th>
                      <th className="text-center py-2 px-2 font-medium text-gray-600">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    {studentProgress.map((progress: any) => (
                      <tr key={progress.id} className="border-b border-gray-100">
                        <td className="py-2 px-2">
                          <p className="font-medium truncate max-w-xs">{progress.article_title}</p>
                          <p className="text-xs text-gray-500">{progress.category_name}</p>
                        </td>
                        <td className="py-2 px-2 text-center text-xs text-gray-600">
                          {progress.started_at ? format(new Date(progress.started_at), 'MMM d') : '—'}
                        </td>
                        <td className="py-2 px-2">
                          <div className="flex items-center gap-2">
                            <div className="flex-grow h-2 bg-gray-200 rounded-full overflow-hidden">
                              <div 
                                className={`h-full ${getProgressColor(progress.reading_progress_percent)}`}
                                style={{ width: `${progress.reading_progress_percent}%` }}
                              />
                            </div>
                            <span className="text-xs text-gray-600">{Math.round(progress.reading_progress_percent)}%</span>
                          </div>
                        </td>
                        <td className="py-2 px-2 text-center text-gray-600">
                          {progress.time_spent_minutes ? `${Math.round(progress.time_spent_minutes)} min` : '—'}
                        </td>
                        <td className="py-2 px-2 text-center">
                          <span className={`font-medium ${getScoreColor(progress.assessment_score)}`}>
                            {progress.assessment_score !== null ? `${progress.assessment_score.toFixed(1)}%` : '—'}
                          </span>
                        </td>
                        <td className="py-2 px-2 text-center text-primary-600 font-medium">
                          {progress.cme_credits_earned || 0}
                        </td>
                        <td className="py-2 px-2 text-center">
                          {progress.is_fully_completed ? (
                            <span className="px-2 py-1 rounded-full text-xs font-medium bg-green-100 text-green-800">
                              Done
                            </span>
                          ) : (
                            <span className="px-2 py-1 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                              Active
                            </span>
                          )}
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              ) : (
                <div className="text-center py-8 text-gray-500">
                  <BookOpenIcon className="w-12 h-12 mx-auto text-gray-300 mb-3" />
                  <p>This student hasn't started any articles yet</p>
                </div>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
