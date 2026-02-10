import { useState, useRef } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useForm } from 'react-hook-form';
import { format } from 'date-fns';
import {
  PlusIcon,
  PencilIcon,
  TrashIcon,
  MagnifyingGlassIcon,
  FunnelIcon,
  UserGroupIcon,
  XMarkIcon,
  ShieldCheckIcon,
  AcademicCapIcon,
  UserIcon,
  CheckCircleIcon,
  XCircleIcon,
  KeyIcon,
  ArrowUpTrayIcon,
  DocumentArrowDownIcon,
  ArrowPathIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';
import { adminApi } from '../../services/api';

interface User {
  id: string;
  email: string;
  first_name: string;
  last_name: string;
  role: 'student' | 'assessor' | 'admin';
  level?: string;
  department?: string;
  is_active: boolean;
  created_at: string;
  last_login?: string;
}

interface UserFormData {
  email: string;
  password: string;
  first_name: string;
  last_name: string;
  role: string;
  level?: string;
  department?: string;
  matriculation_number?: string;
  phone_number?: string;
  staff_id?: string;
}

export default function AdminUsers() {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [isBulkUploadOpen, setIsBulkUploadOpen] = useState(false);
  const [editingUser, setEditingUser] = useState<User | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [roleFilter, setRoleFilter] = useState<string>('');
  const [statusFilter, setStatusFilter] = useState<string>('');
  const [bulkUploadData, setBulkUploadData] = useState<Record<string, string>[]>([]);
  const [bulkUploadResults, setBulkUploadResults] = useState<{ success: unknown[]; failed: unknown[] } | null>(null);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const queryClient = useQueryClient();

  const { register, handleSubmit, reset, setValue, watch, formState: { errors } } = useForm<UserFormData>();
  const selectedRole = watch('role');

  const { data: usersData, isLoading } = useQuery({
    queryKey: ['users', roleFilter, statusFilter],
    queryFn: async () => {
      const response = await adminApi.getUsers({
        role: roleFilter || undefined,
        is_active: statusFilter ? statusFilter === 'active' : undefined,
      });
      return response.data;
    },
  });

  const createMutation = useMutation({
    mutationFn: async (data: UserFormData) => {
      const response = await adminApi.createUser(data as unknown as Record<string, unknown>);
      return response.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['users'] });
      toast.success('User created successfully');
      closeModal();
    },
    onError: (error: unknown) => {
      const msg = (error as { response?: { data?: { message?: string } } })?.response?.data?.message || 'Failed to create user';
      toast.error(msg);
    },
  });

  const updateMutation = useMutation({
    mutationFn: async ({ id, data }: { id: string; data: Partial<UserFormData> }) => {
      const response = await adminApi.updateUser(id, data as unknown as Record<string, unknown>);
      return response.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['users'] });
      toast.success('User updated successfully');
      closeModal();
    },
    onError: () => {
      toast.error('Failed to update user');
    },
  });

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      await adminApi.deleteUser(id);
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['users'] });
      toast.success('User deleted');
    },
    onError: () => {
      toast.error('Failed to delete user');
    },
  });

  const toggleStatusMutation = useMutation({
    mutationFn: async ({ id, is_active }: { id: string; is_active: boolean }) => {
      const response = await adminApi.updateUser(id, { is_active } as any);
      return response.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['users'] });
      toast.success('User status updated');
    },
    onError: () => {
      toast.error('Failed to update status');
    },
  });

  const resetPasswordMutation = useMutation({
    mutationFn: async (id: string) => {
      const response = await adminApi.resetUserPassword(id);
      return response.data;
    },
    onSuccess: (data) => {
      toast.success(`Password reset. New password: ${data.temporary_password}`);
    },
    onError: () => {
      toast.error('Failed to reset password');
    },
  });

  const bulkUploadMutation = useMutation({
    mutationFn: async (users: Record<string, unknown>[]) => {
      const response = await adminApi.bulkUploadUsers(users);
      return response.data;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['users'] });
      setBulkUploadResults(data.data);
      toast.success(data.message);
    },
    onError: (error: any) => {
      toast.error(error.response?.data?.message || 'Bulk upload failed');
    },
  });

  // Parse CSV file
  const parseCSV = (text: string): Record<string, string>[] => {
    const lines = text.trim().split('\n');
    if (lines.length < 2) return [];
    
    const headers = lines[0].split(',').map(h => h.trim().toLowerCase().replace(/\s+/g, '_'));
    const data: Record<string, string>[] = [];
    
    for (let i = 1; i < lines.length; i++) {
      const values = lines[i].split(',').map(v => v.trim());
      if (values.length === headers.length) {
        const row: Record<string, string> = {};
        headers.forEach((header, index) => {
          row[header] = values[index];
        });
        data.push(row);
      }
    }
    return data;
  };

  // Handle file upload
  const handleFileUpload = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (!file) return;

    if (!file.name.endsWith('.csv')) {
      toast.error('Please upload a CSV file');
      return;
    }

    const reader = new FileReader();
    reader.onload = (e) => {
      const text = e.target?.result as string;
      const data = parseCSV(text);
      if (data.length === 0) {
        toast.error('No valid data found in CSV');
        return;
      }
      setBulkUploadData(data);
      setBulkUploadResults(null);
    };
    reader.readAsText(file);
  };

  // Download template
  const downloadTemplate = async () => {
    try {
      const response = await adminApi.getBulkTemplate();
      const blob = new Blob([response.data], { type: 'text/csv' });
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = 'bulk_upload_template.csv';
      a.click();
      window.URL.revokeObjectURL(url);
      toast.success('Template downloaded');
    } catch {
      toast.error('Failed to download template');
    }
  };

  // Submit bulk upload
  const handleBulkUpload = () => {
    if (bulkUploadData.length === 0) {
      toast.error('No data to upload');
      return;
    }
    bulkUploadMutation.mutate(bulkUploadData);
  };

  // Close bulk upload modal
  const closeBulkUpload = () => {
    setIsBulkUploadOpen(false);
    setBulkUploadData([]);
    setBulkUploadResults(null);
    if (fileInputRef.current) {
      fileInputRef.current.value = '';
    }
  };

  const openModal = (user?: User) => {
    if (user) {
      setEditingUser(user);
      setValue('email', user.email);
      setValue('first_name', user.first_name);
      setValue('last_name', user.last_name);
      setValue('role', user.role);
      setValue('level', user.level || '');
      setValue('department', user.department || '');
    } else {
      reset();
      setEditingUser(null);
    }
    setIsModalOpen(true);
  };

  const closeModal = () => {
    setIsModalOpen(false);
    setEditingUser(null);
    reset();
  };

  const onSubmit = (data: UserFormData) => {
    if (editingUser) {
      const { password, ...updateData } = data;
      updateMutation.mutate({ id: editingUser.id, data: updateData });
    } else {
      createMutation.mutate(data);
    }
  };

  const filteredUsers = usersData?.data?.users?.filter((user: User) => {
    const fullName = `${user.first_name || ''} ${user.last_name || ''}`.toLowerCase();
    return fullName.includes(searchQuery.toLowerCase()) || user.email.toLowerCase().includes(searchQuery.toLowerCase());
  }) || [];

  const stats = {
    total: usersData?.data?.users?.length || 0,
    students: usersData?.data?.users?.filter((u: User) => u.role === 'student').length || 0,
    assessors: usersData?.data?.users?.filter((u: User) => u.role === 'assessor').length || 0,
    admins: usersData?.data?.users?.filter((u: User) => u.role === 'admin').length || 0,
  };

  const getRoleIcon = (role: string) => {
    switch (role) {
      case 'admin': return <ShieldCheckIcon className="w-4 h-4" />;
      case 'assessor': return <AcademicCapIcon className="w-4 h-4" />;
      default: return <UserIcon className="w-4 h-4" />;
    }
  };

  const getRoleColor = (role: string) => {
    switch (role) {
      case 'admin': return 'bg-purple-100 text-purple-800';
      case 'assessor': return 'bg-blue-100 text-blue-800';
      default: return 'bg-green-100 text-green-800';
    }
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">User Management</h1>
          <p className="text-gray-600 mt-1">Manage students, assessors, and administrators</p>
        </div>
        <div className="flex items-center gap-3">
          <button 
            onClick={() => setIsBulkUploadOpen(true)} 
            className="btn btn-secondary flex items-center gap-2"
          >
            <ArrowUpTrayIcon className="w-5 h-5" />
            Bulk Upload
          </button>
          <button onClick={() => openModal()} className="btn btn-primary flex items-center gap-2">
            <PlusIcon className="w-5 h-5" />
            Add User
          </button>
        </div>
      </div>

      <div className="grid grid-cols-4 gap-4">
        <div className="card bg-blue-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-blue-100 rounded-xl">
              <UserGroupIcon className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <p className="text-sm text-blue-600">Total Users</p>
              <p className="text-2xl font-bold text-blue-900">{stats.total}</p>
            </div>
          </div>
        </div>
        <div className="card bg-green-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-green-100 rounded-xl">
              <UserIcon className="w-6 h-6 text-green-600" />
            </div>
            <div>
              <p className="text-sm text-green-600">Students</p>
              <p className="text-2xl font-bold text-green-900">{stats.students}</p>
            </div>
          </div>
        </div>
        <div className="card bg-indigo-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-indigo-100 rounded-xl">
              <AcademicCapIcon className="w-6 h-6 text-indigo-600" />
            </div>
            <div>
              <p className="text-sm text-indigo-600">Assessors</p>
              <p className="text-2xl font-bold text-indigo-900">{stats.assessors}</p>
            </div>
          </div>
        </div>
        <div className="card bg-purple-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-purple-100 rounded-xl">
              <ShieldCheckIcon className="w-6 h-6 text-purple-600" />
            </div>
            <div>
              <p className="text-sm text-purple-600">Admins</p>
              <p className="text-2xl font-bold text-purple-900">{stats.admins}</p>
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
              placeholder="Search users..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="input pl-10 w-full"
            />
          </div>
          <div className="flex items-center gap-2">
            <FunnelIcon className="w-5 h-5 text-gray-400" />
            <select value={roleFilter} onChange={(e) => setRoleFilter(e.target.value)} className="input">
              <option value="">All Roles</option>
              <option value="student">Students</option>
              <option value="assessor">Assessors</option>
              <option value="admin">Admins</option>
            </select>
            <select value={statusFilter} onChange={(e) => setStatusFilter(e.target.value)} className="input">
              <option value="">All Status</option>
              <option value="active">Active</option>
              <option value="inactive">Inactive</option>
            </select>
          </div>
        </div>
      </div>

      <div className="card overflow-hidden">
        {isLoading ? (
          <div className="text-center py-12">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto" />
            <p className="text-gray-500 mt-4">Loading users...</p>
          </div>
        ) : filteredUsers.length === 0 ? (
          <div className="text-center py-12">
            <UserGroupIcon className="w-16 h-16 text-gray-300 mx-auto mb-4" />
            <h3 className="text-lg font-medium text-gray-900">No Users Found</h3>
            <p className="text-gray-500 mt-1">Create your first user to get started</p>
          </div>
        ) : (
          <table className="min-w-full divide-y divide-gray-200">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">User</th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Role</th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Level/Dept</th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Last Login</th>
                <th className="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase">Actions</th>
              </tr>
            </thead>
            <tbody className="bg-white divide-y divide-gray-200">
              {filteredUsers.map((user: User) => (
                <tr key={user.id} className="hover:bg-gray-50">
                  <td className="px-6 py-4 whitespace-nowrap">
                    <div className="flex items-center">
                      <div className="w-10 h-10 rounded-full bg-primary-100 flex items-center justify-center">
                        <span className="text-primary-700 font-medium">{user.first_name?.[0] || user.email[0].toUpperCase()}{user.last_name?.[0] || ''}</span>
                      </div>
                      <div className="ml-4">
                        <div className="text-sm font-medium text-gray-900">{user.first_name || ''} {user.last_name || user.email}</div>
                        <div className="text-sm text-gray-500">{user.email}</div>
                      </div>
                    </div>
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap">
                    <span className={`inline-flex items-center gap-1 px-2.5 py-0.5 rounded-full text-xs font-medium ${getRoleColor(user.role)}`}>
                      {getRoleIcon(user.role)}
                      {user.role.charAt(0).toUpperCase() + user.role.slice(1)}
                    </span>
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                    {user.level || user.department || '-'}
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap">
                    <button
                      onClick={() => toggleStatusMutation.mutate({ id: user.id, is_active: !user.is_active })}
                      className={`inline-flex items-center gap-1 px-2.5 py-0.5 rounded-full text-xs font-medium ${
                        user.is_active ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'
                      }`}
                    >
                      {user.is_active ? <CheckCircleIcon className="w-3.5 h-3.5" /> : <XCircleIcon className="w-3.5 h-3.5" />}
                      {user.is_active ? 'Active' : 'Inactive'}
                    </button>
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                    {user.last_login ? format(new Date(user.last_login), 'MMM d, yyyy') : 'Never'}
                  </td>
                  <td className="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                    <div className="flex items-center justify-end gap-1">
                      <button
                        onClick={() => resetPasswordMutation.mutate(user.id)}
                        className="p-2 text-gray-400 hover:text-yellow-600 hover:bg-yellow-50 rounded-lg"
                        title="Reset Password"
                      >
                        <KeyIcon className="w-5 h-5" />
                      </button>
                      <button
                        onClick={() => openModal(user)}
                        className="p-2 text-gray-400 hover:text-primary-600 hover:bg-primary-50 rounded-lg"
                        title="Edit"
                      >
                        <PencilIcon className="w-5 h-5" />
                      </button>
                      <button
                        onClick={() => {
                          if (confirm('Are you sure you want to delete this user?')) {
                            deleteMutation.mutate(user.id);
                          }
                        }}
                        className="p-2 text-gray-400 hover:text-red-600 hover:bg-red-50 rounded-lg"
                        title="Delete"
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

      {isModalOpen && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-2xl max-w-lg w-full max-h-[90vh] overflow-y-auto">
            <div className="p-6 border-b border-gray-200">
              <div className="flex items-center justify-between">
                <h2 className="text-xl font-bold text-gray-900">{editingUser ? 'Edit User' : 'Add New User'}</h2>
                <button onClick={closeModal} className="p-2 hover:bg-gray-100 rounded-lg">
                  <XMarkIcon className="w-5 h-5" />
                </button>
              </div>
            </div>
            <form onSubmit={handleSubmit(onSubmit)} className="p-6 space-y-4">
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">First Name</label>
                  <input
                    type="text"
                    {...register('first_name', { required: 'First name is required' })}
                    className="input w-full"
                  />
                  {errors.first_name && <p className="text-red-500 text-sm mt-1">{errors.first_name.message}</p>}
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Last Name</label>
                  <input
                    type="text"
                    {...register('last_name', { required: 'Last name is required' })}
                    className="input w-full"
                  />
                  {errors.last_name && <p className="text-red-500 text-sm mt-1">{errors.last_name.message}</p>}
                </div>
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Email</label>
                <input
                  type="email"
                  {...register('email', { required: 'Email is required', pattern: { value: /^\S+@\S+$/i, message: 'Invalid email' } })}
                  className="input w-full"
                />
                {errors.email && <p className="text-red-500 text-sm mt-1">{errors.email.message}</p>}
              </div>

              {!editingUser && (
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Password</label>
                  <input
                    type="password"
                    {...register('password', { required: !editingUser ? 'Password is required' : false, minLength: { value: 8, message: 'Minimum 8 characters' } })}
                    className="input w-full"
                  />
                  {errors.password && <p className="text-red-500 text-sm mt-1">{errors.password.message}</p>}
                </div>
              )}

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Role</label>
                <select {...register('role', { required: 'Role is required' })} className="input w-full">
                  <option value="">Select Role</option>
                  <option value="student">Student</option>
                  <option value="assessor">Assessor</option>
                  <option value="admin">Administrator</option>
                </select>
                {errors.role && <p className="text-red-500 text-sm mt-1">{errors.role.message}</p>}
              </div>

              {selectedRole === 'student' && (
                <>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Level</label>
                  <select {...register('level', { required: 'Level is required' })} className="input w-full">
                    <option value="">Select Level</option>
                    <option value="surgery_1">Surgery I</option>
                    <option value="surgery_2">Surgery II</option>
                    <option value="surgery_3">Surgery III</option>
                    <option value="surgery_4">Surgery IV</option>
                  </select>
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Matriculation Number <span className="text-red-500">*</span></label>
                  <input type="text" {...register('matriculation_number', { required: 'Matriculation number is required' })} className="input w-full" placeholder="e.g., MED/2024/001" />
                  {errors.matriculation_number && <p className="text-red-500 text-sm mt-1">{errors.matriculation_number.message}</p>}
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Phone Number <span className="text-red-500">*</span></label>
                  <input type="text" {...register('phone_number', { required: 'Phone number is required' })} className="input w-full" placeholder="e.g., 08012345678" />
                  {errors.phone_number && <p className="text-red-500 text-sm mt-1">{errors.phone_number.message}</p>}
                </div>
                </>
              )}

              {(selectedRole === 'assessor' || selectedRole === 'admin') && (
                <>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Department</label>
                  <input type="text" {...register('department')} className="input w-full" placeholder="e.g., Surgery" />
                </div>
                {selectedRole === 'assessor' && (
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Staff ID <span className="text-red-500">*</span></label>
                  <input type="text" {...register('staff_id', { required: selectedRole === 'assessor' ? 'Staff ID is required' : false })} className="input w-full" placeholder="e.g., STAFF001" />
                  {errors.staff_id && <p className="text-red-500 text-sm mt-1">{errors.staff_id.message}</p>}
                </div>
                )}
                </>
              )}

              <div className="flex justify-end gap-3 pt-4 border-t border-gray-200">
                <button type="button" onClick={closeModal} className="btn btn-outline">Cancel</button>
                <button type="submit" disabled={createMutation.isPending || updateMutation.isPending} className="btn btn-primary">
                  {createMutation.isPending || updateMutation.isPending ? 'Saving...' : editingUser ? 'Update User' : 'Create User'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* Bulk Upload Modal */}
      {isBulkUploadOpen && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-xl shadow-xl max-w-4xl w-full mx-4 max-h-[90vh] overflow-y-auto">
            <div className="flex items-center justify-between p-6 border-b border-gray-200">
              <div>
                <h2 className="text-xl font-semibold">Bulk Upload Users</h2>
                <p className="text-sm text-gray-500 mt-1">Upload multiple users via CSV file</p>
              </div>
              <button onClick={closeBulkUpload} className="p-2 hover:bg-gray-100 rounded-lg">
                <XMarkIcon className="w-6 h-6" />
              </button>
            </div>

            <div className="p-6 space-y-6">
              {/* Instructions */}
              <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
                <h3 className="font-medium text-blue-800 mb-2">Instructions</h3>
                <ol className="list-decimal list-inside text-sm text-blue-700 space-y-1">
                  <li>Download the CSV template below</li>
                  <li>Fill in user details (email, first_name, last_name, role are required)</li>
                  <li>For students: add matriculation_number, level, phone_number</li>
                  <li>For assessors: add staff_id, title, designation, department</li>
                  <li>Upload the completed CSV file</li>
                  <li>Review the data and click "Upload Users"</li>
                </ol>
              </div>

              {/* Download Template */}
              <div className="flex items-center gap-4">
                <button 
                  onClick={downloadTemplate}
                  className="btn btn-outline flex items-center gap-2"
                >
                  <DocumentArrowDownIcon className="w-5 h-5" />
                  Download Template
                </button>
                
                <div className="flex-1">
                  <input
                    ref={fileInputRef}
                    type="file"
                    accept=".csv"
                    onChange={handleFileUpload}
                    className="block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-lg file:border-0 file:text-sm file:font-medium file:bg-primary-50 file:text-primary-700 hover:file:bg-primary-100"
                  />
                </div>
              </div>

              {/* Preview Data */}
              {bulkUploadData.length > 0 && (
                <div>
                  <h3 className="font-medium text-gray-900 mb-3">Preview ({bulkUploadData.length} users)</h3>
                  <div className="overflow-x-auto border border-gray-200 rounded-lg">
                    <table className="min-w-full divide-y divide-gray-200">
                      <thead className="bg-gray-50">
                        <tr>
                          <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">#</th>
                          <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Email</th>
                          <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Name</th>
                          <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Role</th>
                          <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Extra Info</th>
                        </tr>
                      </thead>
                      <tbody className="bg-white divide-y divide-gray-200">
                        {bulkUploadData.slice(0, 10).map((user, index) => (
                          <tr key={index} className="hover:bg-gray-50">
                            <td className="px-4 py-2 text-sm text-gray-500">{index + 1}</td>
                            <td className="px-4 py-2 text-sm text-gray-900">{user.email}</td>
                            <td className="px-4 py-2 text-sm text-gray-900">{user.first_name} {user.last_name}</td>
                            <td className="px-4 py-2">
                              <span className={`inline-flex items-center px-2 py-1 rounded-full text-xs font-medium ${getRoleColor(user.role)}`}>
                                {user.role}
                              </span>
                            </td>
                            <td className="px-4 py-2 text-sm text-gray-500">
                              {user.role === 'student' && user.matriculation_number}
                              {user.role === 'assessor' && user.staff_id}
                            </td>
                          </tr>
                        ))}
                        {bulkUploadData.length > 10 && (
                          <tr>
                            <td colSpan={5} className="px-4 py-2 text-sm text-gray-500 text-center">
                              ... and {bulkUploadData.length - 10} more users
                            </td>
                          </tr>
                        )}
                      </tbody>
                    </table>
                  </div>
                </div>
              )}

              {/* Upload Results */}
              {bulkUploadResults && (
                <div className="space-y-4">
                  <div className="grid grid-cols-2 gap-4">
                    <div className="bg-green-50 border border-green-200 rounded-lg p-4">
                      <div className="flex items-center gap-2">
                        <CheckCircleIcon className="w-5 h-5 text-green-600" />
                        <span className="font-medium text-green-800">
                          {bulkUploadResults.success.length} users created successfully
                        </span>
                      </div>
                    </div>
                    {bulkUploadResults.failed.length > 0 && (
                      <div className="bg-red-50 border border-red-200 rounded-lg p-4">
                        <div className="flex items-center gap-2">
                          <XCircleIcon className="w-5 h-5 text-red-600" />
                          <span className="font-medium text-red-800">
                            {bulkUploadResults.failed.length} failed
                          </span>
                        </div>
                      </div>
                    )}
                  </div>

                  {/* Show created users with temp passwords */}
                  {bulkUploadResults.success.length > 0 && (
                    <div>
                      <h4 className="font-medium text-gray-900 mb-2">Created Users (save temporary passwords!)</h4>
                      <div className="overflow-x-auto border border-gray-200 rounded-lg max-h-48 overflow-y-auto">
                        <table className="min-w-full divide-y divide-gray-200 text-sm">
                          <thead className="bg-gray-50 sticky top-0">
                            <tr>
                              <th className="px-3 py-2 text-left text-xs font-medium text-gray-500">Email</th>
                              <th className="px-3 py-2 text-left text-xs font-medium text-gray-500">Role</th>
                              <th className="px-3 py-2 text-left text-xs font-medium text-gray-500">Temp Password</th>
                            </tr>
                          </thead>
                          <tbody className="divide-y divide-gray-200">
                            {(bulkUploadResults.success as any[]).map((user, i) => (
                              <tr key={i}>
                                <td className="px-3 py-2">{user.email}</td>
                                <td className="px-3 py-2">{user.role}</td>
                                <td className="px-3 py-2 font-mono text-xs bg-yellow-50">{user.tempPassword}</td>
                              </tr>
                            ))}
                          </tbody>
                        </table>
                      </div>
                    </div>
                  )}

                  {/* Show failed entries */}
                  {bulkUploadResults.failed.length > 0 && (
                    <div>
                      <h4 className="font-medium text-red-800 mb-2">Failed Entries</h4>
                      <div className="bg-red-50 border border-red-200 rounded-lg p-3 max-h-32 overflow-y-auto">
                        {(bulkUploadResults.failed as any[]).map((fail, i) => (
                          <p key={i} className="text-sm text-red-700">
                            Row {fail.row}: {fail.email} - {fail.error}
                          </p>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Actions */}
              <div className="flex justify-end gap-3 pt-4 border-t border-gray-200">
                <button onClick={closeBulkUpload} className="btn btn-outline">
                  {bulkUploadResults ? 'Close' : 'Cancel'}
                </button>
                {!bulkUploadResults && (
                  <button 
                    onClick={handleBulkUpload} 
                    disabled={bulkUploadData.length === 0 || bulkUploadMutation.isPending}
                    className="btn btn-primary flex items-center gap-2"
                  >
                    {bulkUploadMutation.isPending ? (
                      <>
                        <ArrowPathIcon className="w-5 h-5 animate-spin" />
                        Uploading...
                      </>
                    ) : (
                      <>
                        <ArrowUpTrayIcon className="w-5 h-5" />
                        Upload {bulkUploadData.length} Users
                      </>
                    )}
                  </button>
                )}
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
