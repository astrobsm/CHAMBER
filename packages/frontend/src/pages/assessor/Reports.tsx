import { useState } from 'react';
import { useQuery, useMutation } from '@tanstack/react-query';
import { format, subDays, startOfMonth, endOfMonth } from 'date-fns';
import {
  DocumentTextIcon,
  ArrowDownTrayIcon,
  ChartBarIcon,
  UserGroupIcon,
  AcademicCapIcon,
  CalendarIcon,
  ClockIcon,
  CheckCircleIcon,
} from '@heroicons/react/24/outline';
import { LineChart, Line, BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer, PieChart, Pie, Cell } from 'recharts';
import toast from 'react-hot-toast';
import { analyticsApi, rotationsApi } from '../../services/api';

const COLORS = ['#1e3a5f', '#2d5a87', '#3d7ab0', '#4d9ad9', '#5dbaf0'];

interface ReportType {
  id: string;
  name: string;
  description: string;
  icon: React.ComponentType<{ className?: string }>;
  category: string;
}

const reportTypes: ReportType[] = [
  {
    id: 'attendance_summary',
    name: 'Attendance Summary',
    description: 'Daily, weekly, and monthly attendance statistics',
    icon: CalendarIcon,
    category: 'Attendance',
  },
  {
    id: 'student_performance',
    name: 'Student Performance',
    description: 'Individual student performance metrics',
    icon: AcademicCapIcon,
    category: 'Performance',
  },
  {
    id: 'rotation_analytics',
    name: 'Rotation Analytics',
    description: 'Rotation-wise performance breakdown',
    icon: ChartBarIcon,
    category: 'Rotations',
  },
  {
    id: 'test_results',
    name: 'Test Results',
    description: 'Test scores and analysis by topic',
    icon: DocumentTextIcon,
    category: 'Tests',
  },
  {
    id: 'clearance_report',
    name: 'Clearance Status',
    description: 'Students ready for sign-out',
    icon: CheckCircleIcon,
    category: 'Clearance',
  },
  {
    id: 'cohort_comparison',
    name: 'Cohort Comparison',
    description: 'Compare performance across surgery levels',
    icon: UserGroupIcon,
    category: 'Analytics',
  },
];

export default function AssessorReports() {
  const [selectedReport, setSelectedReport] = useState<ReportType | null>(null);
  const [dateRange, setDateRange] = useState({
    start: format(startOfMonth(new Date()), 'yyyy-MM-dd'),
    end: format(endOfMonth(new Date()), 'yyyy-MM-dd'),
  });
  const [selectedRotation, setSelectedRotation] = useState<string>('');

  const { data: rotations } = useQuery({
    queryKey: ['rotations'],
    queryFn: async () => {
      const response = await rotationsApi.getAll();
      return response.data;
    },
  });

  const { data: reportData, isLoading } = useQuery({
    queryKey: ['report', selectedReport?.id, dateRange, selectedRotation],
    queryFn: async () => {
      if (!selectedReport) return null;
      const response = await analyticsApi.getReport({
        type: selectedReport.id,
        start_date: dateRange.start,
        end_date: dateRange.end,
        rotation_id: selectedRotation || undefined,
      });
      return response.data;
    },
    enabled: !!selectedReport,
  });

  const downloadMutation = useMutation({
    mutationFn: async (format: 'pdf' | 'csv' | 'excel') => {
      if (!selectedReport) return;
      const response = await analyticsApi.downloadReport({
        type: selectedReport.id,
        format,
        start_date: dateRange.start,
        end_date: dateRange.end,
        rotation_id: selectedRotation || undefined,
      });
      return response.data;
    },
    onSuccess: (data) => {
      const blob = new Blob([data], { type: 'application/octet-stream' });
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = `${selectedReport?.id}_report.pdf`;
      document.body.appendChild(a);
      a.click();
      window.URL.revokeObjectURL(url);
      document.body.removeChild(a);
      toast.success('Report downloaded successfully');
    },
    onError: () => {
      toast.error('Failed to download report');
    },
  });

  const setPresetRange = (preset: string) => {
    const today = new Date();
    switch (preset) {
      case 'today':
        setDateRange({ start: format(today, 'yyyy-MM-dd'), end: format(today, 'yyyy-MM-dd') });
        break;
      case 'week':
        setDateRange({ start: format(subDays(today, 7), 'yyyy-MM-dd'), end: format(today, 'yyyy-MM-dd') });
        break;
      case 'month':
        setDateRange({ start: format(startOfMonth(today), 'yyyy-MM-dd'), end: format(endOfMonth(today), 'yyyy-MM-dd') });
        break;
      case 'quarter':
        setDateRange({ start: format(subDays(today, 90), 'yyyy-MM-dd'), end: format(today, 'yyyy-MM-dd') });
        break;
    }
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Reports</h1>
          <p className="text-gray-600 mt-1">Generate and download performance reports</p>
        </div>
        {selectedReport && (
          <div className="flex items-center gap-2">
            <button
              onClick={() => downloadMutation.mutate('pdf')}
              disabled={downloadMutation.isPending}
              className="btn btn-primary flex items-center gap-2"
            >
              <ArrowDownTrayIcon className="w-5 h-5" />
              Download PDF
            </button>
            <button
              onClick={() => downloadMutation.mutate('excel')}
              disabled={downloadMutation.isPending}
              className="btn btn-outline flex items-center gap-2"
            >
              <ArrowDownTrayIcon className="w-5 h-5" />
              Excel
            </button>
          </div>
        )}
      </div>

      <div className="grid grid-cols-3 gap-6">
        <div className="space-y-6">
          <div className="card">
            <h3 className="font-semibold text-gray-900 mb-4">Report Types</h3>
            <div className="space-y-2">
              {reportTypes.map((report) => (
                <button
                  key={report.id}
                  onClick={() => setSelectedReport(report)}
                  className={`w-full p-3 rounded-lg text-left flex items-center gap-3 transition-colors ${
                    selectedReport?.id === report.id
                      ? 'bg-primary-100 border-primary-500 border'
                      : 'hover:bg-gray-50 border border-transparent'
                  }`}
                >
                  <div className={`p-2 rounded-lg ${selectedReport?.id === report.id ? 'bg-primary-600 text-white' : 'bg-gray-100 text-gray-600'}`}>
                    <report.icon className="w-5 h-5" />
                  </div>
                  <div>
                    <p className={`font-medium ${selectedReport?.id === report.id ? 'text-primary-900' : 'text-gray-900'}`}>
                      {report.name}
                    </p>
                    <p className="text-xs text-gray-500">{report.category}</p>
                  </div>
                </button>
              ))}
            </div>
          </div>

          <div className="card">
            <h3 className="font-semibold text-gray-900 mb-4">Filters</h3>
            <div className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Date Range</label>
                <div className="flex gap-2 mb-2">
                  <button onClick={() => setPresetRange('today')} className="btn btn-sm btn-outline flex-1">Today</button>
                  <button onClick={() => setPresetRange('week')} className="btn btn-sm btn-outline flex-1">Week</button>
                  <button onClick={() => setPresetRange('month')} className="btn btn-sm btn-outline flex-1">Month</button>
                </div>
                <div className="grid grid-cols-2 gap-2">
                  <input
                    type="date"
                    value={dateRange.start}
                    onChange={(e) => setDateRange({ ...dateRange, start: e.target.value })}
                    className="input text-sm"
                  />
                  <input
                    type="date"
                    value={dateRange.end}
                    onChange={(e) => setDateRange({ ...dateRange, end: e.target.value })}
                    className="input text-sm"
                  />
                </div>
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Rotation</label>
                <select
                  value={selectedRotation}
                  onChange={(e) => setSelectedRotation(e.target.value)}
                  className="input w-full"
                >
                  <option value="">All Rotations</option>
                  {rotations?.map((rotation: any) => (
                    <option key={rotation.id} value={rotation.id}>{rotation.name}</option>
                  ))}
                </select>
              </div>
            </div>
          </div>
        </div>

        <div className="col-span-2">
          {!selectedReport ? (
            <div className="card text-center py-16">
              <DocumentTextIcon className="w-20 h-20 text-gray-300 mx-auto mb-4" />
              <h3 className="text-xl font-semibold text-gray-900">Select a Report</h3>
              <p className="text-gray-500 mt-2 max-w-md mx-auto">
                Choose a report type from the left panel to view analytics and download data
              </p>
            </div>
          ) : isLoading ? (
            <div className="card text-center py-16">
              <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto" />
              <p className="text-gray-500 mt-4">Generating report...</p>
            </div>
          ) : (
            <div className="space-y-6">
              <div className="card">
                <div className="flex items-center justify-between mb-4">
                  <div className="flex items-center gap-3">
                    <div className="p-3 bg-primary-100 rounded-xl">
                      <selectedReport.icon className="w-6 h-6 text-primary-600" />
                    </div>
                    <div>
                      <h3 className="text-lg font-bold text-gray-900">{selectedReport.name}</h3>
                      <p className="text-sm text-gray-500">{selectedReport.description}</p>
                    </div>
                  </div>
                  <div className="flex items-center gap-2 text-sm text-gray-500">
                    <ClockIcon className="w-4 h-4" />
                    {format(new Date(dateRange.start), 'MMM d')} - {format(new Date(dateRange.end), 'MMM d, yyyy')}
                  </div>
                </div>

                <div className="grid grid-cols-4 gap-4 mb-6">
                  <div className="p-4 bg-blue-50 rounded-xl">
                    <p className="text-sm text-blue-600">Total Records</p>
                    <p className="text-2xl font-bold text-blue-900">{reportData?.summary?.total || 0}</p>
                  </div>
                  <div className="p-4 bg-green-50 rounded-xl">
                    <p className="text-sm text-green-600">Average Score</p>
                    <p className="text-2xl font-bold text-green-900">{reportData?.summary?.average || 0}%</p>
                  </div>
                  <div className="p-4 bg-yellow-50 rounded-xl">
                    <p className="text-sm text-yellow-600">Highest</p>
                    <p className="text-2xl font-bold text-yellow-900">{reportData?.summary?.highest || 0}%</p>
                  </div>
                  <div className="p-4 bg-red-50 rounded-xl">
                    <p className="text-sm text-red-600">Lowest</p>
                    <p className="text-2xl font-bold text-red-900">{reportData?.summary?.lowest || 0}%</p>
                  </div>
                </div>

                <div className="h-80">
                  <ResponsiveContainer width="100%" height="100%">
                    {selectedReport.id === 'clearance_report' ? (
                      <PieChart>
                        <Pie
                          data={reportData?.chartData || [
                            { name: 'Cleared', value: 45 },
                            { name: 'Pending', value: 30 },
                            { name: 'At Risk', value: 15 },
                          ]}
                          dataKey="value"
                          nameKey="name"
                          cx="50%"
                          cy="50%"
                          outerRadius={120}
                          label
                        >
                          {(reportData?.chartData || []).map((_: any, index: number) => (
                            <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                          ))}
                        </Pie>
                        <Tooltip />
                        <Legend />
                      </PieChart>
                    ) : selectedReport.id === 'cohort_comparison' ? (
                      <BarChart data={reportData?.chartData || [
                        { level: 'Surgery I', attendance: 85, tests: 72 },
                        { level: 'Surgery II', attendance: 88, tests: 78 },
                        { level: 'Surgery III', attendance: 82, tests: 75 },
                        { level: 'Surgery IV', attendance: 90, tests: 82 },
                      ]}>
                        <CartesianGrid strokeDasharray="3 3" />
                        <XAxis dataKey="level" />
                        <YAxis />
                        <Tooltip />
                        <Legend />
                        <Bar dataKey="attendance" name="Attendance %" fill="#1e3a5f" />
                        <Bar dataKey="tests" name="Test Average %" fill="#4ade80" />
                      </BarChart>
                    ) : (
                      <LineChart data={reportData?.chartData || [
                        { date: 'Mon', value: 75 },
                        { date: 'Tue', value: 82 },
                        { date: 'Wed', value: 78 },
                        { date: 'Thu', value: 85 },
                        { date: 'Fri', value: 88 },
                      ]}>
                        <CartesianGrid strokeDasharray="3 3" />
                        <XAxis dataKey="date" />
                        <YAxis />
                        <Tooltip />
                        <Legend />
                        <Line type="monotone" dataKey="value" name={selectedReport.name} stroke="#1e3a5f" strokeWidth={2} />
                      </LineChart>
                    )}
                  </ResponsiveContainer>
                </div>
              </div>

              {reportData?.details && (
                <div className="card overflow-hidden">
                  <h4 className="font-semibold text-gray-900 mb-4">Detailed Data</h4>
                  <div className="overflow-x-auto">
                    <table className="min-w-full divide-y divide-gray-200">
                      <thead className="bg-gray-50">
                        <tr>
                          {Object.keys(reportData.details[0] || {}).map((key) => (
                            <th key={key} className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                              {key.replace(/_/g, ' ')}
                            </th>
                          ))}
                        </tr>
                      </thead>
                      <tbody className="bg-white divide-y divide-gray-200">
                        {reportData.details.slice(0, 10).map((row: any, index: number) => (
                          <tr key={index} className="hover:bg-gray-50">
                            {Object.values(row).map((value: any, cellIndex) => (
                              <td key={cellIndex} className="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                {value}
                              </td>
                            ))}
                          </tr>
                        ))}
                      </tbody>
                    </table>
                  </div>
                  {reportData.details.length > 10 && (
                    <div className="p-4 bg-gray-50 text-center text-sm text-gray-500">
                      Showing 10 of {reportData.details.length} records. Download the full report for complete data.
                    </div>
                  )}
                </div>
              )}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
