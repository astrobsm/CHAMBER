import { Fragment } from 'react';
import { Menu, Transition } from '@headlessui/react';
import { useAuth } from '../../contexts/AuthContext';
import { useOffline } from '../../contexts/OfflineContext';
import {
  Bars3Icon,
  BellIcon,
  ArrowRightOnRectangleIcon,
  UserCircleIcon,
  Cog6ToothIcon,
} from '@heroicons/react/24/outline';
import { Link } from 'react-router-dom';

interface HeaderProps {
  onMenuClick: () => void;
}

export function Header({ onMenuClick }: HeaderProps) {
  const { user, logout } = useAuth();
  const { isOnline, pendingSyncItems, syncNow } = useOffline();

  return (
    <header className="sticky top-0 z-30 bg-white border-b border-gray-200">
      <div className="flex items-center justify-between h-16 px-4 sm:px-6 lg:px-8">
        {/* Left side */}
        <div className="flex items-center gap-4">
          <button
            onClick={onMenuClick}
            className="lg:hidden p-2 text-gray-500 hover:text-gray-700 hover:bg-gray-100 rounded-lg"
          >
            <Bars3Icon className="w-6 h-6" />
          </button>
          
          {/* Online/Offline indicator */}
          <div className="hidden sm:flex items-center gap-2">
            <span
              className={`w-2 h-2 rounded-full ${
                isOnline ? 'bg-green-500' : 'bg-yellow-500'
              }`}
            />
            <span className="text-sm text-gray-500">
              {isOnline ? 'Online' : 'Offline'}
            </span>
            {pendingSyncItems > 0 && (
              <button
                onClick={syncNow}
                className="text-xs text-primary-600 hover:text-primary-700 font-medium"
              >
                ({pendingSyncItems} pending - sync now)
              </button>
            )}
          </div>
        </div>

        {/* Right side */}
        <div className="flex items-center gap-2 sm:gap-4">
          {/* Notifications */}
          <Menu as="div" className="relative">
            <Menu.Button className="relative p-2 text-gray-500 hover:text-gray-700 hover:bg-gray-100 rounded-lg">
              <BellIcon className="w-6 h-6" />
              <span className="absolute top-1.5 right-1.5 w-2 h-2 bg-red-500 rounded-full" />
            </Menu.Button>
            <Transition
              as={Fragment}
              enter="transition ease-out duration-100"
              enterFrom="transform opacity-0 scale-95"
              enterTo="transform opacity-100 scale-100"
              leave="transition ease-in duration-75"
              leaveFrom="transform opacity-100 scale-100"
              leaveTo="transform opacity-0 scale-95"
            >
              <Menu.Items className="absolute right-0 mt-2 w-80 origin-top-right bg-white rounded-xl shadow-lg ring-1 ring-black/5 focus:outline-none">
                <div className="p-4 border-b border-gray-100">
                  <h3 className="font-semibold text-gray-900">Notifications</h3>
                </div>
                <div className="max-h-64 overflow-y-auto">
                  <div className="p-4 text-center text-sm text-gray-500">
                    No new notifications
                  </div>
                </div>
                <div className="p-2 border-t border-gray-100">
                  <Link
                    to={`/${user?.role}/notifications`}
                    className="block w-full text-center text-sm text-primary-600 hover:text-primary-700 py-2"
                  >
                    View all notifications
                  </Link>
                </div>
              </Menu.Items>
            </Transition>
          </Menu>

          {/* User menu */}
          <Menu as="div" className="relative">
            <Menu.Button className="flex items-center gap-2 p-1.5 hover:bg-gray-100 rounded-lg">
              <div className="w-8 h-8 bg-primary-100 rounded-full flex items-center justify-center">
                <span className="text-primary-700 font-medium text-sm">
                  {user?.firstName?.charAt(0)}{user?.lastName?.charAt(0)}
                </span>
              </div>
              <div className="hidden sm:block text-left">
                <p className="text-sm font-medium text-gray-700">
                  {user?.firstName} {user?.lastName}
                </p>
                <p className="text-xs text-gray-500 capitalize">{user?.role}</p>
              </div>
            </Menu.Button>
            <Transition
              as={Fragment}
              enter="transition ease-out duration-100"
              enterFrom="transform opacity-0 scale-95"
              enterTo="transform opacity-100 scale-100"
              leave="transition ease-in duration-75"
              leaveFrom="transform opacity-100 scale-100"
              leaveTo="transform opacity-0 scale-95"
            >
              <Menu.Items className="absolute right-0 mt-2 w-48 origin-top-right bg-white rounded-xl shadow-lg ring-1 ring-black/5 focus:outline-none">
                <div className="p-1">
                  <Menu.Item>
                    {({ active }) => (
                      <Link
                        to={`/${user?.role}/profile`}
                        className={`flex items-center gap-2 px-3 py-2 text-sm rounded-lg ${
                          active ? 'bg-gray-100' : ''
                        }`}
                      >
                        <UserCircleIcon className="w-5 h-5 text-gray-500" />
                        Profile
                      </Link>
                    )}
                  </Menu.Item>
                  {user?.role === 'admin' && (
                    <Menu.Item>
                      {({ active }) => (
                        <Link
                          to="/admin/settings"
                          className={`flex items-center gap-2 px-3 py-2 text-sm rounded-lg ${
                            active ? 'bg-gray-100' : ''
                          }`}
                        >
                          <Cog6ToothIcon className="w-5 h-5 text-gray-500" />
                          Settings
                        </Link>
                      )}
                    </Menu.Item>
                  )}
                  <hr className="my-1 border-gray-100" />
                  <Menu.Item>
                    {({ active }) => (
                      <button
                        onClick={logout}
                        className={`flex items-center gap-2 w-full px-3 py-2 text-sm text-red-600 rounded-lg ${
                          active ? 'bg-red-50' : ''
                        }`}
                      >
                        <ArrowRightOnRectangleIcon className="w-5 h-5" />
                        Sign out
                      </button>
                    )}
                  </Menu.Item>
                </div>
              </Menu.Items>
            </Transition>
          </Menu>
        </div>
      </div>
    </header>
  );
}

export default Header;
