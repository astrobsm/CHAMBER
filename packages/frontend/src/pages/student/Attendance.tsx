import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { attendanceApi } from '../../services/api';
import { useAuth } from '../../contexts/AuthContext';
import {
  ClockIcon,
  CheckCircleIcon,
  XCircleIcon,
  CalendarIcon,
  QrCodeIcon,
  MapPinIcon,
  ShieldCheckIcon,
  ExclamationTriangleIcon,
  SignalIcon,
} from '@heroicons/react/24/outline';
import { format, startOfMonth, endOfMonth, eachDayOfInterval, isSameDay, isToday } from 'date-fns';
import { useState, useEffect, useCallback } from 'react';

// UNTH Ituku-Ozalla campus coordinates (must match backend)
const UNTH_CAMPUS = {
  name: 'UNTH Ituku-Ozalla',
  latitude: 6.4085,
  longitude: 7.5085,
  radiusMeters: 500,
};

interface AttendanceRecord {
  id: string;
  date: string;
  sessionType: string;
  status: 'present' | 'absent' | 'late' | 'excused';
  checkInTime?: string;
  location?: string;
  gpsLatitude?: number;
  gpsLongitude?: number;
  checkInMethod?: string;
}

interface AttendanceSummary {
  totalSessions: number;
  attended: number;
  absent: number;
  late: number;
  excused: number;
  attendanceRate: number;
}

interface GeoPosition {
  latitude: number;
  longitude: number;
  accuracy: number;
  timestamp: number;
}

interface GeoValidation {
  valid: boolean;
  distance: number | null;
  maxRadius: number;
  nearestLandmark: string;
  message: string;
}

// Haversine distance calculation (matches backend)
function haversineDistance(lat1: number, lon1: number, lat2: number, lon2: number): number {
  const R = 6371000;
  const dLat = (lat2 - lat1) * Math.PI / 180;
  const dLon = (lon2 - lon1) * Math.PI / 180;
  const a = Math.sin(dLat / 2) ** 2 +
    Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) *
    Math.sin(dLon / 2) ** 2;
  return R * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
}

export function StudentAttendance() {
  const { user } = useAuth();
  const [selectedMonth, setSelectedMonth] = useState(new Date());
  const [showCheckIn, setShowCheckIn] = useState(false);
  const [gpsPosition, setGpsPosition] = useState<GeoPosition | null>(null);
  const [gpsError, setGpsError] = useState<string | null>(null);
  const [gpsLoading, setGpsLoading] = useState(false);
  const [geoValidation, setGeoValidation] = useState<GeoValidation | null>(null);
  const [checkInResult, setCheckInResult] = useState<{ success: boolean; message: string } | null>(null);
  const [sessionId, setSessionId] = useState('');
  const queryClient = useQueryClient();

  const { data: summaryData, isLoading: summaryLoading } = useQuery({
    queryKey: ['attendance-summary'],
    queryFn: async () => {
      const response = await attendanceApi.getSummary();
      return response.data?.data || response.data || {};
    },
  });

  const { data: recordsData, isLoading: recordsLoading } = useQuery({
    queryKey: ['my-attendance'],
    queryFn: async () => {
      const response = await attendanceApi.getMyAttendance();
      return response.data?.data || response.data || [];
    },
  });

  const { data: sessionsData } = useQuery({
    queryKey: ['attendance-sessions'],
    queryFn: async () => {
      const response = await attendanceApi.getSessions('');
      return response.data?.data || response.data || [];
    },
  });

  const summary: AttendanceSummary = summaryData || {
    totalSessions: 0, attended: 0, absent: 0, late: 0, excused: 0, attendanceRate: 0,
  };
  const records: AttendanceRecord[] = Array.isArray(recordsData) ? recordsData : [];
  const sessions = Array.isArray(sessionsData) ? sessionsData : [];

  // GPS Position Watcher
  const startGPSTracking = useCallback(() => {
    if (!navigator.geolocation) {
      setGpsError('Geolocation is not supported by your browser');
      return;
    }
    setGpsLoading(true);
    setGpsError(null);

    const watchId = navigator.geolocation.watchPosition(
      (position) => {
        const pos: GeoPosition = {
          latitude: position.coords.latitude,
          longitude: position.coords.longitude,
          accuracy: position.coords.accuracy,
          timestamp: position.timestamp,
        };
        setGpsPosition(pos);
        setGpsLoading(false);

        // Client-side geofence validation
        const dist = haversineDistance(pos.latitude, pos.longitude, UNTH_CAMPUS.latitude, UNTH_CAMPUS.longitude);
        setGeoValidation({
          valid: dist <= UNTH_CAMPUS.radiusMeters,
          distance: Math.round(dist),
          maxRadius: UNTH_CAMPUS.radiusMeters,
          nearestLandmark: UNTH_CAMPUS.name,
          message: dist <= UNTH_CAMPUS.radiusMeters
            ? `Within UNTH campus (${Math.round(dist)}m from center)`
            : `Outside campus: ${Math.round(dist)}m away (max ${UNTH_CAMPUS.radiusMeters}m)`,
        });
      },
      (error) => {
        setGpsLoading(false);
        switch (error.code) {
          case error.PERMISSION_DENIED:
            setGpsError('Location permission denied. Please enable GPS in your browser settings.');
            break;
          case error.POSITION_UNAVAILABLE:
            setGpsError('Location unavailable. Please move to an open area.');
            break;
          case error.TIMEOUT:
            setGpsError('Location request timed out. Please try again.');
            break;
          default:
            setGpsError('An unknown GPS error occurred.');
        }
      },
      { enableHighAccuracy: true, timeout: 15000, maximumAge: 5000 }
    );

    return () => navigator.geolocation.clearWatch(watchId);
  }, []);

  // Start GPS when check-in modal opens
  useEffect(() => {
    if (showCheckIn) {
      const cleanup = startGPSTracking();
      return cleanup;
    }
  }, [showCheckIn, startGPSTracking]);

  // Check-in mutation
  const checkInMutation = useMutation({
    mutationFn: async (data: { sessionId: string; location: GeoPosition }) => {
      const response = await attendanceApi.checkIn(data.sessionId, '', {
        latitude: data.location.latitude,
        longitude: data.location.longitude,
        accuracy: data.location.accuracy,
      }, user?.id);
      return response.data;
    },
    onSuccess: (data) => {
      setCheckInResult({ success: true, message: data.message || 'Check-in successful!' });
      queryClient.invalidateQueries({ queryKey: ['attendance-summary'] });
      queryClient.invalidateQueries({ queryKey: ['my-attendance'] });
    },
    onError: (error: any) => {
      const msg = error?.response?.data?.message || 'Check-in failed. Please try again.';
      setCheckInResult({ success: false, message: msg });
    },
  });

  const handleCheckIn = () => {
    if (!gpsPosition) return;
    if (!sessionId) {
      setCheckInResult({ success: false, message: 'Please select an active session' });
      return;
    }
    checkInMutation.mutate({ sessionId, location: gpsPosition });
  };

  // Calendar
  const monthStart = startOfMonth(selectedMonth);
  const monthEnd = endOfMonth(selectedMonth);
  const days = eachDayOfInterval({ start: monthStart, end: monthEnd });
  const getAttendanceForDay = (date: Date) => records.find(r => isSameDay(new Date(r.date), date));

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'present': return 'bg-green-500';
      case 'late': return 'bg-amber-500';
      case 'absent': return 'bg-red-500';
      case 'excused': return 'bg-blue-500';
      default: return 'bg-gray-300';
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
          <p className="text-gray-600">GPS-verified clinical session attendance at UNTH Ituku-Ozalla</p>
        </div>
        <button
          onClick={() => { setShowCheckIn(true); setCheckInResult(null); }}
          className="btn-primary flex items-center gap-2"
        >
          <MapPinIcon className="w-5 h-5" />
          GPS Check-In
        </button>
      </div>

      {/* Geofence Info Banner */}
      <div className="bg-blue-50 border border-blue-200 rounded-xl p-4">
        <div className="flex items-start gap-3">
          <ShieldCheckIcon className="w-6 h-6 text-blue-600 flex-shrink-0 mt-0.5" />
          <div>
            <p className="font-semibold text-blue-900">GPS-Verified Attendance</p>
            <p className="text-sm text-blue-700 mt-1">
              Check-in requires you to be physically present at <strong>University of Nigeria Teaching Hospital, Ituku-Ozalla (New Site)</strong>.
              Your GPS location is verified against the campus geofence ({UNTH_CAMPUS.radiusMeters}m radius).
              Location spoofing is detected and blocked.
            </p>
          </div>
        </div>
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
            <p className={`text-3xl font-bold ${summary.attendanceRate >= 75 ? 'text-green-600' : 'text-red-600'}`}>
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
            <button onClick={() => setSelectedMonth(new Date(selectedMonth.getFullYear(), selectedMonth.getMonth() - 1))} className="p-2 hover:bg-gray-100 rounded-lg">←</button>
            <span className="font-medium text-gray-900 w-36 text-center">{format(selectedMonth, 'MMMM yyyy')}</span>
            <button onClick={() => setSelectedMonth(new Date(selectedMonth.getFullYear(), selectedMonth.getMonth() + 1))} className="p-2 hover:bg-gray-100 rounded-lg">→</button>
          </div>
        </div>
        <div className="grid grid-cols-7 gap-1 mb-2">
          {['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].map(day => (
            <div key={day} className="text-center text-sm font-medium text-gray-500 py-2">{day}</div>
          ))}
        </div>
        <div className="grid grid-cols-7 gap-1">
          {Array.from({ length: monthStart.getDay() }).map((_, i) => (
            <div key={`empty-${i}`} className="aspect-square"></div>
          ))}
          {days.map(day => {
            const record = getAttendanceForDay(day);
            return (
              <div key={day.toISOString()} className={`aspect-square p-1 rounded-lg ${isToday(day) ? 'ring-2 ring-primary-500' : ''}`}>
                <div className={`h-full rounded-lg flex flex-col items-center justify-center ${record ? 'bg-gray-50' : ''}`}>
                  <span className={`text-sm ${isToday(day) ? 'font-bold' : ''}`}>{format(day, 'd')}</span>
                  {record && <div className={`w-2 h-2 rounded-full mt-1 ${getStatusColor(record.status)}`}></div>}
                </div>
              </div>
            );
          })}
        </div>
        <div className="flex items-center justify-center gap-6 mt-4 pt-4 border-t text-sm">
          <span className="flex items-center gap-2"><div className="w-3 h-3 rounded-full bg-green-500"></div> Present</span>
          <span className="flex items-center gap-2"><div className="w-3 h-3 rounded-full bg-amber-500"></div> Late</span>
          <span className="flex items-center gap-2"><div className="w-3 h-3 rounded-full bg-red-500"></div> Absent</span>
          <span className="flex items-center gap-2"><div className="w-3 h-3 rounded-full bg-blue-500"></div> Excused</span>
        </div>
      </div>

      {/* Recent Records with GPS info */}
      <div className="card">
        <h3 className="font-semibold text-gray-900 mb-4">Recent Attendance</h3>
        {records.length === 0 ? (
          <div className="text-center py-8 text-gray-500">
            <CalendarIcon className="w-12 h-12 mx-auto mb-3 text-gray-300" />
            <p className="font-medium">No attendance records yet</p>
            <p className="text-sm mt-1">Use GPS Check-In when an attendance session is active</p>
          </div>
        ) : (
          <div className="divide-y">
            {records.slice(0, 10).map(record => (
              <div key={record.id} className="py-3 flex items-center justify-between">
                <div>
                  <p className="font-medium text-gray-900">{format(new Date(record.date), 'EEEE, MMMM d, yyyy')}</p>
                  <p className="text-sm text-gray-500">
                    {record.sessionType.replace(/_/g, ' ')} {record.location ? `• ${record.location}` : ''}
                  </p>
                  {record.checkInMethod === 'gps_verified' && (
                    <p className="text-xs text-green-600 flex items-center gap-1 mt-1">
                      <ShieldCheckIcon className="w-3 h-3" /> GPS Verified
                      {record.gpsLatitude && ` (${record.gpsLatitude.toFixed(4)}, ${record.gpsLongitude?.toFixed(4)})`}
                    </p>
                  )}
                </div>
                <div className="text-right">
                  <span className={`inline-block px-2 py-1 rounded-full text-xs font-medium ${
                    record.status === 'present' ? 'bg-green-100 text-green-800' :
                    record.status === 'late' ? 'bg-amber-100 text-amber-800' :
                    record.status === 'absent' ? 'bg-red-100 text-red-800' :
                    'bg-blue-100 text-blue-800'
                  }`}>
                    {record.status.toUpperCase()}
                  </span>
                  {record.checkInTime && (
                    <p className="text-xs text-gray-500 mt-1">
                      {format(new Date(record.checkInTime), 'h:mm a')}
                    </p>
                  )}
                </div>
              </div>
            ))}
          </div>
        )}
      </div>

      {/* ====== GPS CHECK-IN MODAL ====== */}
      {showCheckIn && (
        <div className="fixed inset-0 z-50 bg-black/60 flex items-center justify-center p-4 overflow-y-auto">
          <div className="bg-white rounded-2xl max-w-lg w-full shadow-2xl">
            {/* Modal Header */}
            <div className="flex items-center justify-between p-5 border-b">
              <div>
                <h3 className="text-lg font-bold text-gray-900">GPS Attendance Check-In</h3>
                <p className="text-sm text-gray-500">UNTH Ituku-Ozalla Campus Verification</p>
              </div>
              <button onClick={() => setShowCheckIn(false)} className="p-2 hover:bg-gray-100 rounded-lg text-gray-500">✕</button>
            </div>

            <div className="p-5 space-y-4">
              {/* GPS Status */}
              <div className={`rounded-xl p-4 border-2 ${
                gpsLoading ? 'border-yellow-300 bg-yellow-50' :
                gpsError ? 'border-red-300 bg-red-50' :
                geoValidation?.valid ? 'border-green-300 bg-green-50' :
                geoValidation ? 'border-red-300 bg-red-50' :
                'border-gray-200 bg-gray-50'
              }`}>
                <div className="flex items-center gap-3">
                  {gpsLoading ? (
                    <>
                      <div className="w-8 h-8 border-4 border-yellow-400 border-t-transparent rounded-full animate-spin"></div>
                      <div>
                        <p className="font-semibold text-yellow-800">Acquiring GPS Signal...</p>
                        <p className="text-sm text-yellow-700">Move near a window for better accuracy</p>
                      </div>
                    </>
                  ) : gpsError ? (
                    <>
                      <ExclamationTriangleIcon className="w-8 h-8 text-red-600 flex-shrink-0" />
                      <div>
                        <p className="font-semibold text-red-800">GPS Error</p>
                        <p className="text-sm text-red-700">{gpsError}</p>
                      </div>
                    </>
                  ) : geoValidation?.valid ? (
                    <>
                      <ShieldCheckIcon className="w-8 h-8 text-green-600 flex-shrink-0" />
                      <div>
                        <p className="font-semibold text-green-800">Location Verified - UNTH Campus</p>
                        <p className="text-sm text-green-700">{geoValidation.message}</p>
                      </div>
                    </>
                  ) : geoValidation ? (
                    <>
                      <XCircleIcon className="w-8 h-8 text-red-600 flex-shrink-0" />
                      <div>
                        <p className="font-semibold text-red-800">Outside UNTH Campus</p>
                        <p className="text-sm text-red-700">{geoValidation.message}</p>
                      </div>
                    </>
                  ) : (
                    <>
                      <MapPinIcon className="w-8 h-8 text-gray-400 flex-shrink-0" />
                      <div>
                        <p className="font-semibold text-gray-700">Waiting for GPS...</p>
                        <p className="text-sm text-gray-500">Enable location services to proceed</p>
                      </div>
                    </>
                  )}
                </div>
              </div>

              {/* Live GPS Data Display */}
              {gpsPosition && (
                <div className="bg-gray-50 rounded-xl p-4 space-y-2">
                  <h4 className="font-semibold text-gray-700 text-sm flex items-center gap-2">
                    <SignalIcon className="w-4 h-4" /> Live GPS Data
                  </h4>
                  <div className="grid grid-cols-2 gap-3 text-sm">
                    <div>
                      <span className="text-gray-500">Latitude:</span>
                      <span className="ml-2 font-mono font-medium">{gpsPosition.latitude.toFixed(6)}</span>
                    </div>
                    <div>
                      <span className="text-gray-500">Longitude:</span>
                      <span className="ml-2 font-mono font-medium">{gpsPosition.longitude.toFixed(6)}</span>
                    </div>
                    <div>
                      <span className="text-gray-500">Accuracy:</span>
                      <span className={`ml-2 font-medium ${gpsPosition.accuracy <= 50 ? 'text-green-600' : gpsPosition.accuracy <= 100 ? 'text-amber-600' : 'text-red-600'}`}>
                        ±{Math.round(gpsPosition.accuracy)}m
                      </span>
                    </div>
                    <div>
                      <span className="text-gray-500">Distance:</span>
                      <span className={`ml-2 font-medium ${geoValidation?.valid ? 'text-green-600' : 'text-red-600'}`}>
                        {geoValidation?.distance ?? '...'}m
                      </span>
                    </div>
                  </div>

                  {/* Visual distance indicator */}
                  <div className="mt-3">
                    <div className="flex justify-between text-xs text-gray-500 mb-1">
                      <span>0m</span>
                      <span className="text-green-600 font-medium">{UNTH_CAMPUS.radiusMeters}m (limit)</span>
                      <span>1km+</span>
                    </div>
                    <div className="h-3 bg-gray-200 rounded-full overflow-hidden relative">
                      <div className="absolute inset-y-0 left-0 bg-green-200 rounded-full"
                        style={{ width: `${Math.min((UNTH_CAMPUS.radiusMeters / 1000) * 100, 100)}%` }}></div>
                      <div className={`absolute inset-y-0 left-0 h-full rounded-full transition-all ${geoValidation?.valid ? 'bg-green-500' : 'bg-red-500'}`}
                        style={{ width: `${Math.min(((geoValidation?.distance ?? 0) / 1000) * 100, 100)}%` }}></div>
                    </div>
                  </div>

                  {/* Campus Map Link */}
                  <div className="mt-2 pt-2 border-t border-gray-200">
                    <a
                      href={`https://www.openstreetmap.org/?mlat=${gpsPosition.latitude}&mlon=${gpsPosition.longitude}#map=17/${gpsPosition.latitude}/${gpsPosition.longitude}`}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="text-xs text-blue-600 hover:underline flex items-center gap-1"
                    >
                      <MapPinIcon className="w-3 h-3" /> View your exact location on map
                    </a>
                  </div>
                </div>
              )}

              {/* Session Selector */}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Select Active Session</label>
                <select
                  value={sessionId}
                  onChange={(e) => setSessionId(e.target.value)}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-primary-500 focus:border-primary-500"
                >
                  <option value="">-- Choose a session --</option>
                  {sessions.map((s: any) => (
                    <option key={s.id} value={s.id}>
                      {s.rotation_name || 'Session'} - {s.attendance_type?.replace(/_/g, ' ')} ({s.session_date})
                    </option>
                  ))}
                </select>
                {sessions.length === 0 && (
                  <p className="text-xs text-amber-600 mt-1">No active sessions available. Ask your assessor to create one.</p>
                )}
              </div>

              {/* Check-in Result */}
              {checkInResult && (
                <div className={`rounded-xl p-4 ${checkInResult.success ? 'bg-green-50 border border-green-200' : 'bg-red-50 border border-red-200'}`}>
                  <div className="flex items-center gap-2">
                    {checkInResult.success
                      ? <CheckCircleIcon className="w-5 h-5 text-green-600" />
                      : <XCircleIcon className="w-5 h-5 text-red-600" />}
                    <p className={`font-medium ${checkInResult.success ? 'text-green-800' : 'text-red-800'}`}>
                      {checkInResult.message}
                    </p>
                  </div>
                </div>
              )}

              {/* Check-in Button */}
              <button
                onClick={handleCheckIn}
                disabled={!gpsPosition || !geoValidation?.valid || !sessionId || checkInMutation.isPending}
                className={`w-full py-3 rounded-xl font-semibold text-white flex items-center justify-center gap-2 transition-all ${
                  gpsPosition && geoValidation?.valid && sessionId
                    ? 'bg-green-600 hover:bg-green-700 active:scale-[0.98]'
                    : 'bg-gray-300 cursor-not-allowed'
                }`}
              >
                {checkInMutation.isPending ? (
                  <><div className="w-5 h-5 border-2 border-white border-t-transparent rounded-full animate-spin"></div> Verifying...</>
                ) : (
                  <><ShieldCheckIcon className="w-5 h-5" /> Confirm GPS Check-In</>
                )}
              </button>

              {!geoValidation?.valid && geoValidation && (
                <p className="text-center text-sm text-red-600">
                  You must be within {UNTH_CAMPUS.radiusMeters}m of UNTH Ituku-Ozalla to check in
                </p>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

export default StudentAttendance;
