import { NavLink, useLocation } from 'react-router-dom';
import { useAuth } from '../../contexts/AuthContext';
import { 
  HomeIcon, 
  AcademicCapIcon, 
  ClipboardDocumentListIcon,
  ClockIcon,
  ChartBarIcon,
  BookOpenIcon,
  UserCircleIcon,
  UsersIcon,
  QuestionMarkCircleIcon,
  Cog6ToothIcon,
  DocumentChartBarIcon,
  XMarkIcon,
  DocumentTextIcon,
  ComputerDesktopIcon,
} from '@heroicons/react/24/outline';

interface SidebarProps {
  isOpen: boolean;
  onClose: () => void;
}

interface NavItem {
  name: string;
  href: string;
  icon: React.ComponentType<{ className?: string }>;
}

const studentNavItems: NavItem[] = [
  { name: 'Dashboard', href: '/student/dashboard', icon: HomeIcon },
  { name: 'Rotations', href: '/student/rotations', icon: AcademicCapIcon },
  { name: 'CBT', href: '/student/cbt', icon: ComputerDesktopIcon },
  { name: 'Tests', href: '/student/tests', icon: ClipboardDocumentListIcon },
  { name: 'Study Module', href: '/student/study', icon: DocumentTextIcon },
  { name: 'Attendance', href: '/student/attendance', icon: ClockIcon },
  { name: 'Performance', href: '/student/performance', icon: ChartBarIcon },
  { name: 'CME Activities', href: '/student/cme', icon: BookOpenIcon },
  { name: 'Profile', href: '/student/profile', icon: UserCircleIcon },
];

const assessorNavItems: NavItem[] = [
  { name: 'Dashboard', href: '/assessor/dashboard', icon: HomeIcon },
  { name: 'CBT Management', href: '/assessor/cbt', icon: ComputerDesktopIcon },
  { name: 'Attendance', href: '/assessor/attendance', icon: ClockIcon },
  { name: 'Questions', href: '/assessor/questions', icon: QuestionMarkCircleIcon },
  { name: 'Students', href: '/assessor/students', icon: UsersIcon },
  { name: 'Reports', href: '/assessor/reports', icon: DocumentChartBarIcon },
];

const adminNavItems: NavItem[] = [
  { name: 'Dashboard', href: '/admin/dashboard', icon: HomeIcon },
  { name: 'CBT Overview', href: '/admin/cbt', icon: ComputerDesktopIcon },
  { name: 'CME Articles', href: '/admin/cme', icon: BookOpenIcon },
  { name: 'Users', href: '/admin/users', icon: UsersIcon },
  { name: 'Rotations', href: '/admin/rotations', icon: AcademicCapIcon },
  { name: 'Questions', href: '/admin/questions', icon: QuestionMarkCircleIcon },
  { name: 'Analytics', href: '/admin/analytics', icon: ChartBarIcon },
  { name: 'Settings', href: '/admin/settings', icon: Cog6ToothIcon },
];

export function Sidebar({ isOpen, onClose }: SidebarProps) {
  const { user } = useAuth();
  const location = useLocation();

  const navItems = user?.role === 'student' 
    ? studentNavItems 
    : user?.role === 'assessor' 
      ? assessorNavItems 
      : adminNavItems;

  const isActive = (href: string) => location.pathname === href;

  return (
    <>
      {/* Mobile sidebar */}
      <aside
        className={`fixed inset-y-0 left-0 z-50 w-64 bg-primary-800 transform transition-transform duration-300 ease-in-out lg:translate-x-0 ${
          isOpen ? 'translate-x-0' : '-translate-x-full'
        }`}
      >
        <div className="flex flex-col h-full">
          {/* Logo */}
          <div className="flex items-center justify-between h-16 px-4 border-b border-primary-700">
            <div className="flex items-center gap-3">
              <img 
                src="/logo.png" 
                alt="UNTH Logo" 
                className="w-10 h-10 object-contain"
              />
              <div>
                <h1 className="text-white font-semibold text-sm">Clinical Rotation</h1>
                <p className="text-primary-300 text-xs">UNTH Platform</p>
              </div>
            </div>
            <button
              onClick={onClose}
              className="lg:hidden p-2 text-primary-300 hover:text-white rounded-lg"
            >
              <XMarkIcon className="w-5 h-5" />
            </button>
          </div>

          {/* Navigation */}
          <nav className="flex-1 px-3 py-4 space-y-1 overflow-y-auto">
            {navItems.map((item) => (
              <NavLink
                key={item.href}
                to={item.href}
                onClick={onClose}
                className={`flex items-center gap-3 px-3 py-2.5 rounded-lg text-sm font-medium transition-colors ${
                  isActive(item.href)
                    ? 'bg-white/10 text-white'
                    : 'text-primary-200 hover:bg-white/5 hover:text-white'
                }`}
              >
                <item.icon className="w-5 h-5" />
                {item.name}
              </NavLink>
            ))}
          </nav>

          {/* User info */}
          <div className="p-4 border-t border-primary-700">
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 bg-primary-600 rounded-full flex items-center justify-center">
                <span className="text-white font-medium text-sm">
                  {user?.firstName?.charAt(0)}{user?.lastName?.charAt(0)}
                </span>
              </div>
              <div className="flex-1 min-w-0">
                <p className="text-white text-sm font-medium truncate">
                  {user?.firstName} {user?.lastName}
                </p>
                <p className="text-primary-300 text-xs capitalize">
                  {user?.role}
                </p>
              </div>
            </div>
          </div>
        </div>
      </aside>
    </>
  );
}

export default Sidebar;
