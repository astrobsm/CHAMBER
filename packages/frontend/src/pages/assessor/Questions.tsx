import { useState } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useForm } from 'react-hook-form';
import {
  PlusIcon,
  PencilIcon,
  TrashIcon,
  MagnifyingGlassIcon,
  FunnelIcon,
  QuestionMarkCircleIcon,
  XMarkIcon,
  CheckIcon,
  DocumentDuplicateIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';
import { questionsApi, rotationsApi } from '../../services/api';

interface Question {
  id: string;
  question_text: string;
  options: { a: string; b: string; c: string; d: string; e: string };
  correct_option: string;
  difficulty: 'easy' | 'medium' | 'hard';
  topic: string;
  rotation_id: string;
  rotation_name?: string;
  created_at: string;
  is_active: boolean;
}

interface QuestionFormData {
  question_text: string;
  option_a: string;
  option_b: string;
  option_c: string;
  option_d: string;
  option_e: string;
  correct_option: string;
  difficulty: string;
  topic: string;
  rotation_id: string;
}

export default function AssessorQuestions() {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [editingQuestion, setEditingQuestion] = useState<Question | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedRotation, setSelectedRotation] = useState<string>('');
  const [selectedDifficulty, setSelectedDifficulty] = useState<string>('');
  const queryClient = useQueryClient();

  const { register, handleSubmit, reset, setValue, formState: { errors } } = useForm<QuestionFormData>();

  const { data: rotations } = useQuery({
    queryKey: ['rotations'],
    queryFn: async () => {
      const response = await rotationsApi.getAll();
      return response.data;
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

  const createMutation = useMutation({
    mutationFn: async (data: QuestionFormData) => {
      const payload = {
        question_text: data.question_text,
        options: {
          a: data.option_a,
          b: data.option_b,
          c: data.option_c,
          d: data.option_d,
          e: data.option_e,
        },
        correct_option: data.correct_option,
        difficulty: data.difficulty,
        topic: data.topic,
        rotation_id: data.rotation_id,
      };
      const response = await questionsApi.create(payload);
      return response.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['questions'] });
      toast.success('Question created successfully');
      closeModal();
    },
    onError: () => {
      toast.error('Failed to create question');
    },
  });

  const updateMutation = useMutation({
    mutationFn: async ({ id, data }: { id: string; data: QuestionFormData }) => {
      const payload = {
        question_text: data.question_text,
        options: {
          a: data.option_a,
          b: data.option_b,
          c: data.option_c,
          d: data.option_d,
          e: data.option_e,
        },
        correct_option: data.correct_option,
        difficulty: data.difficulty,
        topic: data.topic,
        rotation_id: data.rotation_id,
      };
      const response = await questionsApi.update(id, payload);
      return response.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['questions'] });
      toast.success('Question updated successfully');
      closeModal();
    },
    onError: () => {
      toast.error('Failed to update question');
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

  const openModal = (question?: Question) => {
    if (question) {
      setEditingQuestion(question);
      setValue('question_text', question.question_text);
      setValue('option_a', question.options.a);
      setValue('option_b', question.options.b);
      setValue('option_c', question.options.c);
      setValue('option_d', question.options.d);
      setValue('option_e', question.options.e);
      setValue('correct_option', question.correct_option);
      setValue('difficulty', question.difficulty);
      setValue('topic', question.topic);
      setValue('rotation_id', question.rotation_id);
    } else {
      reset();
      setEditingQuestion(null);
    }
    setIsModalOpen(true);
  };

  const closeModal = () => {
    setIsModalOpen(false);
    setEditingQuestion(null);
    reset();
  };

  const onSubmit = (data: QuestionFormData) => {
    if (editingQuestion) {
      updateMutation.mutate({ id: editingQuestion.id, data });
    } else {
      createMutation.mutate(data);
    }
  };

  const filteredQuestions = questionsData?.questions?.filter((q: Question) =>
    q.question_text.toLowerCase().includes(searchQuery.toLowerCase()) ||
    q.topic.toLowerCase().includes(searchQuery.toLowerCase())
  ) || [];

  const stats = {
    total: questionsData?.questions?.length || 0,
    easy: questionsData?.questions?.filter((q: Question) => q.difficulty === 'easy').length || 0,
    medium: questionsData?.questions?.filter((q: Question) => q.difficulty === 'medium').length || 0,
    hard: questionsData?.questions?.filter((q: Question) => q.difficulty === 'hard').length || 0,
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Question Bank</h1>
          <p className="text-gray-600 mt-1">Create and manage test questions</p>
        </div>
        <button onClick={() => openModal()} className="btn btn-primary flex items-center gap-2">
          <PlusIcon className="w-5 h-5" />
          Add Question
        </button>
      </div>

      <div className="grid grid-cols-4 gap-4">
        <div className="card bg-blue-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-blue-100 rounded-xl">
              <QuestionMarkCircleIcon className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <p className="text-sm text-blue-600">Total Questions</p>
              <p className="text-2xl font-bold text-blue-900">{stats.total}</p>
            </div>
          </div>
        </div>
        <div className="card bg-green-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-green-100 rounded-xl">
              <CheckIcon className="w-6 h-6 text-green-600" />
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
              <XMarkIcon className="w-6 h-6 text-red-600" />
            </div>
            <div>
              <p className="text-sm text-red-600">Hard</p>
              <p className="text-2xl font-bold text-red-900">{stats.hard}</p>
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
            <select
              value={selectedRotation}
              onChange={(e) => setSelectedRotation(e.target.value)}
              className="input"
            >
              <option value="">All Rotations</option>
              {rotations?.map((rotation: any) => (
                <option key={rotation.id} value={rotation.id}>{rotation.name}</option>
              ))}
            </select>
            <select
              value={selectedDifficulty}
              onChange={(e) => setSelectedDifficulty(e.target.value)}
              className="input"
            >
              <option value="">All Difficulties</option>
              <option value="easy">Easy</option>
              <option value="medium">Medium</option>
              <option value="hard">Hard</option>
            </select>
          </div>
        </div>
      </div>

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
            <p className="text-gray-500 mt-1">Create your first question to get started</p>
            <button onClick={() => openModal()} className="btn btn-primary mt-4">
              <PlusIcon className="w-5 h-5 mr-2" />
              Add Question
            </button>
          </div>
        ) : (
          <div className="divide-y divide-gray-200">
            {filteredQuestions.map((question: Question) => (
              <div key={question.id} className="p-6 hover:bg-gray-50">
                <div className="flex items-start justify-between">
                  <div className="flex-1">
                    <div className="flex items-center gap-2 mb-2">
                      <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${
                        question.difficulty === 'easy' ? 'bg-green-100 text-green-800'
                          : question.difficulty === 'medium' ? 'bg-yellow-100 text-yellow-800'
                          : 'bg-red-100 text-red-800'
                      }`}>
                        {question.difficulty.charAt(0).toUpperCase() + question.difficulty.slice(1)}
                      </span>
                      <span className="text-sm text-gray-500">{question.topic}</span>
                    </div>
                    <p className="text-gray-900 font-medium">{question.question_text}</p>
                    <div className="mt-3 grid grid-cols-2 gap-2 text-sm">
                      {['a', 'b', 'c', 'd', 'e'].map((opt) => (
                        <div
                          key={opt}
                          className={`p-2 rounded ${
                            question.correct_option === opt
                              ? 'bg-green-100 text-green-800 border border-green-300'
                              : 'bg-gray-50 text-gray-600'
                          }`}
                        >
                          <span className="font-medium">{opt.toUpperCase()}.</span>{' '}
                          {question.options[opt as keyof typeof question.options]}
                        </div>
                      ))}
                    </div>
                  </div>
                  <div className="flex items-center gap-2 ml-4">
                    <button
                      onClick={() => openModal(question)}
                      className="p-2 text-gray-400 hover:text-primary-600 hover:bg-primary-50 rounded-lg"
                    >
                      <PencilIcon className="w-5 h-5" />
                    </button>
                    <button
                      onClick={() => {
                        if (confirm('Are you sure you want to delete this question?')) {
                          deleteMutation.mutate(question.id);
                        }
                      }}
                      className="p-2 text-gray-400 hover:text-red-600 hover:bg-red-50 rounded-lg"
                    >
                      <TrashIcon className="w-5 h-5" />
                    </button>
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>

      {isModalOpen && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
            <div className="p-6 border-b border-gray-200">
              <div className="flex items-center justify-between">
                <h2 className="text-xl font-bold text-gray-900">
                  {editingQuestion ? 'Edit Question' : 'Add New Question'}
                </h2>
                <button onClick={closeModal} className="p-2 hover:bg-gray-100 rounded-lg">
                  <XMarkIcon className="w-5 h-5" />
                </button>
              </div>
            </div>
            <form onSubmit={handleSubmit(onSubmit)} className="p-6 space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Question Text</label>
                <textarea
                  {...register('question_text', { required: 'Question text is required' })}
                  rows={3}
                  className="input w-full"
                  placeholder="Enter your question..."
                />
                {errors.question_text && (
                  <p className="text-red-500 text-sm mt-1">{errors.question_text.message}</p>
                )}
              </div>

              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Rotation</label>
                  <select {...register('rotation_id', { required: 'Rotation is required' })} className="input w-full">
                    <option value="">Select Rotation</option>
                    {rotations?.map((rotation: any) => (
                      <option key={rotation.id} value={rotation.id}>{rotation.name}</option>
                    ))}
                  </select>
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Difficulty</label>
                  <select {...register('difficulty', { required: 'Difficulty is required' })} className="input w-full">
                    <option value="">Select Difficulty</option>
                    <option value="easy">Easy</option>
                    <option value="medium">Medium</option>
                    <option value="hard">Hard</option>
                  </select>
                </div>
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Topic</label>
                <input
                  type="text"
                  {...register('topic', { required: 'Topic is required' })}
                  className="input w-full"
                  placeholder="e.g., Appendicitis, Hernia"
                />
              </div>

              <div className="space-y-3">
                <label className="block text-sm font-medium text-gray-700">Options</label>
                {['a', 'b', 'c', 'd', 'e'].map((opt) => (
                  <div key={opt} className="flex items-center gap-3">
                    <span className="w-8 h-8 rounded-full bg-gray-100 flex items-center justify-center font-medium text-gray-600">
                      {opt.toUpperCase()}
                    </span>
                    <input
                      type="text"
                      {...register(`option_${opt}` as keyof QuestionFormData, { required: `Option ${opt.toUpperCase()} is required` })}
                      className="input flex-1"
                      placeholder={`Enter option ${opt.toUpperCase()}`}
                    />
                  </div>
                ))}
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Correct Answer</label>
                <div className="flex gap-4">
                  {['a', 'b', 'c', 'd', 'e'].map((opt) => (
                    <label key={opt} className="flex items-center gap-2 cursor-pointer">
                      <input
                        type="radio"
                        {...register('correct_option', { required: 'Correct answer is required' })}
                        value={opt}
                        className="w-4 h-4 text-primary-600 border-gray-300 focus:ring-primary-500"
                      />
                      <span className="font-medium">{opt.toUpperCase()}</span>
                    </label>
                  ))}
                </div>
              </div>

              <div className="flex justify-end gap-3 pt-4 border-t border-gray-200">
                <button type="button" onClick={closeModal} className="btn btn-outline">Cancel</button>
                <button
                  type="submit"
                  disabled={createMutation.isPending || updateMutation.isPending}
                  className="btn btn-primary"
                >
                  {createMutation.isPending || updateMutation.isPending ? 'Saving...' : editingQuestion ? 'Update Question' : 'Create Question'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
