import { useState, useRef } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import {
  PlusIcon,
  ArrowUpTrayIcon,
  ArrowDownTrayIcon,
  MagnifyingGlassIcon,
  FunnelIcon,
  QuestionMarkCircleIcon,
  TrashIcon,
  PencilIcon,
  DocumentDuplicateIcon,
  CheckCircleIcon,
  XCircleIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';
import { questionsApi, rotationsApi } from '../../services/api';

interface Question {
  id: string;
  question_text: string;
  option_a: string;
  option_b: string;
  option_c: string;
  option_d: string;
  option_e: string;
  correct_option: string;
  difficulty: 'easy' | 'medium' | 'hard';
  topic_id: string;
  topic_name?: string;
  topic?: string;
  category_id: string;
  category_name?: string;
  is_active: boolean;
  explanation?: string;
  cognitive_level?: string;
  // Additional fields from backend
  rotation_id?: string;
  rotation_name?: string;
  usage_count?: number;
  created_at?: string;
  updated_at?: string;
}

export default function AdminQuestions() {
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedRotation, setSelectedRotation] = useState<string>('');
  const [selectedDifficulty, setSelectedDifficulty] = useState<string>('');
  const [selectedQuestions, setSelectedQuestions] = useState<string[]>([]);
  const [isImportModalOpen, setIsImportModalOpen] = useState(false);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const queryClient = useQueryClient();

  const { data: rotations } = useQuery({
    queryKey: ['rotations'],
    queryFn: async () => {
      const response = await rotationsApi.getAll();
      // API returns { success: true, data: [...] } so extract the data array
      return response.data?.data || response.data || [];
    },
  });

  const { data: questionsData, isLoading } = useQuery({
    queryKey: ['questions', selectedRotation, selectedDifficulty],
    queryFn: async () => {
      const response = await questionsApi.getAll({
        rotation_id: selectedRotation || undefined,
        difficulty: selectedDifficulty || undefined,
      });
      return response.data;
    },
  });

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      await questionsApi.delete(id);
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['questions'] });
      toast.success('Question deleted');
    },
    onError: () => {
      toast.error('Failed to delete question');
    },
  });

  const bulkDeleteMutation = useMutation({
    mutationFn: async (ids: string[]) => {
      await Promise.all(ids.map(id => questionsApi.delete(id)));
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['questions'] });
      setSelectedQuestions([]);
      toast.success('Questions deleted');
    },
    onError: () => {
      toast.error('Failed to delete questions');
    },
  });

  const importMutation = useMutation({
    mutationFn: async (file: File) => {
      const formData = new FormData();
      formData.append('file', file);
      formData.append('rotation_id', selectedRotation);
      const response = await questionsApi.import(formData);
      return response.data;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['questions'] });
      setIsImportModalOpen(false);
      toast.success(`Imported ${data.imported} questions successfully`);
    },
    onError: () => {
      toast.error('Failed to import questions');
    },
  });

  const handleFileUpload = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (file) {
      importMutation.mutate(file);
    }
  };

  const handleExport = async () => {
    try {
      const response = await questionsApi.export({
        rotation_id: selectedRotation || undefined,
        format: 'csv',
      });
      const blob = new Blob([response.data], { type: 'text/csv' });
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = 'questions_export.csv';
      document.body.appendChild(a);
      a.click();
      window.URL.revokeObjectURL(url);
      document.body.removeChild(a);
      toast.success('Questions exported');
    } catch {
      toast.error('Failed to export questions');
    }
  };

  const toggleSelectAll = () => {
    if (selectedQuestions.length === filteredQuestions.length) {
      setSelectedQuestions([]);
    } else {
      setSelectedQuestions(filteredQuestions.map((q: Question) => q.id));
    }
  };

  const toggleSelect = (id: string) => {
    if (selectedQuestions.includes(id)) {
      setSelectedQuestions(selectedQuestions.filter(q => q !== id));
    } else {
      setSelectedQuestions([...selectedQuestions, id]);
    }
  };

  const filteredQuestions = questionsData?.questions?.filter((q: Question) =>
    q.question_text?.toLowerCase().includes(searchQuery.toLowerCase()) ||
    (q.topic_name || q.topic || '').toLowerCase().includes(searchQuery.toLowerCase())
  ) || [];

  const stats = {
    total: questionsData?.questions?.length || 0,
    easy: questionsData?.questions?.filter((q: Question) => q.difficulty === 'easy').length || 0,
    medium: questionsData?.questions?.filter((q: Question) => q.difficulty === 'medium').length || 0,
    hard: questionsData?.questions?.filter((q: Question) => q.difficulty === 'hard').length || 0,
    active: questionsData?.questions?.filter((q: Question) => q.is_active).length || 0,
  };

  const getDifficultyColor = (difficulty: string) => {
    switch (difficulty) {
      case 'easy': return 'bg-green-100 text-green-800';
      case 'medium': return 'bg-yellow-100 text-yellow-800';
      case 'hard': return 'bg-red-100 text-red-800';
      default: return 'bg-gray-100 text-gray-800';
    }
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Question Bank</h1>
          <p className="text-gray-600 mt-1">Manage test questions across all rotations</p>
        </div>
        <div className="flex items-center gap-2">
          <button onClick={handleExport} className="btn btn-outline flex items-center gap-2">
            <ArrowDownTrayIcon className="w-5 h-5" />
            Export
          </button>
          <button onClick={() => setIsImportModalOpen(true)} className="btn btn-outline flex items-center gap-2">
            <ArrowUpTrayIcon className="w-5 h-5" />
            Import
          </button>
          <button className="btn btn-primary flex items-center gap-2">
            <PlusIcon className="w-5 h-5" />
            Add Question
          </button>
        </div>
      </div>

      <div className="grid grid-cols-5 gap-4">
        <div className="card bg-blue-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-blue-100 rounded-xl">
              <QuestionMarkCircleIcon className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <p className="text-sm text-blue-600">Total</p>
              <p className="text-2xl font-bold text-blue-900">{stats.total}</p>
            </div>
          </div>
        </div>
        <div className="card bg-green-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-green-100 rounded-xl">
              <CheckCircleIcon className="w-6 h-6 text-green-600" />
            </div>
            <div>
              <p className="text-sm text-green-600">Easy</p>
              <p className="text-2xl font-bold text-green-900">{stats.easy}</p>
            </div>
          </div>
        </div>
        <div className="card bg-yellow-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-yellow-100 rounded-xl">
              <DocumentDuplicateIcon className="w-6 h-6 text-yellow-600" />
            </div>
            <div>
              <p className="text-sm text-yellow-600">Medium</p>
              <p className="text-2xl font-bold text-yellow-900">{stats.medium}</p>
            </div>
          </div>
        </div>
        <div className="card bg-red-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-red-100 rounded-xl">
              <XCircleIcon className="w-6 h-6 text-red-600" />
            </div>
            <div>
              <p className="text-sm text-red-600">Hard</p>
              <p className="text-2xl font-bold text-red-900">{stats.hard}</p>
            </div>
          </div>
        </div>
        <div className="card bg-purple-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-purple-100 rounded-xl">
              <CheckCircleIcon className="w-6 h-6 text-purple-600" />
            </div>
            <div>
              <p className="text-sm text-purple-600">Active</p>
              <p className="text-2xl font-bold text-purple-900">{stats.active}</p>
            </div>
          </div>
        </div>
      </div>

      <div className="card">
        <div className="flex items-center gap-4">
          <div className="flex-1 relative">
            <MagnifyingGlassIcon className="w-5 h-5 absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
            <input
              type="text"
              placeholder="Search questions..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="input pl-10 w-full"
            />
          </div>
          <div className="flex items-center gap-2">
            <FunnelIcon className="w-5 h-5 text-gray-400" />
            <select value={selectedRotation} onChange={(e) => setSelectedRotation(e.target.value)} className="input">
              <option value="">All Rotations</option>
              {Array.isArray(rotations) && rotations.map((rotation: any) => (
                <option key={rotation.id} value={rotation.id}>{rotation.name}</option>
              ))}
            </select>
            <select value={selectedDifficulty} onChange={(e) => setSelectedDifficulty(e.target.value)} className="input">
              <option value="">All Difficulties</option>
              <option value="easy">Easy</option>
              <option value="medium">Medium</option>
              <option value="hard">Hard</option>
            </select>
          </div>
        </div>
      </div>

      {selectedQuestions.length > 0 && (
        <div className="card bg-primary-50 border-primary-200 flex items-center justify-between">
          <p className="text-primary-900 font-medium">{selectedQuestions.length} questions selected</p>
          <div className="flex items-center gap-2">
            <button className="btn btn-outline" onClick={() => setSelectedQuestions([])}>
              Clear Selection
            </button>
            <button
              className="btn bg-red-600 text-white hover:bg-red-700"
              onClick={() => {
                if (confirm(`Delete ${selectedQuestions.length} questions?`)) {
                  bulkDeleteMutation.mutate(selectedQuestions);
                }
              }}
            >
              <TrashIcon className="w-5 h-5 mr-2" />
              Delete Selected
            </button>
          </div>
        </div>
      )}

      <div className="card overflow-hidden">
        {isLoading ? (
          <div className="text-center py-12">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto" />
            <p className="text-gray-500 mt-4">Loading questions...</p>
          </div>
        ) : filteredQuestions.length === 0 ? (
          <div className="text-center py-12">
            <QuestionMarkCircleIcon className="w-16 h-16 text-gray-300 mx-auto mb-4" />
            <h3 className="text-lg font-medium text-gray-900">No Questions Found</h3>
            <p className="text-gray-500 mt-1">Import questions or create them manually</p>
          </div>
        ) : (
          <table className="min-w-full divide-y divide-gray-200">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-6 py-3 text-left">
                  <input
                    type="checkbox"
                    checked={selectedQuestions.length === filteredQuestions.length && filteredQuestions.length > 0}
                    onChange={toggleSelectAll}
                    className="w-4 h-4 text-primary-600 rounded border-gray-300"
                  />
                </th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Question</th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Rotation</th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Difficulty</th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Topic</th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Usage</th>
                <th className="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase">Actions</th>
              </tr>
            </thead>
            <tbody className="bg-white divide-y divide-gray-200">
              {filteredQuestions.map((question: Question) => (
                <tr key={question.id} className={`hover:bg-gray-50 ${selectedQuestions.includes(question.id) ? 'bg-primary-50' : ''}`}>
                  <td className="px-6 py-4">
                    <input
                      type="checkbox"
                      checked={selectedQuestions.includes(question.id)}
                      onChange={() => toggleSelect(question.id)}
                      className="w-4 h-4 text-primary-600 rounded border-gray-300"
                    />
                  </td>
                  <td className="px-6 py-4">
                    <p className="text-sm text-gray-900 line-clamp-2 max-w-md">{question.question_text}</p>
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap">
                    <span className="text-sm text-gray-900">{question.rotation_name || '-'}</span>
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap">
                    <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${getDifficultyColor(question.difficulty)}`}>
                      {question.difficulty.charAt(0).toUpperCase() + question.difficulty.slice(1)}
                    </span>
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap">
                    <span className="text-sm text-gray-500">{question.topic}</span>
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap">
                    <span className="text-sm text-gray-900">{question.usage_count || 0}</span>
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap text-right">
                    <div className="flex items-center justify-end gap-1">
                      <button className="p-2 text-gray-400 hover:text-primary-600 hover:bg-primary-50 rounded-lg">
                        <PencilIcon className="w-5 h-5" />
                      </button>
                      <button
                        onClick={() => {
                          if (confirm('Delete this question?')) {
                            deleteMutation.mutate(question.id);
                          }
                        }}
                        className="p-2 text-gray-400 hover:text-red-600 hover:bg-red-50 rounded-lg"
                      >
                        <TrashIcon className="w-5 h-5" />
                      </button>
                    </div>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>

      {isImportModalOpen && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-2xl max-w-lg w-full p-6">
            <h2 className="text-xl font-bold text-gray-900 mb-4">Import Questions</h2>
            <p className="text-gray-600 mb-4">
              Upload a CSV file with questions. The file should have columns: question_text, option_a, option_b, option_c, option_d, option_e, correct_option, difficulty, topic
            </p>
            <div className="mb-4">
              <label className="block text-sm font-medium text-gray-700 mb-1">Target Rotation</label>
              <select
                value={selectedRotation}
                onChange={(e) => setSelectedRotation(e.target.value)}
                className="input w-full"
              >
                <option value="">Select Rotation</option>
                {rotations?.map((rotation: any) => (
                  <option key={rotation.id} value={rotation.id}>{rotation.name}</option>
                ))}
              </select>
            </div>
            <div
              onClick={() => fileInputRef.current?.click()}
              className="border-2 border-dashed border-gray-300 rounded-xl p-8 text-center cursor-pointer hover:border-primary-500 hover:bg-primary-50 transition-colors"
            >
              <ArrowUpTrayIcon className="w-12 h-12 text-gray-400 mx-auto mb-4" />
              <p className="text-gray-600">Click to upload or drag and drop</p>
              <p className="text-sm text-gray-500 mt-1">CSV files only</p>
              <input
                ref={fileInputRef}
                type="file"
                accept=".csv"
                onChange={handleFileUpload}
                className="hidden"
              />
            </div>
            <div className="flex justify-end gap-3 mt-6">
              <button onClick={() => setIsImportModalOpen(false)} className="btn btn-outline">Cancel</button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
