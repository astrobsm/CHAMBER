import { useState } from 'react';
import { useQuery } from '@tanstack/react-query';
import { format } from 'date-fns';
import {
  UserGroupIcon,
  MagnifyingGlassIcon,
  FunnelIcon,
  AcademicCapIcon,
  ChartBarIcon,
  CheckCircleIcon,
  XCircleIcon,
  EyeIcon,
  ArrowDownTrayIcon,
  DocumentArrowDownIcon,
} from '@heroicons/react/24/outline';
import { studentsApi, rotationsApi } from '../../services/api';
import { generateStudentPerformanceReport } from '../../utils/pdfReport';

interface Student {
  id: string;
  first_name: string;
  last_name: string;
  email: string;
  level: string;
  current_rotation?: {
    id: string;
    name: string;
    progress: number;
  };
  attendance_rate: number;
  test_average: number;
  clearance_status: 'cleared' | 'pending' | 'at_risk';
  last_activity: string;
}

export default function AssessorStudents() {
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedLevel, setSelectedLevel] = useState<string>('');
  const [selectedRotation, setSelectedRotation] = useState<string>('');
  const [selectedStudent, setSelectedStudent] = useState<Student | null>(null);

  const { data: rotations } = useQuery({
    queryKey: ['rotations'],
    queryFn: async () => {
      const response = await rotationsApi.getAll();
      return response.data?.data || response.data || [];
    },
  });

  const { data: studentsData, isLoading } = useQuery({
    queryKey: ['students', selectedLevel, selectedRotation],
    queryFn: async () => {
      const response = await studentsApi.getAll({
        level: selectedLevel || undefined,
        rotation_id: selectedRotation || undefined,
      });
      return response.data;
    },
  });

  const { data: studentDetails } = useQuery({
    queryKey: ['student-details', selectedStudent?.id],
    queryFn: async () => {
      if (!selectedStudent) return null;
      const response = await studentsApi.getById(selectedStudent.id);
      return response.data;
    },
    enabled: !!selectedStudent,
  });

  const filteredStudents = studentsData?.students?.filter((student: Student) => {
    const fullName = `${student.first_name} ${student.last_name}`.toLowerCase();
    return fullName.includes(searchQuery.toLowerCase()) || student.email.toLowerCase().includes(searchQuery.toLowerCase());
  }) || [];

  const stats = {
    total: studentsData?.students?.length || 0,
    cleared: studentsData?.students?.filter((s: Student) => s.clearance_status === 'cleared').length || 0,
    pending: studentsData?.students?.filter((s: Student) => s.clearance_status === 'pending').length || 0,
    atRisk: studentsData?.students?.filter((s: Student) => s.clearance_status === 'at_risk').length || 0,
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'cleared': return 'bg-green-100 text-green-800';
      case 'pending': return 'bg-yellow-100 text-yellow-800';
      case 'at_risk': return 'bg-red-100 text-red-800';
      default: return 'bg-gray-100 text-gray-800';
    }
  };

  const handleExportReport = () => {
    const reportDate = new Date().toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit',
    });

    const reportContent = `
CLINICAL ROTATION PLATFORM - STUDENT REPORT
Generated: ${reportDate}
=====================================================

SUMMARY STATISTICS
------------------
Total Students: ${stats.total}
Cleared: ${stats.cleared}
Pending: ${stats.pending}
At Risk: ${stats.atRisk}

STUDENT LIST
------------
${filteredStudents.length === 0 ? 'No students found' :
  filteredStudents.map((student: Student, idx: number) => 
    `${idx + 1}. ${student.first_name} ${student.last_name}
   Email: ${student.email}
   Level: ${student.level || 'N/A'}
   Attendance: ${student.attendance_rate}%
   Test Average: ${student.test_average}%
   Status: ${student.clearance_status.toUpperCase().replace('_', ' ')}
   Current Rotation: ${student.current_rotation?.name || 'None'}
`).join('\n')}

=====================================================
End of Report
    `.trim();

    const blob = new Blob([reportContent], { type: 'text/plain;charset=utf-8' });
    const url = window.URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = `students-report-${new Date().toISOString().split('T')[0]}.txt`;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    window.URL.revokeObjectURL(url);
  };

  const getProgressColor = (value: number) => {
    if (value >= 75) return 'bg-green-500';
    if (value >= 50) return 'bg-yellow-500';
    return 'bg-red-500';
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Students</h1>
          <p className="text-gray-600 mt-1">View and manage student progress</p>
        </div>
        <button 
          className="btn btn-primary flex items-center gap-2"
          onClick={handleExportReport}
        >
          <ArrowDownTrayIcon className="w-5 h-5" />
          Export Report
        </button>
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
              <p className="text-sm text-green-600">Cleared</p>
              <p className="text-2xl font-bold text-green-900">{stats.cleared}</p>
            </div>
          </div>
        </div>
        <div className="card bg-yellow-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-yellow-100 rounded-xl">
              <AcademicCapIcon className="w-6 h-6 text-yellow-600" />
            </div>
            <div>
              <p className="text-sm text-yellow-600">Pending</p>
              <p className="text-2xl font-bold text-yellow-900">{stats.pending}</p>
            </div>
          </div>
        </div>
        <div className="card bg-red-50">
          <div className="flex items-center gap-3">
            <div className="p-3 bg-red-100 rounded-xl">
              <XCircleIcon className="w-6 h-6 text-red-600" />
            </div>
            <div>
              <p className="text-sm text-red-600">At Risk</p>
              <p className="text-2xl font-bold text-red-900">{stats.atRisk}</p>
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
            <select value={selectedLevel} onChange={(e) => setSelectedLevel(e.target.value)} className="input">
              <option value="">All Levels</option>
              <option value="surgery_1">Surgery I</option>
              <option value="surgery_2">Surgery II</option>
              <option value="surgery_3">Surgery III</option>
              <option value="surgery_4">Surgery IV</option>
            </select>
            <select value={selectedRotation} onChange={(e) => setSelectedRotation(e.target.value)} className="input">
              <option value="">All Rotations</option>
              {rotations?.map((rotation: any) => (
                <option key={rotation.id} value={rotation.id}>{rotation.name}</option>
              ))}
            </select>
          </div>
        </div>
      </div>

      <div className="grid grid-cols-3 gap-6">
        <div className="col-span-2">
          <div className="card overflow-hidden">
            {isLoading ? (
              <div className="text-center py-12">
                <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto" />
                <p className="text-gray-500 mt-4">Loading students...</p>
              </div>
            ) : filteredStudents.length === 0 ? (
              <div className="text-center py-12">
                <UserGroupIcon className="w-16 h-16 text-gray-300 mx-auto mb-4" />
                <h3 className="text-lg font-medium text-gray-900">No Students Found</h3>
                <p className="text-gray-500 mt-1">Try adjusting your search or filters</p>
              </div>
            ) : (
              <table className="min-w-full divide-y divide-gray-200">
                <thead className="bg-gray-50">
                  <tr>
                    <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Student</th>
                    <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Level</th>
                    <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Progress</th>
                    <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                    <th className="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase">Actions</th>
                  </tr>
                </thead>
                <tbody className="bg-white divide-y divide-gray-200">
                  {filteredStudents.map((student: Student) => (
                    <tr
                      key={student.id}
                      className={`hover:bg-gray-50 cursor-pointer ${selectedStudent?.id === student.id ? 'bg-primary-50' : ''}`}
                      onClick={() => setSelectedStudent(student)}
                    >
                      <td className="px-6 py-4 whitespace-nowrap">
                        <div className="flex items-center">
                          <div className="w-10 h-10 rounded-full bg-primary-100 flex items-center justify-center">
                            <span className="text-primary-700 font-medium">
                              {student.first_name[0]}{student.last_name[0]}
                            </span>
                          </div>
                          <div className="ml-4">
                            <div className="text-sm font-medium text-gray-900">
                              {student.first_name} {student.last_name}
                            </div>
                            <div className="text-sm text-gray-500">{student.email}</div>
                          </div>
                        </div>
                      </td>
                      <td className="px-6 py-4 whitespace-nowrap">
                        <span className="text-sm text-gray-900">{student.level}</span>
                      </td>
                      <td className="px-6 py-4 whitespace-nowrap">
                        <div className="flex items-center gap-2">
                          <div className="flex-1 bg-gray-200 rounded-full h-2 w-24">
                            <div
                              className={`h-2 rounded-full ${getProgressColor(student.current_rotation?.progress || 0)}`}
                              style={{ width: `${student.current_rotation?.progress || 0}%` }}
                            />
                          </div>
                          <span className="text-sm font-medium text-gray-900">
                            {student.current_rotation?.progress || 0}%
                          </span>
                        </div>
                      </td>
                      <td className="px-6 py-4 whitespace-nowrap">
                        <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${getStatusColor(student.clearance_status)}`}>
                          {student.clearance_status.replace('_', ' ').charAt(0).toUpperCase() + student.clearance_status.slice(1).replace('_', ' ')}
                        </span>
                      </td>
                      <td className="px-6 py-4 whitespace-nowrap text-right">
                        <button className="p-2 text-gray-400 hover:text-primary-600 hover:bg-primary-50 rounded-lg">
                          <EyeIcon className="w-5 h-5" />
                        </button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            )}
          </div>
        </div>

        <div className="space-y-6">
          {selectedStudent ? (
            <>
              <div className="card">
                <div className="flex items-center gap-4 mb-4">
                  <div className="w-16 h-16 rounded-full bg-primary-100 flex items-center justify-center">
                    <span className="text-primary-700 font-bold text-xl">
                      {selectedStudent.first_name[0]}{selectedStudent.last_name[0]}
                    </span>
                  </div>
                  <div>
                    <h3 className="text-lg font-bold text-gray-900">
                      {selectedStudent.first_name} {selectedStudent.last_name}
                    </h3>
                    <p className="text-gray-500">{selectedStudent.level}</p>
                  </div>
                </div>
                <div className={`p-3 rounded-lg ${getStatusColor(selectedStudent.clearance_status)} text-center`}>
                  <span className="font-medium">
                    {selectedStudent.clearance_status === 'cleared' ? '✓ Cleared for Sign-out' :
                     selectedStudent.clearance_status === 'pending' ? '⏳ Pending Clearance' :
                     '⚠️ At Risk - Intervention Required'}
                  </span>
                </div>
              </div>

              <div className="card">
                <h4 className="font-semibold text-gray-900 mb-4">Performance Metrics</h4>
                <div className="space-y-4">
                  <div>
                    <div className="flex justify-between text-sm mb-1">
                      <span className="text-gray-600">Attendance Rate</span>
                      <span className="font-medium text-gray-900">{selectedStudent.attendance_rate}%</span>
                    </div>
                    <div className="bg-gray-200 rounded-full h-2">
                      <div
                        className={`h-2 rounded-full ${getProgressColor(selectedStudent.attendance_rate)}`}
                        style={{ width: `${selectedStudent.attendance_rate}%` }}
                      />
                    </div>
                  </div>
                  <div>
                    <div className="flex justify-between text-sm mb-1">
                      <span className="text-gray-600">Test Average</span>
                      <span className="font-medium text-gray-900">{selectedStudent.test_average}%</span>
                    </div>
                    <div className="bg-gray-200 rounded-full h-2">
                      <div
                        className={`h-2 rounded-full ${getProgressColor(selectedStudent.test_average)}`}
                        style={{ width: `${selectedStudent.test_average}%` }}
                      />
                    </div>
                  </div>
                  <div>
                    <div className="flex justify-between text-sm mb-1">
                      <span className="text-gray-600">Overall Progress</span>
                      <span className="font-medium text-gray-900">{selectedStudent.current_rotation?.progress || 0}%</span>
                    </div>
                    <div className="bg-gray-200 rounded-full h-2">
                      <div
                        className={`h-2 rounded-full ${getProgressColor(selectedStudent.current_rotation?.progress || 0)}`}
                        style={{ width: `${selectedStudent.current_rotation?.progress || 0}%` }}
                      />
                    </div>
                  </div>
                </div>
              </div>

              <div className="card">
                <h4 className="font-semibold text-gray-900 mb-4">Current Rotation</h4>
                {selectedStudent.current_rotation ? (
                  <div className="flex items-center gap-3">
                    <div className="p-3 bg-primary-100 rounded-xl">
                      <ChartBarIcon className="w-6 h-6 text-primary-600" />
                    </div>
                    <div>
                      <p className="font-medium text-gray-900">{selectedStudent.current_rotation.name}</p>
                      <p className="text-sm text-gray-500">{selectedStudent.current_rotation.progress}% complete</p>
                    </div>
                  </div>
                ) : (
                  <p className="text-gray-500 text-center py-4">No active rotation</p>
                )}
              </div>

              <div className="card">
                <h4 className="font-semibold text-gray-900 mb-2">Last Activity</h4>
                <p className="text-sm text-gray-500">
                  {selectedStudent.last_activity
                    ? format(new Date(selectedStudent.last_activity), 'PPpp')
                    : 'No recent activity'}
                </p>
              </div>

              <button
                onClick={() => {
                  generateStudentPerformanceReport({
                    studentInfo: {
                      name: `${selectedStudent.first_name} ${selectedStudent.last_name}`,
                      email: selectedStudent.email,
                      level: selectedStudent.level,
                      rotation: selectedStudent.current_rotation?.name,
                    },
                    performance: {
                      overall: {
                        score: Math.round((selectedStudent.attendance_rate + selectedStudent.test_average) / 2),
                        rank: 0,
                        totalStudents: stats.total,
                        percentile: 50,
                      },
                      byTopic: [],
                      weeklyProgress: [],
                      attendance: {
                        rate: selectedStudent.attendance_rate,
                        totalDays: 0,
                        presentDays: 0,
                      },
                      tests: {
                        total: 0,
                        passed: 0,
                        avgScore: selectedStudent.test_average,
                      },
                      strengths: selectedStudent.attendance_rate >= 75 ? ['Good attendance record'] : [],
                      weaknesses: selectedStudent.attendance_rate < 75 ? ['Attendance needs improvement'] : [],
                      recommendations: selectedStudent.clearance_status === 'at_risk' 
                        ? ['Schedule meeting with assessor', 'Focus on improving weak areas']
                        : [],
                    },
                  });
                }}
                className="btn btn-primary w-full flex items-center justify-center gap-2"
              >
                <DocumentArrowDownIcon className="w-5 h-5" />
                Download PDF Report
              </button>
            </>
          ) : (
            <div className="card text-center py-12">
              <UserGroupIcon className="w-16 h-16 text-gray-300 mx-auto mb-4" />
              <h3 className="text-lg font-medium text-gray-900">Select a Student</h3>
              <p className="text-gray-500 mt-1">Click on a student to view their details</p>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
