import { useQuery } from '@tanstack/react-query';
import { rotationsApi } from '../../services/api';
import { StudentRotation } from '../../types';
import {
  AcademicCapIcon,
  CalendarIcon,
  CheckCircleIcon,
  ClockIcon,
  ArrowRightIcon,
} from '@heroicons/react/24/outline';
import { format, differenceInDays } from 'date-fns';

export function StudentRotations() {
  const { data, isLoading } = useQuery({
    queryKey: ['my-rotations'],
    queryFn: rotationsApi.getMyRotations,
  });

  const rotations: StudentRotation[] = data?.data || [];

  const currentRotation = rotations.find(r => r.status === 'in_progress');
  const completedRotations = rotations.filter(r => r.status === 'completed');
  const upcomingRotations = rotations.filter(r => r.status === 'enrolled');

  if (isLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/4"></div>
        <div className="h-48 bg-gray-200 rounded-xl"></div>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {[1, 2, 3, 4].map((i) => (
            <div key={i} className="h-32 bg-gray-200 rounded-xl"></div>
          ))}
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-2xl font-bold text-gray-900">My Rotations</h1>
        <p className="text-gray-600">Track your clinical rotation progress</p>
      </div>

      {/* Current Rotation */}
      {currentRotation && (
        <div className="card border-l-4 border-l-primary-500">
          <div className="flex items-start justify-between">
            <div>
              <span className="badge badge-info mb-2">Current Rotation</span>
              <h2 className="text-xl font-bold text-gray-900">{currentRotation.rotation.name}</h2>
              <p className="text-gray-600">{currentRotation.rotation.department}</p>
            </div>
            <div className="text-right">
              <span className={`badge ${
                currentRotation.isCleared ? 'badge-success' : 'badge-warning'
              }`}>
                {currentRotation.isCleared ? 'Cleared' : 'In Progress'}
              </span>
            </div>
          </div>

          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mt-6">
            <div className="bg-gray-50 rounded-lg p-3">
              <div className="flex items-center gap-2 text-gray-500 mb-1">
                <CalendarIcon className="w-4 h-4" />
                <span className="text-sm">Duration</span>
              </div>
              <p className="font-semibold">{currentRotation.rotation.durationWeeks} weeks</p>
            </div>
            <div className="bg-gray-50 rounded-lg p-3">
              <div className="flex items-center gap-2 text-gray-500 mb-1">
                <ClockIcon className="w-4 h-4" />
                <span className="text-sm">Days Left</span>
              </div>
              <p className="font-semibold">
                {differenceInDays(new Date(currentRotation.rotation.endDate), new Date())}
              </p>
            </div>
            <div className="bg-gray-50 rounded-lg p-3">
              <div className="flex items-center gap-2 text-gray-500 mb-1">
                <CheckCircleIcon className="w-4 h-4" />
                <span className="text-sm">Attendance</span>
              </div>
              <p className={`font-semibold ${
                currentRotation.attendanceRate >= 75 ? 'text-green-600' : 'text-amber-600'
              }`}>
                {currentRotation.attendanceRate}%
              </p>
            </div>
            <div className="bg-gray-50 rounded-lg p-3">
              <div className="flex items-center gap-2 text-gray-500 mb-1">
                <AcademicCapIcon className="w-4 h-4" />
                <span className="text-sm">Avg. Score</span>
              </div>
              <p className={`font-semibold ${
                currentRotation.averageScore >= 75 ? 'text-green-600' : 'text-amber-600'
              }`}>
                {currentRotation.averageScore}%
              </p>
            </div>
          </div>

          <div className="mt-4">
            <div className="flex justify-between text-sm text-gray-600 mb-2">
              <span>Progress</span>
              <span>
                {format(new Date(currentRotation.rotation.startDate), 'MMM d')} - {format(new Date(currentRotation.rotation.endDate), 'MMM d, yyyy')}
              </span>
            </div>
            <div className="progress-bar h-3">
              <div
                className="progress-bar-fill bg-primary-500"
                style={{
                  width: `${Math.min(
                    ((differenceInDays(new Date(), new Date(currentRotation.rotation.startDate)) /
                      (currentRotation.rotation.durationWeeks * 7)) *
                      100),
                    100
                  )}%`,
                }}
              />
            </div>
          </div>
        </div>
      )}

      {/* Upcoming Rotations */}
      {upcomingRotations.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4">Upcoming Rotations</h3>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {upcomingRotations.map((rotation) => (
              <div key={rotation.id} className="card-hover">
                <div className="flex items-start justify-between">
                  <div>
                    <h4 className="font-semibold text-gray-900">{rotation.rotation.name}</h4>
                    <p className="text-sm text-gray-600">{rotation.rotation.department}</p>
                  </div>
                  <span className="badge badge-info">Enrolled</span>
                </div>
                <div className="mt-4 flex items-center gap-4 text-sm text-gray-500">
                  <span className="flex items-center gap-1">
                    <CalendarIcon className="w-4 h-4" />
                    Starts {format(new Date(rotation.rotation.startDate), 'MMM d, yyyy')}
                  </span>
                  <span className="flex items-center gap-1">
                    <ClockIcon className="w-4 h-4" />
                    {rotation.rotation.durationWeeks} weeks
                  </span>
                </div>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Completed Rotations */}
      {completedRotations.length > 0 && (
        <div>
          <h3 className="font-semibold text-gray-900 mb-4">Completed Rotations</h3>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {completedRotations.map((rotation) => (
              <div key={rotation.id} className="card bg-gray-50">
                <div className="flex items-start justify-between">
                  <div>
                    <h4 className="font-semibold text-gray-900">{rotation.rotation.name}</h4>
                    <p className="text-sm text-gray-600">{rotation.rotation.department}</p>
                  </div>
                  <span className={`badge ${rotation.isCleared ? 'badge-success' : 'badge-danger'}`}>
                    {rotation.isCleared ? 'Cleared' : 'Not Cleared'}
                  </span>
                </div>
                <div className="mt-4 grid grid-cols-3 gap-2 text-center">
                  <div>
                    <p className="text-lg font-semibold text-gray-900">{rotation.attendanceRate}%</p>
                    <p className="text-xs text-gray-500">Attendance</p>
                  </div>
                  <div>
                    <p className="text-lg font-semibold text-gray-900">{rotation.averageScore}%</p>
                    <p className="text-xs text-gray-500">Avg Score</p>
                  </div>
                  <div>
                    <p className="text-lg font-semibold text-gray-900">{rotation.rotation.durationWeeks}w</p>
                    <p className="text-xs text-gray-500">Duration</p>
                  </div>
                </div>
                {rotation.clearanceDate && (
                  <p className="mt-3 text-xs text-gray-500 flex items-center gap-1">
                    <CheckCircleIcon className="w-4 h-4 text-green-500" />
                    Cleared on {format(new Date(rotation.clearanceDate), 'MMM d, yyyy')}
                  </p>
                )}
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Empty State */}
      {rotations.length === 0 && (
        <div className="card text-center py-12">
          <AcademicCapIcon className="w-16 h-16 mx-auto text-gray-300 mb-4" />
          <h3 className="text-lg font-semibold text-gray-900 mb-2">No Rotations Yet</h3>
          <p className="text-gray-600 mb-4">You haven't been enrolled in any rotations.</p>
          <button className="btn-primary inline-flex items-center gap-2">
            Browse Available Rotations
            <ArrowRightIcon className="w-4 h-4" />
          </button>
        </div>
      )}
    </div>
  );
}

export default StudentRotations;
