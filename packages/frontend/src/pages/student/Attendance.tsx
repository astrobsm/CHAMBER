import { useQuery } from '@tanstack/react-query';
import { attendanceApi } from '../../services/api';
import {
  ClockIcon,
  CheckCircleIcon,
  XCircleIcon,
  CalendarIcon,
  QrCodeIcon,
} from '@heroicons/react/24/outline';
import { format, startOfMonth, endOfMonth, eachDayOfInterval, isSameDay, isToday } from 'date-fns';
import { useState } from 'react';

interface AttendanceRecord {
  id: string;
  date: string;
  sessionType: string;
  status: 'present' | 'absent' | 'late' | 'excused';
  checkInTime?: string;
  location?: string;
}

interface AttendanceSummary {
  totalSessions: number;
  attended: number;
  absent: number;
  late: number;
  excused: number;
  attendanceRate: number;
}

export function StudentAttendance() {
  const [selectedMonth, setSelectedMonth] = useState(new Date());
  const [showScanner, setShowScanner] = useState(false);

  const { data: summaryData, isLoading: summaryLoading } = useQuery({
    queryKey: ['attendance-summary'],
    queryFn: () => attendanceApi.getSummary(),
  });

  const { data: recordsData, isLoading: recordsLoading } = useQuery({
    queryKey: ['my-attendance'],
    queryFn: () => attendanceApi.getMyAttendance(),
  });

  const summary: AttendanceSummary = summaryData?.data || {
    totalSessions: 0,
    attended: 0,
    absent: 0,
    late: 0,
    excused: 0,
    attendanceRate: 0,
  };

  const records: AttendanceRecord[] = recordsData?.data || [];

  // Calendar data
  const monthStart = startOfMonth(selectedMonth);
  const monthEnd = endOfMonth(selectedMonth);
  const days = eachDayOfInterval({ start: monthStart, end: monthEnd });

  const getAttendanceForDay = (date: Date) => {
    return records.find(r => isSameDay(new Date(r.date), date));
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'present':
        return 'bg-green-500';
      case 'late':
        return 'bg-amber-500';
      case 'absent':
        return 'bg-red-500';
      case 'excused':
        return 'bg-blue-500';
      default:
        return 'bg-gray-300';
    }
  };

  if (summaryLoading || recordsLoading) {
    return (
      <div className="animate-pulse space-y-6">
        <div className="h-8 bg-gray-200 rounded w-1/4"></div>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          {[1, 2, 3, 4].map((i) => (
            <div key={i} className="h-24 bg-gray-200 rounded-xl"></div>
          ))}
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Attendance</h1>
          <p className="text-gray-600">Track your clinical session attendance</p>
        </div>
        <button
          onClick={() => setShowScanner(true)}
          className="btn-primary flex items-center gap-2"
        >
          <QrCodeIcon className="w-5 h-5" />
          Scan QR Code
        </button>
      </div>

      {/* Summary Cards */}
      <div className="grid grid-cols-2 lg:grid-cols-5 gap-4">
        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-primary-100 rounded-lg flex items-center justify-center">
              <CalendarIcon className="w-5 h-5 text-primary-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Total Sessions</p>
              <p className="text-xl font-bold text-gray-900">{summary.totalSessions}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-green-100 rounded-lg flex items-center justify-center">
              <CheckCircleIcon className="w-5 h-5 text-green-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Present</p>
              <p className="text-xl font-bold text-green-600">{summary.attended}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-amber-100 rounded-lg flex items-center justify-center">
              <ClockIcon className="w-5 h-5 text-amber-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Late</p>
              <p className="text-xl font-bold text-amber-600">{summary.late}</p>
            </div>
          </div>
        </div>

        <div className="card">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-red-100 rounded-lg flex items-center justify-center">
              <XCircleIcon className="w-5 h-5 text-red-600" />
            </div>
            <div>
              <p className="text-sm text-gray-500">Absent</p>
              <p className="text-xl font-bold text-red-600">{summary.absent}</p>
            </div>
          </div>
        </div>

        <div className="card col-span-2 lg:col-span-1">
          <div className="text-center">
            <p className="text-sm text-gray-500 mb-1">Attendance Rate</p>
            <p className={`text-3xl font-bold ${
              summary.attendanceRate >= 75 ? 'text-green-600' : 'text-red-600'
            }`}>
              {summary.attendanceRate}%
            </p>
            <p className="text-xs text-gray-400 mt-1">75% required</p>
          </div>
        </div>
      </div>

      {/* Calendar */}
      <div className="card">
        <div className="flex items-center justify-between mb-6">
          <h3 className="font-semibold text-gray-900">Attendance Calendar</h3>
          <div className="flex items-center gap-2">
            <button
              onClick={() => setSelectedMonth(new Date(selectedMonth.getFullYear(), selectedMonth.getMonth() - 1))}
              className="p-2 hover:bg-gray-100 rounded-lg"
            >
              ←
            </button>
            <span className="font-medium text-gray-900 w-36 text-center">
              {format(selectedMonth, 'MMMM yyyy')}
            </span>
            <button
              onClick={() => setSelectedMonth(new Date(selectedMonth.getFullYear(), selectedMonth.getMonth() + 1))}
              className="p-2 hover:bg-gray-100 rounded-lg"
            >
              →
            </button>
          </div>
        </div>

        <div className="grid grid-cols-7 gap-1 mb-2">
          {['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].map(day => (
            <div key={day} className="text-center text-sm font-medium text-gray-500 py-2">
              {day}
            </div>
          ))}
        </div>

        <div className="grid grid-cols-7 gap-1">
          {Array.from({ length: monthStart.getDay() }).map((_, i) => (
            <div key={`empty-${i}`} className="aspect-square"></div>
          ))}
          {days.map(day => {
            const record = getAttendanceForDay(day);
            return (
              <div
                key={day.toISOString()}
                className={`aspect-square p-1 rounded-lg ${
                  isToday(day) ? 'ring-2 ring-primary-500' : ''
                }`}
              >
                <div className={`h-full rounded-lg flex flex-col items-center justify-center ${
                  record ? 'bg-gray-50' : ''
                }`}>
                  <span className={`text-sm ${isToday(day) ? 'font-bold' : ''}`}>
                    {format(day, 'd')}
                  </span>
                  {record && (
                    <div className={`w-2 h-2 rounded-full mt-1 ${getStatusColor(record.status)}`}></div>
                  )}
                </div>
              </div>
            );
          })}
        </div>

        <div className="flex items-center justify-center gap-6 mt-4 pt-4 border-t text-sm">
          <span className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-green-500"></div> Present
          </span>
          <span className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-amber-500"></div> Late
          </span>
          <span className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-red-500"></div> Absent
          </span>
          <span className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-blue-500"></div> Excused
          </span>
        </div>
      </div>

      {/* Recent Records */}
      <div className="card">
        <h3 className="font-semibold text-gray-900 mb-4">Recent Attendance</h3>
        <div className="divide-y">
          {records.slice(0, 10).map(record => (
            <div key={record.id} className="py-3 flex items-center justify-between">
              <div>
                <p className="font-medium text-gray-900">
                  {format(new Date(record.date), 'EEEE, MMMM d, yyyy')}
                </p>
                <p className="text-sm text-gray-500">
                  {record.sessionType.replace(/_/g, ' ')} • {record.location}
                </p>
              </div>
              <div className="text-right">
                <span className={`badge ${
                  record.status === 'present' ? 'badge-success' :
                  record.status === 'late' ? 'badge-warning' :
                  record.status === 'absent' ? 'badge-danger' :
                  'badge-info'
                }`}>
                  {record.status}
                </span>
                {record.checkInTime && (
                  <p className="text-xs text-gray-500 mt-1">
                    Checked in at {format(new Date(record.checkInTime), 'h:mm a')}
                  </p>
                )}
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* QR Scanner Modal */}
      {showScanner && (
        <div className="fixed inset-0 z-50 bg-black/50 flex items-center justify-center p-4">
          <div className="card max-w-md w-full">
            <div className="flex items-center justify-between mb-4">
              <h3 className="font-semibold text-gray-900">Scan Attendance QR</h3>
              <button
                onClick={() => setShowScanner(false)}
                className="p-2 hover:bg-gray-100 rounded-lg"
              >
                ✕
              </button>
            </div>
            <div className="aspect-square bg-gray-100 rounded-xl flex items-center justify-center">
              <div className="text-center text-gray-500">
                <QrCodeIcon className="w-16 h-16 mx-auto mb-4" />
                <p>Camera access required for QR scanning</p>
                <p className="text-sm mt-2">Position the QR code within the frame</p>
              </div>
            </div>
            <button
              onClick={() => setShowScanner(false)}
              className="btn-outline w-full mt-4"
            >
              Cancel
            </button>
          </div>
        </div>
      )}
    </div>
  );
}

export default StudentAttendance;
