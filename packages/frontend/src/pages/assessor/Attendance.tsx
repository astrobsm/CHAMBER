import { useState, useEffect } from 'react';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { format, startOfWeek, endOfWeek, eachDayOfInterval, isToday } from 'date-fns';
import { QRCodeSVG } from 'qrcode.react';
import {
  QrCodeIcon,
  UserGroupIcon,
  CheckCircleIcon,
  XCircleIcon,
  ClockIcon,
  ArrowPathIcon,
  CalendarIcon,
  ChevronLeftIcon,
  ChevronRightIcon,
  MagnifyingGlassIcon,
  FunnelIcon,
} from '@heroicons/react/24/outline';
import toast from 'react-hot-toast';
import { attendanceApi, rotationsApi } from '../../services/api';

interface AttendanceRecord {
  id: string;
  student_id: string;
  student_name: string;
  student_level: string;
  check_in_time: string;
  check_out_time: string | null;
  status: 'present' | 'absent' | 'late' | 'excused';
  location_verified: boolean;
}

interface QRSession {
  id: string;
  code: string;
  expires_at: string;
  rotation_id: string;
}

export default function AssessorAttendance() {
  const [selectedDate, setSelectedDate] = useState(new Date());
  const [selectedRotation, setSelectedRotation] = useState<string>('');
  const [qrSession, setQrSession] = useState<QRSession | null>(null);
  const [qrTimeLeft, setQrTimeLeft] = useState(0);
  const [searchQuery, setSearchQuery] = useState('');
  const [statusFilter, setStatusFilter] = useState<string>('all');
  const queryClient = useQueryClient();

  const { data: rotations } = useQuery({
    queryKey: ['assessor-rotations'],
    queryFn: async () => {
      const response = await rotationsApi.getAll();
      return response.data?.data || response.data || [];
    },
  });

  const { data: attendanceData, isLoading } = useQuery({
    queryKey: ['attendance', selectedDate, selectedRotation],
    queryFn: async () => {
      const response = await attendanceApi.getByDate(
        format(selectedDate, 'yyyy-MM-dd'),
        selectedRotation || undefined
      );
      return response.data;
    },
    enabled: !!selectedRotation,
  });

  const generateQRMutation = useMutation({
    mutationFn: async () => {
      const response = await attendanceApi.generateQRCode(selectedRotation);
      return response.data;
    },
    onSuccess: (data) => {
      setQrSession(data);
      toast.success('QR Code generated!');
    },
    onError: () => {
      toast.error('Failed to generate QR code');
    },
  });

  const markAttendanceMutation = useMutation({
    mutationFn: async ({ studentId, status }: { studentId: string; status: string }) => {
      const response = await attendanceApi.markManual({
        student_id: studentId,
        date: format(selectedDate, 'yyyy-MM-dd'),
        status,
        rotation_id: selectedRotation,
      });
      return response.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['attendance'] });
      toast.success('Attendance updated');
    },
    onError: () => {
      toast.error('Failed to update attendance');
    },
  });

  useEffect(() => {
    if (!qrSession) return;

    const expiresAt = new Date(qrSession.expires_at).getTime();
    const updateTimer = () => {
      const now = Date.now();
      const timeLeft = Math.max(0, Math.floor((expiresAt - now) / 1000));
      setQrTimeLeft(timeLeft);
      if (timeLeft === 0) setQrSession(null);
    };

    updateTimer();
    const interval = setInterval(updateTimer, 1000);
    return () => clearInterval(interval);
  }, [qrSession]);

  const weekStart = startOfWeek(selectedDate, { weekStartsOn: 1 });
  const weekEnd = endOfWeek(selectedDate, { weekStartsOn: 1 });
  const weekDays = eachDayOfInterval({ start: weekStart, end: weekEnd });

  const filteredAttendance = attendanceData?.records?.filter((record: AttendanceRecord) => {
    const matchesSearch = record.student_name.toLowerCase().includes(searchQuery.toLowerCase());
    const matchesStatus = statusFilter === 'all' || record.status === statusFilter;
    return matchesSearch && matchesStatus;
  }) || [];

  const stats = {
    total: attendanceData?.records?.length || 0,
    present: attendanceData?.records?.filter((r: AttendanceRecord) => r.status === 'present').length || 0,
    absent: attendanceData?.records?.filter((r: AttendanceRecord) => r.status === 'absent').length || 0,
    late: attendanceData?.records?.filter((r: AttendanceRecord) => r.status === 'late').length || 0,
  };

  const formatTime = (seconds: number) => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}:${secs.toString().padStart(2, '0')}`;
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Attendance Management</h1>
          <p className="text-gray-600 mt-1">Track and manage student attendance</p>
        </div>
        <div className="flex items-center gap-4">
          <select
            value={selectedRotation}
            onChange={(e) => setSelectedRotation(e.target.value)}
            className="input"
          >
            <option value="">Select Rotation</option>
            {rotations?.map((rotation: any) => (
              <option key={rotation.id} value={rotation.id}>
                {rotation.name}
              </option>
            ))}
          </select>
          <button
            onClick={() => generateQRMutation.mutate()}
            disabled={!selectedRotation || generateQRMutation.isPending}
            className="btn btn-primary flex items-center gap-2"
          >
            <QrCodeIcon className="w-5 h-5" />
            Generate QR
          </button>
        </div>
      </div>

      {qrSession && (
        <div className="card bg-primary-50 border-primary-200">
          <div className="flex items-start justify-between">
            <div>
              <h3 className="text-lg font-semibold text-primary-900">Attendance QR Code</h3>
              <p className="text-primary-700 mt-1">Students can scan this code to mark attendance</p>
            </div>
            <div className="text-right">
              <div className="text-2xl font-bold text-primary-900">{formatTime(qrTimeLeft)}</div>
              <p className="text-sm text-primary-600">Time remaining</p>
            </div>
          </div>
          <div className="mt-6 flex justify-center">
            <div className="bg-white p-6 rounded-xl shadow-lg">
              <QRCodeSVG
                value={JSON.stringify({
                  type: 'attendance',
                  code: qrSession.code,
                  rotation_id: qrSession.rotation_id,
                  expires_at: qrSession.expires_at,
                })}
                size={250}
                level="H"
                includeMargin
              />
            </div>
          </div>
          <div className="mt-4 flex justify-center gap-4">
            <button onClick={() => generateQRMutation.mutate()} className="btn btn-secondary flex items-center gap-2">
              <ArrowPathIcon className="w-4 h-4" />
              Regenerate
            </button>
            <button onClick={() => setQrSession(null)} className="btn btn-outline">Close</button>
          </div>
        </div>
      )}

      <div className="card">
        <div className="flex items-center justify-between mb-4">
          <button
            onClick={() => setSelectedDate(new Date(selectedDate.setDate(selectedDate.getDate() - 7)))}
            className="p-2 hover:bg-gray-100 rounded-lg"
          >
            <ChevronLeftIcon className="w-5 h-5" />
          </button>
          <h3 className="font-semibold text-gray-900">Week of {format(weekStart, 'MMMM d, yyyy')}</h3>
          <button
            onClick={() => setSelectedDate(new Date(selectedDate.setDate(selectedDate.getDate() + 7)))}
            className="p-2 hover:bg-gray-100 rounded-lg"
          >
            <ChevronRightIcon className="w-5 h-5" />
          </button>
        </div>
        <div className="grid grid-cols-7 gap-2">
          {weekDays.map((day) => (
            <button
              key={day.toISOString()}
              onClick={() => setSelectedDate(day)}
              className={`p-3 rounded-lg text-center transition-colors ${
                format(day, 'yyyy-MM-dd') === format(selectedDate, 'yyyy-MM-dd')
                  ? 'bg-primary-600 text-white'
                  : isToday(day)
                  ? 'bg-primary-100 text-primary-900'
                  : 'hover:bg-gray-100'
              }`}
            >
              <div className="text-xs font-medium">{format(day, 'EEE')}</div>
              <div className="text-lg font-bold">{format(day, 'd')}</div>
            </button>
          ))}
        </div>
      </div>

      <div className="grid grid-cols-4 gap-4">
        <div className="card bg-blue-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-blue-100 rounded-xl">
              <UserGroupIcon className="w-6 h-6 text-blue-600" />
            </div>
            <div>
              <p className="text-sm text-blue-600">Total Students</p>
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
              <p className="text-sm text-green-600">Present</p>
              <p className="text-2xl font-bold text-green-900">{stats.present}</p>
            </div>
          </div>
        </div>
        <div className="card bg-red-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-red-100 rounded-xl">
              <XCircleIcon className="w-6 h-6 text-red-600" />
            </div>
            <div>
              <p className="text-sm text-red-600">Absent</p>
              <p className="text-2xl font-bold text-red-900">{stats.absent}</p>
            </div>
          </div>
        </div>
        <div className="card bg-yellow-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-yellow-100 rounded-xl">
              <ClockIcon className="w-6 h-6 text-yellow-600" />
            </div>
            <div>
              <p className="text-sm text-yellow-600">Late</p>
              <p className="text-2xl font-bold text-yellow-900">{stats.late}</p>
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
              placeholder="Search students..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="input pl-10 w-full"
            />
          </div>
          <div className="flex items-center gap-2">
            <FunnelIcon className="w-5 h-5 text-gray-400" />
            <select value={statusFilter} onChange={(e) => setStatusFilter(e.target.value)} className="input">
              <option value="all">All Status</option>
              <option value="present">Present</option>
              <option value="absent">Absent</option>
              <option value="late">Late</option>
              <option value="excused">Excused</option>
            </select>
          </div>
        </div>
      </div>

      <div className="card overflow-hidden">
        <div className="overflow-x-auto">
          {!selectedRotation ? (
            <div className="text-center py-12">
              <CalendarIcon className="w-16 h-16 text-gray-300 mx-auto mb-4" />
              <h3 className="text-lg font-medium text-gray-900">Select a Rotation</h3>
              <p className="text-gray-500 mt-1">Choose a rotation to view and manage attendance</p>
            </div>
          ) : isLoading ? (
            <div className="text-center py-12">
              <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto" />
              <p className="text-gray-500 mt-4">Loading attendance...</p>
            </div>
          ) : filteredAttendance.length === 0 ? (
            <div className="text-center py-12">
              <UserGroupIcon className="w-16 h-16 text-gray-300 mx-auto mb-4" />
              <h3 className="text-lg font-medium text-gray-900">No Records Found</h3>
              <p className="text-gray-500 mt-1">No attendance records match your criteria</p>
            </div>
          ) : (
            <table className="min-w-full divide-y divide-gray-200">
              <thead className="bg-gray-50">
                <tr>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Student</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Level</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Check In</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Check Out</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Location</th>
                  <th className="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase">Actions</th>
                </tr>
              </thead>
              <tbody className="bg-white divide-y divide-gray-200">
                {filteredAttendance.map((record: AttendanceRecord) => (
                  <tr key={record.id} className="hover:bg-gray-50">
                    <td className="px-6 py-4 whitespace-nowrap">
                      <div className="flex items-center">
                        <div className="w-10 h-10 rounded-full bg-primary-100 flex items-center justify-center">
                          <span className="text-primary-700 font-medium">
                            {record.student_name.split(' ').map(n => n[0]).join('')}
                          </span>
                        </div>
                        <div className="ml-4">
                          <div className="text-sm font-medium text-gray-900">{record.student_name}</div>
                        </div>
                      </div>
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-900">{record.student_level}</td>
                    <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                      {record.check_in_time ? format(new Date(record.check_in_time), 'h:mm a') : '-'}
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                      {record.check_out_time ? format(new Date(record.check_out_time), 'h:mm a') : '-'}
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap">
                      <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${
                        record.status === 'present' ? 'bg-green-100 text-green-800'
                          : record.status === 'absent' ? 'bg-red-100 text-red-800'
                          : record.status === 'late' ? 'bg-yellow-100 text-yellow-800'
                          : 'bg-blue-100 text-blue-800'
                      }`}>
                        {record.status.charAt(0).toUpperCase() + record.status.slice(1)}
                      </span>
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap">
                      {record.location_verified ? (
                        <CheckCircleIcon className="w-5 h-5 text-green-500" />
                      ) : (
                        <XCircleIcon className="w-5 h-5 text-gray-300" />
                      )}
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                      <select
                        value={record.status}
                        onChange={(e) => markAttendanceMutation.mutate({ studentId: record.student_id, status: e.target.value })}
                        className="input text-sm py-1"
                      >
                        <option value="present">Present</option>
                        <option value="absent">Absent</option>
                        <option value="late">Late</option>
                        <option value="excused">Excused</option>
                      </select>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          )}
        </div>
      </div>
    </div>
  );
}
