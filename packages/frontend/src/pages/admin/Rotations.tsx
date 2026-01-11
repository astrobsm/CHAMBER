import { useState } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useForm } from 'react-hook-form';
import { format } from 'date-fns';
import {
  PlusIcon,
  PencilIcon,
  TrashIcon,
  CalendarIcon,
  UserGroupIcon,
  ClockIcon,
  XMarkIcon,
  ChartBarIcon,
  AcademicCapIcon,
  CheckCircleIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';
import { rotationsApi, adminApi } from '../../services/api';

interface Rotation {
  id: string;
  name: string;
  description: string;
  duration_weeks: number;
  level: string;
  start_date: string;
  end_date: string;
  assessor_id?: string;
  assessor_name?: string;
  student_count: number;
  is_active: boolean;
  requirements: {
    min_attendance: number;
    min_tests: number;
    min_participation: number;
  };
}

interface RotationFormData {
  name: string;
  description: string;
  duration_weeks: number;
  level: string;
  start_date: string;
  end_date: string;
  assessor_id: string;
  min_attendance: number;
  min_tests: number;
  min_participation: number;
}

export default function AdminRotations() {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [editingRotation, setEditingRotation] = useState<Rotation | null>(null);
  const [selectedLevel, setSelectedLevel] = useState<string>('');
  const queryClient = useQueryClient();

  const { register, handleSubmit, reset, setValue, formState: { errors } } = useForm<RotationFormData>();

  const { data: rotationsData, isLoading } = useQuery({
    queryKey: ['rotations', selectedLevel],
    queryFn: async () => {
      const response = await rotationsApi.getAll({ level: selectedLevel || undefined });
      return response.data;
    },
  });

  const { data: assessors } = useQuery({
    queryKey: ['assessors'],
    queryFn: async () => {
      const response = await adminApi.getUsers({ role: 'assessor' });
      return response.data?.users || [];
    },
  });

  const createMutation = useMutation({
    mutationFn: async (data: RotationFormData) => {
      const payload = {
        name: data.name,
        description: data.description,
        duration_weeks: data.duration_weeks,
        level: data.level,
        start_date: data.start_date,
        end_date: data.end_date,
        assessor_id: data.assessor_id,
        requirements: {
          min_attendance: data.min_attendance,
          min_tests: data.min_tests,
          min_participation: data.min_participation,
        },
      };
      const response = await rotationsApi.create(payload);
      return response.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['rotations'] });
      toast.success('Rotation created successfully');
      closeModal();
    },
    onError: () => {
      toast.error('Failed to create rotation');
    },
  });

  const updateMutation = useMutation({
    mutationFn: async ({ id, data }: { id: string; data: RotationFormData }) => {
      const payload = {
        name: data.name,
        description: data.description,
        duration_weeks: data.duration_weeks,
        level: data.level,
        start_date: data.start_date,
        end_date: data.end_date,
        assessor_id: data.assessor_id,
        requirements: {
          min_attendance: data.min_attendance,
          min_tests: data.min_tests,
          min_participation: data.min_participation,
        },
      };
      const response = await rotationsApi.update(id, payload);
      return response.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['rotations'] });
      toast.success('Rotation updated successfully');
      closeModal();
    },
    onError: () => {
      toast.error('Failed to update rotation');
    },
  });

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      await rotationsApi.delete(id);
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['rotations'] });
      toast.success('Rotation deleted');
    },
    onError: () => {
      toast.error('Failed to delete rotation');
    },
  });

  const openModal = (rotation?: Rotation) => {
    if (rotation) {
      setEditingRotation(rotation);
      setValue('name', rotation.name);
      setValue('description', rotation.description);
      setValue('duration_weeks', rotation.duration_weeks);
      setValue('level', rotation.level);
      setValue('start_date', rotation.start_date.split('T')[0]);
      setValue('end_date', rotation.end_date.split('T')[0]);
      setValue('assessor_id', rotation.assessor_id || '');
      setValue('min_attendance', rotation.requirements.min_attendance);
      setValue('min_tests', rotation.requirements.min_tests);
      setValue('min_participation', rotation.requirements.min_participation);
    } else {
      reset({
        min_attendance: 75,
        min_tests: 75,
        min_participation: 75,
        duration_weeks: 4,
      });
      setEditingRotation(null);
    }
    setIsModalOpen(true);
  };

  const closeModal = () => {
    setIsModalOpen(false);
    setEditingRotation(null);
    reset();
  };

  const onSubmit = (data: RotationFormData) => {
    if (editingRotation) {
      updateMutation.mutate({ id: editingRotation.id, data });
    } else {
      createMutation.mutate(data);
    }
  };

  const stats = {
    total: rotationsData?.data?.length || 0,
    active: rotationsData?.data?.filter((r: Rotation) => r.is_active).length || 0,
    totalStudents: rotationsData?.data?.reduce((sum: number, r: Rotation) => sum + (r.student_count || 0), 0) || 0,
  };

  const getLevelColor = (level: string) => {
    switch (level) {
      case 'surgery_1': return 'bg-blue-100 text-blue-800';
      case 'surgery_2': return 'bg-green-100 text-green-800';
      case 'surgery_3': return 'bg-yellow-100 text-yellow-800';
      case 'surgery_4': return 'bg-purple-100 text-purple-800';
      default: return 'bg-gray-100 text-gray-800';
    }
  };

  const getLevelName = (level: string) => {
    switch (level) {
      case 'surgery_1': return 'Surgery I';
      case 'surgery_2': return 'Surgery II';
      case 'surgery_3': return 'Surgery III';
      case 'surgery_4': return 'Surgery IV';
      default: return level;
    }
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Rotation Management</h1>
          <p className="text-gray-600 mt-1">Create and manage clinical rotations</p>
        </div>
        <button onClick={() => openModal()} className="btn btn-primary flex items-center gap-2">
          <PlusIcon className="w-5 h-5" />
          Create Rotation
        </button>
      </div>

      <div className="grid grid-cols-3 gap-4">
        <div className="card bg-blue-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-blue-100 rounded-xl">
              <CalendarIcon className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <p className="text-sm text-blue-600">Total Rotations</p>
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
              <p className="text-sm text-green-600">Active</p>
              <p className="text-2xl font-bold text-green-900">{stats.active}</p>
            </div>
          </div>
        </div>
        <div className="card bg-purple-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-purple-100 rounded-xl">
              <UserGroupIcon className="w-6 h-6 text-purple-600" />
            </div>
            <div>
              <p className="text-sm text-purple-600">Total Students</p>
              <p className="text-2xl font-bold text-purple-900">{stats.totalStudents}</p>
            </div>
          </div>
        </div>
      </div>

      <div className="card">
        <div className="flex items-center gap-4">
          <div className="flex gap-2">
            <button
              onClick={() => setSelectedLevel('')}
              className={`px-4 py-2 rounded-lg font-medium transition-colors ${!selectedLevel ? 'bg-primary-600 text-white' : 'bg-gray-100 text-gray-700 hover:bg-gray-200'}`}
            >
              All Levels
            </button>
            {['surgery_1', 'surgery_2', 'surgery_3', 'surgery_4'].map((level) => (
              <button
                key={level}
                onClick={() => setSelectedLevel(level)}
                className={`px-4 py-2 rounded-lg font-medium transition-colors ${selectedLevel === level ? 'bg-primary-600 text-white' : 'bg-gray-100 text-gray-700 hover:bg-gray-200'}`}
              >
                {getLevelName(level)}
              </button>
            ))}
          </div>
        </div>
      </div>

      <div className="grid grid-cols-2 gap-6">
        {isLoading ? (
          <div className="col-span-2 card text-center py-12">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto" />
            <p className="text-gray-500 mt-4">Loading rotations...</p>
          </div>
        ) : rotationsData?.data?.length === 0 ? (
          <div className="col-span-2 card text-center py-12">
            <CalendarIcon className="w-16 h-16 text-gray-300 mx-auto mb-4" />
            <h3 className="text-lg font-medium text-gray-900">No Rotations Found</h3>
            <p className="text-gray-500 mt-1">Create your first rotation to get started</p>
            <button onClick={() => openModal()} className="btn btn-primary mt-4">
              <PlusIcon className="w-5 h-5 mr-2" />
              Create Rotation
            </button>
          </div>
        ) : (
          rotationsData?.data?.map((rotation: Rotation) => (
            <div key={rotation.id} className="card hover:shadow-lg transition-shadow">
              <div className="flex items-start justify-between mb-4">
                <div>
                  <div className="flex items-center gap-2 mb-2">
                    <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${getLevelColor(rotation.level)}`}>
                      {getLevelName(rotation.level)}
                    </span>
                    <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${rotation.is_active ? 'bg-green-100 text-green-800' : 'bg-gray-100 text-gray-800'}`}>
                      {rotation.is_active ? 'Active' : 'Inactive'}
                    </span>
                  </div>
                  <h3 className="text-lg font-bold text-gray-900">{rotation.name}</h3>
                  <p className="text-sm text-gray-500 mt-1">{rotation.description}</p>
                </div>
                <div className="flex items-center gap-1">
                  <button onClick={() => openModal(rotation)} className="p-2 text-gray-400 hover:text-primary-600 hover:bg-primary-50 rounded-lg">
                    <PencilIcon className="w-5 h-5" />
                  </button>
                  <button
                    onClick={() => {
                      if (confirm('Are you sure you want to delete this rotation?')) {
                        deleteMutation.mutate(rotation.id);
                      }
                    }}
                    className="p-2 text-gray-400 hover:text-red-600 hover:bg-red-50 rounded-lg"
                  >
                    <TrashIcon className="w-5 h-5" />
                  </button>
                </div>
              </div>

              <div className="grid grid-cols-3 gap-4 mb-4">
                <div className="flex items-center gap-2 text-sm text-gray-600">
                  <ClockIcon className="w-4 h-4" />
                  <span>{rotation.duration_weeks} weeks</span>
                </div>
                <div className="flex items-center gap-2 text-sm text-gray-600">
                  <UserGroupIcon className="w-4 h-4" />
                  <span>{rotation.student_count} students</span>
                </div>
                <div className="flex items-center gap-2 text-sm text-gray-600">
                  <AcademicCapIcon className="w-4 h-4" />
                  <span>{rotation.assessor_name || 'No assessor'}</span>
                </div>
              </div>

              <div className="flex items-center gap-2 text-sm text-gray-500 mb-4">
                <CalendarIcon className="w-4 h-4" />
                <span>
                  {format(new Date(rotation.start_date), 'MMM d')} - {format(new Date(rotation.end_date), 'MMM d, yyyy')}
                </span>
              </div>

              <div className="pt-4 border-t border-gray-100">
                <p className="text-xs text-gray-500 mb-2">Clearance Requirements (min 75%)</p>
                <div className="grid grid-cols-3 gap-2 text-xs">
                  <div className="flex items-center justify-between bg-gray-50 rounded px-2 py-1">
                    <span>Attendance</span>
                    <span className="font-medium">{rotation.requirements?.min_attendance ?? 75}%</span>
                  </div>
                  <div className="flex items-center justify-between bg-gray-50 rounded px-2 py-1">
                    <span>Tests</span>
                    <span className="font-medium">{rotation.requirements?.min_tests ?? 75}%</span>
                  </div>
                  <div className="flex items-center justify-between bg-gray-50 rounded px-2 py-1">
                    <span>Participation</span>
                    <span className="font-medium">{rotation.requirements?.min_participation ?? 75}%</span>
                  </div>
                </div>
              </div>
            </div>
          ))
        )}
      </div>

      {isModalOpen && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
            <div className="p-6 border-b border-gray-200">
              <div className="flex items-center justify-between">
                <h2 className="text-xl font-bold text-gray-900">{editingRotation ? 'Edit Rotation' : 'Create New Rotation'}</h2>
                <button onClick={closeModal} className="p-2 hover:bg-gray-100 rounded-lg">
                  <XMarkIcon className="w-5 h-5" />
                </button>
              </div>
            </div>
            <form onSubmit={handleSubmit(onSubmit)} className="p-6 space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Rotation Name</label>
                <input type="text" {...register('name', { required: 'Name is required' })} className="input w-full" placeholder="e.g., General Surgery" />
                {errors.name && <p className="text-red-500 text-sm mt-1">{errors.name.message}</p>}
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Description</label>
                <textarea {...register('description')} rows={3} className="input w-full" placeholder="Brief description of the rotation..." />
              </div>

              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Level</label>
                  <select {...register('level', { required: 'Level is required' })} className="input w-full">
                    <option value="">Select Level</option>
                    <option value="surgery_1">Surgery I</option>
                    <option value="surgery_2">Surgery II</option>
                    <option value="surgery_3">Surgery III</option>
                    <option value="surgery_4">Surgery IV</option>
                  </select>
                  {errors.level && <p className="text-red-500 text-sm mt-1">{errors.level.message}</p>}
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Duration (weeks)</label>
                  <input type="number" {...register('duration_weeks', { required: 'Duration is required', min: 1 })} className="input w-full" />
                  {errors.duration_weeks && <p className="text-red-500 text-sm mt-1">{errors.duration_weeks.message}</p>}
                </div>
              </div>

              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Start Date</label>
                  <input type="date" {...register('start_date', { required: 'Start date is required' })} className="input w-full" />
                  {errors.start_date && <p className="text-red-500 text-sm mt-1">{errors.start_date.message}</p>}
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">End Date</label>
                  <input type="date" {...register('end_date', { required: 'End date is required' })} className="input w-full" />
                  {errors.end_date && <p className="text-red-500 text-sm mt-1">{errors.end_date.message}</p>}
                </div>
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Assigned Assessor</label>
                <select {...register('assessor_id')} className="input w-full">
                  <option value="">Select Assessor (optional)</option>
                  {assessors?.map((assessor: any) => (
                    <option key={assessor.id} value={assessor.id}>{assessor.first_name} {assessor.last_name}</option>
                  ))}
                </select>
              </div>

              <div className="pt-4 border-t border-gray-200">
                <h4 className="font-medium text-gray-900 mb-4 flex items-center gap-2">
                  <ChartBarIcon className="w-5 h-5" />
                  Clearance Requirements (%)
                </h4>
                <div className="grid grid-cols-3 gap-4">
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Min Attendance</label>
                    <input type="number" {...register('min_attendance', { required: true, min: 0, max: 100 })} className="input w-full" />
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Min Test Score</label>
                    <input type="number" {...register('min_tests', { required: true, min: 0, max: 100 })} className="input w-full" />
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Min Participation</label>
                    <input type="number" {...register('min_participation', { required: true, min: 0, max: 100 })} className="input w-full" />
                  </div>
                </div>
              </div>

              <div className="flex justify-end gap-3 pt-4 border-t border-gray-200">
                <button type="button" onClick={closeModal} className="btn btn-outline">Cancel</button>
                <button type="submit" disabled={createMutation.isPending || updateMutation.isPending} className="btn btn-primary">
                  {createMutation.isPending || updateMutation.isPending ? 'Saving...' : editingRotation ? 'Update Rotation' : 'Create Rotation'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
