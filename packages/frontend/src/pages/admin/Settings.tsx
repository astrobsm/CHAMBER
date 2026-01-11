import { useState } from 'react';
import {
  CogIcon,
  BellIcon,
  ShieldCheckIcon,
  DocumentTextIcon,
  ClockIcon,
  AcademicCapIcon,
  DevicePhoneMobileIcon,
  GlobeAltIcon,
  CheckCircleIcon,
  ExclamationTriangleIcon,
} from '@heroicons/react/24/outline';

interface SettingsState {
  general: {
    institutionName: string;
    institutionCode: string;
    academicYear: string;
    timezone: string;
  };
  clearance: {
    attendanceThreshold: number;
    testScoreThreshold: number;
    participationThreshold: number;
    overallThreshold: number;
  };
  tests: {
    defaultDuration: number;
    questionsPerTest: number;
    shuffleQuestions: boolean;
    shuffleOptions: boolean;
    allowReview: boolean;
    showCorrectAnswers: boolean;
  };
  antiCheating: {
    requireFullscreen: boolean;
    detectTabSwitch: boolean;
    maxTabSwitches: number;
    deviceFingerprinting: boolean;
    preventCopyPaste: boolean;
    preventRightClick: boolean;
  };
  notifications: {
    emailEnabled: boolean;
    whatsappEnabled: boolean;
    lowAttendanceAlert: boolean;
    lowAttendanceThreshold: number;
    testReminders: boolean;
    clearanceAlerts: boolean;
  };
  attendance: {
    qrCodeExpiry: number;
    allowLateMarking: boolean;
    lateThreshold: number;
    requireLocation: boolean;
  };
}

const defaultSettings: SettingsState = {
  general: {
    institutionName: 'University of Nigeria Teaching Hospital',
    institutionCode: 'UNTH',
    academicYear: '2024/2025',
    timezone: 'Africa/Lagos',
  },
  clearance: {
    attendanceThreshold: 75,
    testScoreThreshold: 50,
    participationThreshold: 75,
    overallThreshold: 75,
  },
  tests: {
    defaultDuration: 10,
    questionsPerTest: 50,
    shuffleQuestions: true,
    shuffleOptions: true,
    allowReview: false,
    showCorrectAnswers: false,
  },
  antiCheating: {
    requireFullscreen: true,
    detectTabSwitch: true,
    maxTabSwitches: 3,
    deviceFingerprinting: true,
    preventCopyPaste: true,
    preventRightClick: true,
  },
  notifications: {
    emailEnabled: true,
    whatsappEnabled: true,
    lowAttendanceAlert: true,
    lowAttendanceThreshold: 60,
    testReminders: true,
    clearanceAlerts: true,
  },
  attendance: {
    qrCodeExpiry: 5,
    allowLateMarking: true,
    lateThreshold: 15,
    requireLocation: false,
  },
};

export function AdminSettings() {
  const [settings, setSettings] = useState<SettingsState>(defaultSettings);
  const [activeTab, setActiveTab] = useState<keyof SettingsState>('general');
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);

  const tabs = [
    { id: 'general' as const, name: 'General', icon: CogIcon },
    { id: 'clearance' as const, name: 'Clearance', icon: AcademicCapIcon },
    { id: 'tests' as const, name: 'Tests', icon: DocumentTextIcon },
    { id: 'antiCheating' as const, name: 'Anti-Cheating', icon: ShieldCheckIcon },
    { id: 'notifications' as const, name: 'Notifications', icon: BellIcon },
    { id: 'attendance' as const, name: 'Attendance', icon: ClockIcon },
  ];

  const handleSave = async () => {
    setSaving(true);
    // Simulate API call
    await new Promise((resolve) => setTimeout(resolve, 1000));
    setSaving(false);
    setSaved(true);
    setTimeout(() => setSaved(false), 3000);
  };

  const updateSetting = <K extends keyof SettingsState>(
    section: K,
    key: keyof SettingsState[K],
    value: SettingsState[K][keyof SettingsState[K]]
  ) => {
    setSettings((prev) => ({
      ...prev,
      [section]: {
        ...prev[section],
        [key]: value,
      },
    }));
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900">Settings</h1>
          <p className="text-gray-600">Configure system settings and preferences</p>
        </div>
        
        <div className="flex items-center gap-3">
          {saved && (
            <div className="flex items-center gap-2 text-green-600">
              <CheckCircleIcon className="w-5 h-5" />
              <span className="text-sm font-medium">Settings saved!</span>
            </div>
          )}
          <button
            onClick={handleSave}
            disabled={saving}
            className="btn-primary flex items-center gap-2"
          >
            {saving ? (
              <>
                <div className="w-4 h-4 border-2 border-white border-t-transparent rounded-full animate-spin" />
                Saving...
              </>
            ) : (
              'Save Settings'
            )}
          </button>
        </div>
      </div>

      <div className="flex flex-col lg:flex-row gap-6">
        {/* Sidebar Tabs */}
        <div className="lg:w-64">
          <nav className="bg-white rounded-lg shadow p-2 space-y-1">
            {tabs.map((tab) => (
              <button
                key={tab.id}
                onClick={() => setActiveTab(tab.id)}
                className={`w-full flex items-center gap-3 px-3 py-2 rounded-lg text-left transition-colors ${
                  activeTab === tab.id
                    ? 'bg-primary-50 text-primary-700 font-medium'
                    : 'text-gray-600 hover:bg-gray-50'
                }`}
              >
                <tab.icon className="w-5 h-5" />
                {tab.name}
              </button>
            ))}
          </nav>
        </div>

        {/* Settings Content */}
        <div className="flex-1">
          <div className="bg-white rounded-lg shadow p-6">
            {/* General Settings */}
            {activeTab === 'general' && (
              <div className="space-y-6">
                <div className="flex items-center gap-3 mb-6">
                  <GlobeAltIcon className="w-6 h-6 text-primary-600" />
                  <h2 className="text-lg font-semibold">General Settings</h2>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  <div>
                    <label className="label">Institution Name</label>
                    <input
                      type="text"
                      className="input"
                      value={settings.general.institutionName}
                      onChange={(e) => updateSetting('general', 'institutionName', e.target.value)}
                    />
                  </div>
                  <div>
                    <label className="label">Institution Code</label>
                    <input
                      type="text"
                      className="input"
                      value={settings.general.institutionCode}
                      onChange={(e) => updateSetting('general', 'institutionCode', e.target.value)}
                    />
                  </div>
                  <div>
                    <label className="label">Academic Year</label>
                    <input
                      type="text"
                      className="input"
                      value={settings.general.academicYear}
                      onChange={(e) => updateSetting('general', 'academicYear', e.target.value)}
                    />
                  </div>
                  <div>
                    <label className="label">Timezone</label>
                    <select
                      className="input"
                      value={settings.general.timezone}
                      onChange={(e) => updateSetting('general', 'timezone', e.target.value)}
                    >
                      <option value="Africa/Lagos">Africa/Lagos (WAT)</option>
                      <option value="UTC">UTC</option>
                    </select>
                  </div>
                </div>
              </div>
            )}

            {/* Clearance Settings */}
            {activeTab === 'clearance' && (
              <div className="space-y-6">
                <div className="flex items-center gap-3 mb-6">
                  <AcademicCapIcon className="w-6 h-6 text-primary-600" />
                  <h2 className="text-lg font-semibold">Clearance Requirements</h2>
                </div>

                <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-4 mb-6">
                  <div className="flex items-start gap-3">
                    <ExclamationTriangleIcon className="w-5 h-5 text-yellow-600 flex-shrink-0 mt-0.5" />
                    <div>
                      <p className="font-medium text-yellow-800">Important</p>
                      <p className="text-sm text-yellow-700">
                        Students must meet all threshold requirements to be cleared for sign-out.
                        Changing these values affects all active rotations.
                      </p>
                    </div>
                  </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  <div>
                    <label className="label">Attendance Threshold (%)</label>
                    <input
                      type="number"
                      min="0"
                      max="100"
                      className="input"
                      value={settings.clearance.attendanceThreshold}
                      onChange={(e) => updateSetting('clearance', 'attendanceThreshold', parseInt(e.target.value))}
                    />
                    <p className="text-xs text-gray-500 mt-1">Minimum attendance percentage required</p>
                  </div>
                  <div>
                    <label className="label">Test Score Threshold (%)</label>
                    <input
                      type="number"
                      min="0"
                      max="100"
                      className="input"
                      value={settings.clearance.testScoreThreshold}
                      onChange={(e) => updateSetting('clearance', 'testScoreThreshold', parseInt(e.target.value))}
                    />
                    <p className="text-xs text-gray-500 mt-1">Minimum average test score required</p>
                  </div>
                  <div>
                    <label className="label">Participation Threshold (%)</label>
                    <input
                      type="number"
                      min="0"
                      max="100"
                      className="input"
                      value={settings.clearance.participationThreshold}
                      onChange={(e) => updateSetting('clearance', 'participationThreshold', parseInt(e.target.value))}
                    />
                    <p className="text-xs text-gray-500 mt-1">Minimum participation rate required</p>
                  </div>
                  <div>
                    <label className="label">Overall Clearance Threshold (%)</label>
                    <input
                      type="number"
                      min="0"
                      max="100"
                      className="input"
                      value={settings.clearance.overallThreshold}
                      onChange={(e) => updateSetting('clearance', 'overallThreshold', parseInt(e.target.value))}
                    />
                    <p className="text-xs text-gray-500 mt-1">Overall score needed for clearance</p>
                  </div>
                </div>
              </div>
            )}

            {/* Tests Settings */}
            {activeTab === 'tests' && (
              <div className="space-y-6">
                <div className="flex items-center gap-3 mb-6">
                  <DocumentTextIcon className="w-6 h-6 text-primary-600" />
                  <h2 className="text-lg font-semibold">Test Configuration</h2>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  <div>
                    <label className="label">Default Test Duration (minutes)</label>
                    <input
                      type="number"
                      min="5"
                      max="180"
                      className="input"
                      value={settings.tests.defaultDuration}
                      onChange={(e) => updateSetting('tests', 'defaultDuration', parseInt(e.target.value))}
                    />
                  </div>
                  <div>
                    <label className="label">Questions Per Test</label>
                    <input
                      type="number"
                      min="10"
                      max="200"
                      className="input"
                      value={settings.tests.questionsPerTest}
                      onChange={(e) => updateSetting('tests', 'questionsPerTest', parseInt(e.target.value))}
                    />
                  </div>
                </div>

                <div className="border-t pt-6">
                  <h3 className="font-medium text-gray-900 mb-4">Test Options</h3>
                  <div className="space-y-4">
                    <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                      <div>
                        <span className="font-medium">Shuffle Questions</span>
                        <p className="text-sm text-gray-500">Randomize question order for each student</p>
                      </div>
                      <input
                        type="checkbox"
                        className="w-5 h-5 rounded text-primary-600"
                        checked={settings.tests.shuffleQuestions}
                        onChange={(e) => updateSetting('tests', 'shuffleQuestions', e.target.checked)}
                      />
                    </label>
                    <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                      <div>
                        <span className="font-medium">Shuffle Options</span>
                        <p className="text-sm text-gray-500">Randomize answer options for each question</p>
                      </div>
                      <input
                        type="checkbox"
                        className="w-5 h-5 rounded text-primary-600"
                        checked={settings.tests.shuffleOptions}
                        onChange={(e) => updateSetting('tests', 'shuffleOptions', e.target.checked)}
                      />
                    </label>
                    <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                      <div>
                        <span className="font-medium">Allow Review Before Submit</span>
                        <p className="text-sm text-gray-500">Let students review answers before final submission</p>
                      </div>
                      <input
                        type="checkbox"
                        className="w-5 h-5 rounded text-primary-600"
                        checked={settings.tests.allowReview}
                        onChange={(e) => updateSetting('tests', 'allowReview', e.target.checked)}
                      />
                    </label>
                    <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                      <div>
                        <span className="font-medium">Show Correct Answers After Test</span>
                        <p className="text-sm text-gray-500">Display correct answers when viewing test results</p>
                      </div>
                      <input
                        type="checkbox"
                        className="w-5 h-5 rounded text-primary-600"
                        checked={settings.tests.showCorrectAnswers}
                        onChange={(e) => updateSetting('tests', 'showCorrectAnswers', e.target.checked)}
                      />
                    </label>
                  </div>
                </div>
              </div>
            )}

            {/* Anti-Cheating Settings */}
            {activeTab === 'antiCheating' && (
              <div className="space-y-6">
                <div className="flex items-center gap-3 mb-6">
                  <ShieldCheckIcon className="w-6 h-6 text-primary-600" />
                  <h2 className="text-lg font-semibold">Anti-Cheating Measures</h2>
                </div>

                <div className="bg-primary-50 border border-primary-200 rounded-lg p-4 mb-6">
                  <p className="text-sm text-primary-800">
                    These settings help maintain test integrity by preventing common cheating methods.
                    Enable all options for maximum security.
                  </p>
                </div>

                <div className="space-y-4">
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Require Fullscreen Mode</span>
                      <p className="text-sm text-gray-500">Force students to take tests in fullscreen</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.antiCheating.requireFullscreen}
                      onChange={(e) => updateSetting('antiCheating', 'requireFullscreen', e.target.checked)}
                    />
                  </label>
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Detect Tab Switches</span>
                      <p className="text-sm text-gray-500">Track when students switch to other tabs or windows</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.antiCheating.detectTabSwitch}
                      onChange={(e) => updateSetting('antiCheating', 'detectTabSwitch', e.target.checked)}
                    />
                  </label>
                  
                  {settings.antiCheating.detectTabSwitch && (
                    <div className="ml-8">
                      <label className="label">Maximum Tab Switches Allowed</label>
                      <input
                        type="number"
                        min="1"
                        max="10"
                        className="input w-32"
                        value={settings.antiCheating.maxTabSwitches}
                        onChange={(e) => updateSetting('antiCheating', 'maxTabSwitches', parseInt(e.target.value))}
                      />
                      <p className="text-xs text-gray-500 mt-1">Test auto-submits after exceeding this limit</p>
                    </div>
                  )}

                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Device Fingerprinting</span>
                      <p className="text-sm text-gray-500">Identify devices to prevent test sharing</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.antiCheating.deviceFingerprinting}
                      onChange={(e) => updateSetting('antiCheating', 'deviceFingerprinting', e.target.checked)}
                    />
                  </label>
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Prevent Copy/Paste</span>
                      <p className="text-sm text-gray-500">Disable clipboard operations during tests</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.antiCheating.preventCopyPaste}
                      onChange={(e) => updateSetting('antiCheating', 'preventCopyPaste', e.target.checked)}
                    />
                  </label>
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Prevent Right-Click</span>
                      <p className="text-sm text-gray-500">Disable context menu during tests</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.antiCheating.preventRightClick}
                      onChange={(e) => updateSetting('antiCheating', 'preventRightClick', e.target.checked)}
                    />
                  </label>
                </div>
              </div>
            )}

            {/* Notifications Settings */}
            {activeTab === 'notifications' && (
              <div className="space-y-6">
                <div className="flex items-center gap-3 mb-6">
                  <BellIcon className="w-6 h-6 text-primary-600" />
                  <h2 className="text-lg font-semibold">Notification Settings</h2>
                </div>

                <div className="space-y-4">
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Email Notifications</span>
                      <p className="text-sm text-gray-500">Send notifications via email</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.notifications.emailEnabled}
                      onChange={(e) => updateSetting('notifications', 'emailEnabled', e.target.checked)}
                    />
                  </label>
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div className="flex items-center gap-2">
                      <DevicePhoneMobileIcon className="w-5 h-5 text-green-600" />
                      <div>
                        <span className="font-medium">WhatsApp Notifications</span>
                        <p className="text-sm text-gray-500">Send PDFs and alerts via WhatsApp</p>
                      </div>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.notifications.whatsappEnabled}
                      onChange={(e) => updateSetting('notifications', 'whatsappEnabled', e.target.checked)}
                    />
                  </label>
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Low Attendance Alerts</span>
                      <p className="text-sm text-gray-500">Alert when attendance drops below threshold</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.notifications.lowAttendanceAlert}
                      onChange={(e) => updateSetting('notifications', 'lowAttendanceAlert', e.target.checked)}
                    />
                  </label>

                  {settings.notifications.lowAttendanceAlert && (
                    <div className="ml-8">
                      <label className="label">Low Attendance Threshold (%)</label>
                      <input
                        type="number"
                        min="0"
                        max="100"
                        className="input w-32"
                        value={settings.notifications.lowAttendanceThreshold}
                        onChange={(e) => updateSetting('notifications', 'lowAttendanceThreshold', parseInt(e.target.value))}
                      />
                    </div>
                  )}

                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Test Reminders</span>
                      <p className="text-sm text-gray-500">Remind students about upcoming tests</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.notifications.testReminders}
                      onChange={(e) => updateSetting('notifications', 'testReminders', e.target.checked)}
                    />
                  </label>
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Clearance Status Alerts</span>
                      <p className="text-sm text-gray-500">Notify students when clearance status changes</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.notifications.clearanceAlerts}
                      onChange={(e) => updateSetting('notifications', 'clearanceAlerts', e.target.checked)}
                    />
                  </label>
                </div>
              </div>
            )}

            {/* Attendance Settings */}
            {activeTab === 'attendance' && (
              <div className="space-y-6">
                <div className="flex items-center gap-3 mb-6">
                  <ClockIcon className="w-6 h-6 text-primary-600" />
                  <h2 className="text-lg font-semibold">Attendance Settings</h2>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  <div>
                    <label className="label">QR Code Expiry (minutes)</label>
                    <input
                      type="number"
                      min="1"
                      max="60"
                      className="input"
                      value={settings.attendance.qrCodeExpiry}
                      onChange={(e) => updateSetting('attendance', 'qrCodeExpiry', parseInt(e.target.value))}
                    />
                    <p className="text-xs text-gray-500 mt-1">How long QR codes remain valid</p>
                  </div>
                  <div>
                    <label className="label">Late Threshold (minutes)</label>
                    <input
                      type="number"
                      min="5"
                      max="120"
                      className="input"
                      value={settings.attendance.lateThreshold}
                      onChange={(e) => updateSetting('attendance', 'lateThreshold', parseInt(e.target.value))}
                    />
                    <p className="text-xs text-gray-500 mt-1">Minutes after session start to mark as late</p>
                  </div>
                </div>

                <div className="border-t pt-6 space-y-4">
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Allow Late Marking</span>
                      <p className="text-sm text-gray-500">Allow marking attendance after session start</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.attendance.allowLateMarking}
                      onChange={(e) => updateSetting('attendance', 'allowLateMarking', e.target.checked)}
                    />
                  </label>
                  <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                    <div>
                      <span className="font-medium">Require Location</span>
                      <p className="text-sm text-gray-500">Verify student is at the hospital location</p>
                    </div>
                    <input
                      type="checkbox"
                      className="w-5 h-5 rounded text-primary-600"
                      checked={settings.attendance.requireLocation}
                      onChange={(e) => updateSetting('attendance', 'requireLocation', e.target.checked)}
                    />
                  </label>
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}

export default AdminSettings;
