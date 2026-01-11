import { useState } from 'react';
import { useForm } from 'react-hook-form';
import { useAuth } from '../../contexts/AuthContext';
import { authApi } from '../../services/api';
import toast from 'react-hot-toast';
import {
  UserCircleIcon,
  EnvelopeIcon,
  PhoneIcon,
  AcademicCapIcon,
  LockClosedIcon,
  CameraIcon,
} from '@heroicons/react/24/outline';

interface ProfileFormData {
  firstName: string;
  lastName: string;
  phoneNumber: string;
}

interface PasswordFormData {
  currentPassword: string;
  newPassword: string;
  confirmPassword: string;
}

export function StudentProfile() {
  const { user, updateProfile } = useAuth();
  const [isUpdating, setIsUpdating] = useState(false);
  const [isChangingPassword, setIsChangingPassword] = useState(false);
  const [showPasswordForm, setShowPasswordForm] = useState(false);

  const profileForm = useForm<ProfileFormData>({
    defaultValues: {
      firstName: user?.firstName || '',
      lastName: user?.lastName || '',
      phoneNumber: user?.phoneNumber || '',
    },
  });

  const passwordForm = useForm<PasswordFormData>({
    defaultValues: {
      currentPassword: '',
      newPassword: '',
      confirmPassword: '',
    },
  });

  const handleProfileUpdate = async (data: ProfileFormData) => {
    setIsUpdating(true);
    try {
      await updateProfile(data);
    } catch {
      // Error handled in context
    } finally {
      setIsUpdating(false);
    }
  };

  const handlePasswordChange = async (data: PasswordFormData) => {
    if (data.newPassword !== data.confirmPassword) {
      toast.error('Passwords do not match');
      return;
    }

    setIsChangingPassword(true);
    try {
      await authApi.changePassword(data.currentPassword, data.newPassword);
      toast.success('Password changed successfully');
      passwordForm.reset();
      setShowPasswordForm(false);
    } catch {
      toast.error('Failed to change password');
    } finally {
      setIsChangingPassword(false);
    }
  };

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-2xl font-bold text-gray-900">Profile</h1>
        <p className="text-gray-600">Manage your account settings and preferences</p>
      </div>

      {/* Profile Card */}
      <div className="card">
        <div className="flex flex-col sm:flex-row items-start gap-6">
          {/* Avatar */}
          <div className="relative">
            <div className="w-24 h-24 bg-primary-100 rounded-full flex items-center justify-center">
              {user?.profileImage ? (
                <img
                  src={user.profileImage}
                  alt="Profile"
                  className="w-24 h-24 rounded-full object-cover"
                />
              ) : (
                <span className="text-3xl font-bold text-primary-600">
                  {user?.firstName?.charAt(0)}{user?.lastName?.charAt(0)}
                </span>
              )}
            </div>
            <button className="absolute bottom-0 right-0 w-8 h-8 bg-primary-600 text-white rounded-full flex items-center justify-center hover:bg-primary-700">
              <CameraIcon className="w-4 h-4" />
            </button>
          </div>

          {/* Info */}
          <div className="flex-1">
            <h2 className="text-xl font-bold text-gray-900">
              {user?.firstName} {user?.lastName}
            </h2>
            <p className="text-gray-500 capitalize">{user?.role}</p>
            
            <div className="mt-4 grid grid-cols-1 sm:grid-cols-2 gap-3 text-sm">
              <div className="flex items-center gap-2 text-gray-600">
                <EnvelopeIcon className="w-4 h-4" />
                {user?.email}
              </div>
              {user?.phoneNumber && (
                <div className="flex items-center gap-2 text-gray-600">
                  <PhoneIcon className="w-4 h-4" />
                  {user.phoneNumber}
                </div>
              )}
              {user?.matricNumber && (
                <div className="flex items-center gap-2 text-gray-600">
                  <AcademicCapIcon className="w-4 h-4" />
                  {user.matricNumber}
                </div>
              )}
              {user?.level && (
                <div className="flex items-center gap-2 text-gray-600">
                  <UserCircleIcon className="w-4 h-4" />
                  {user.level}
                </div>
              )}
            </div>
          </div>
        </div>
      </div>

      {/* Edit Profile Form */}
      <div className="card">
        <h3 className="font-semibold text-gray-900 mb-4">Edit Profile</h3>
        <form onSubmit={profileForm.handleSubmit(handleProfileUpdate)} className="space-y-4">
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <div>
              <label className="label">First Name</label>
              <input
                type="text"
                className="input"
                {...profileForm.register('firstName', { required: true })}
              />
            </div>
            <div>
              <label className="label">Last Name</label>
              <input
                type="text"
                className="input"
                {...profileForm.register('lastName', { required: true })}
              />
            </div>
          </div>
          <div>
            <label className="label">Phone Number</label>
            <input
              type="tel"
              className="input"
              {...profileForm.register('phoneNumber')}
            />
          </div>
          <div>
            <label className="label">Email (cannot be changed)</label>
            <input
              type="email"
              className="input bg-gray-100"
              value={user?.email || ''}
              disabled
            />
          </div>
          <button
            type="submit"
            disabled={isUpdating}
            className="btn-primary"
          >
            {isUpdating ? 'Saving...' : 'Save Changes'}
          </button>
        </form>
      </div>

      {/* Change Password */}
      <div className="card">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h3 className="font-semibold text-gray-900">Password</h3>
            <p className="text-sm text-gray-500">Change your account password</p>
          </div>
          <button
            onClick={() => setShowPasswordForm(!showPasswordForm)}
            className="btn-outline text-sm"
          >
            <LockClosedIcon className="w-4 h-4 mr-2" />
            {showPasswordForm ? 'Cancel' : 'Change Password'}
          </button>
        </div>

        {showPasswordForm && (
          <form onSubmit={passwordForm.handleSubmit(handlePasswordChange)} className="space-y-4 border-t pt-4">
            <div>
              <label className="label">Current Password</label>
              <input
                type="password"
                className="input"
                {...passwordForm.register('currentPassword', { required: true })}
              />
            </div>
            <div>
              <label className="label">New Password</label>
              <input
                type="password"
                className="input"
                {...passwordForm.register('newPassword', { 
                  required: true,
                  minLength: { value: 8, message: 'Minimum 8 characters' }
                })}
              />
            </div>
            <div>
              <label className="label">Confirm New Password</label>
              <input
                type="password"
                className="input"
                {...passwordForm.register('confirmPassword', { required: true })}
              />
            </div>
            <button
              type="submit"
              disabled={isChangingPassword}
              className="btn-primary"
            >
              {isChangingPassword ? 'Changing...' : 'Change Password'}
            </button>
          </form>
        )}
      </div>

      {/* Account Info */}
      <div className="card bg-gray-50">
        <h3 className="font-semibold text-gray-900 mb-4">Account Information</h3>
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 text-sm">
          <div>
            <p className="text-gray-500">Account Status</p>
            <p className="font-medium text-green-600">Active</p>
          </div>
          <div>
            <p className="text-gray-500">Member Since</p>
            <p className="font-medium text-gray-900">
              {user?.createdAt ? new Date(user.createdAt).toLocaleDateString() : '-'}
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default StudentProfile;
