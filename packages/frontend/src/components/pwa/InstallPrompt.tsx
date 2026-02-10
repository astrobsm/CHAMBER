import { useState, useEffect } from 'react';
import { useInstallPrompt } from '../../hooks/useInstallPrompt';

/**
 * PWA Install Prompt Banner
 * Shows a beautiful, animated banner inviting users to install the app.
 * Handles the beforeinstallprompt lifecycle, remembers dismissal for 7 days,
 * and shows a success message on install.
 */
export function InstallPrompt() {
  const { canInstall, isInstalled, isJustInstalled, installApp, dismissPrompt } = useInstallPrompt();
  const [isVisible, setIsVisible] = useState(false);
  const [isInstalling, setIsInstalling] = useState(false);
  const [showSuccess, setShowSuccess] = useState(false);

  // Animate in after a delay (don't show immediately on page load)
  useEffect(() => {
    if (canInstall) {
      const timer = setTimeout(() => setIsVisible(true), 3000);
      return () => clearTimeout(timer);
    } else {
      setIsVisible(false);
    }
  }, [canInstall]);

  // Show success toast when app is installed
  useEffect(() => {
    if (isJustInstalled) {
      setShowSuccess(true);
      const timer = setTimeout(() => setShowSuccess(false), 5000);
      return () => clearTimeout(timer);
    }
  }, [isJustInstalled]);

  const handleInstall = async () => {
    setIsInstalling(true);
    const success = await installApp();
    setIsInstalling(false);
    if (success) {
      setIsVisible(false);
    }
  };

  const handleDismiss = () => {
    setIsVisible(false);
    // Small delay so exit animation completes
    setTimeout(() => dismissPrompt(), 300);
  };

  // Success notification after install
  if (showSuccess) {
    return (
      <div
        className="fixed bottom-6 left-4 right-4 sm:left-auto sm:right-6 sm:max-w-sm z-[60] animate-in"
        style={{
          animation: 'slideUpFade 0.4s ease-out',
        }}
      >
        <div className="bg-green-600 text-white rounded-xl shadow-2xl p-4 flex items-center gap-3">
          <div className="flex-shrink-0 w-10 h-10 bg-white/20 rounded-full flex items-center justify-center">
            <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M5 13l4 4L19 7" />
            </svg>
          </div>
          <div>
            <p className="font-semibold text-sm">App installed successfully!</p>
            <p className="text-xs text-green-100 mt-0.5">
              UNTH Rotations is now on your home screen
            </p>
          </div>
          <button
            onClick={() => setShowSuccess(false)}
            className="flex-shrink-0 ml-auto p-1 hover:bg-white/20 rounded-full transition-colors"
            aria-label="Close"
          >
            <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
      </div>
    );
  }

  // Don't render if already installed or can't install
  if (isInstalled || !canInstall) return null;

  return (
    <>
      {/* Backdrop for mobile */}
      {isVisible && (
        <div
          className="fixed inset-0 bg-black/20 z-[55] sm:hidden transition-opacity duration-300"
          onClick={handleDismiss}
          style={{ opacity: isVisible ? 1 : 0 }}
        />
      )}

      {/* Install Banner */}
      <div
        className={`
          fixed z-[60] transition-all duration-500 ease-out
          bottom-0 left-0 right-0 sm:bottom-6 sm:left-auto sm:right-6 sm:max-w-md
          ${isVisible ? 'translate-y-0 opacity-100' : 'translate-y-full opacity-0'}
        `}
      >
        <div
          className="bg-gradient-to-br from-primary-800 via-primary-700 to-primary-900 text-white 
                      sm:rounded-2xl shadow-2xl overflow-hidden"
        >
          {/* Decorative top bar */}
          <div className="h-1 bg-gradient-to-r from-green-400 via-emerald-400 to-teal-400" />

          <div className="p-5 sm:p-6">
            {/* Close button */}
            <button
              onClick={handleDismiss}
              className="absolute top-3 right-3 p-1.5 rounded-full hover:bg-white/10 
                         transition-colors focus:outline-none focus:ring-2 focus:ring-white/30"
              aria-label="Dismiss install prompt"
            >
              <svg className="w-5 h-5 text-white/70" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>

            {/* Content */}
            <div className="flex items-start gap-4">
              {/* App icon */}
              <div className="flex-shrink-0 w-14 h-14 bg-white rounded-2xl shadow-lg flex items-center justify-center">
                <svg className="w-8 h-8 text-primary-800" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M17 3H7c-1.1 0-2 .9-2 2v16l7-3 7 3V5c0-1.1-.9-2-2-2z" />
                </svg>
              </div>

              <div className="flex-1 min-w-0 pr-6">
                <h3 className="text-lg font-bold leading-tight">
                  Install UNTH Rotations
                </h3>
                <p className="text-sm text-white/80 mt-1 leading-relaxed">
                  Add to your home screen for quick access, offline support, and a native app experience.
                </p>

                {/* Feature badges */}
                <div className="flex flex-wrap gap-2 mt-3">
                  <span className="inline-flex items-center gap-1 bg-white/15 text-xs px-2.5 py-1 rounded-full">
                    <svg className="w-3 h-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 10V3L4 14h7v7l9-11h-7z" />
                    </svg>
                    Fast access
                  </span>
                  <span className="inline-flex items-center gap-1 bg-white/15 text-xs px-2.5 py-1 rounded-full">
                    <svg className="w-3 h-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8.111 16.404a5.5 5.5 0 017.778 0M12 20h.01m-7.08-7.071c3.904-3.905 10.236-3.905 14.14 0M1.394 9.393c5.857-5.858 15.355-5.858 21.213 0" />
                    </svg>
                    Works offline
                  </span>
                  <span className="inline-flex items-center gap-1 bg-white/15 text-xs px-2.5 py-1 rounded-full">
                    <svg className="w-3 h-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                    </svg>
                    Notifications
                  </span>
                </div>
              </div>
            </div>

            {/* Action buttons */}
            <div className="flex gap-3 mt-5">
              <button
                onClick={handleDismiss}
                className="flex-1 py-2.5 px-4 text-sm font-medium text-white/80 rounded-xl
                           border border-white/20 hover:bg-white/10 transition-all duration-200
                           focus:outline-none focus:ring-2 focus:ring-white/30"
              >
                Not now
              </button>
              <button
                onClick={handleInstall}
                disabled={isInstalling}
                className="flex-1 py-2.5 px-4 text-sm font-bold bg-white text-primary-800 rounded-xl
                           hover:bg-green-50 transition-all duration-200 shadow-lg
                           disabled:opacity-70 disabled:cursor-not-allowed
                           focus:outline-none focus:ring-2 focus:ring-white/50
                           flex items-center justify-center gap-2"
              >
                {isInstalling ? (
                  <>
                    <svg className="w-4 h-4 animate-spin" viewBox="0 0 24 24" fill="none">
                      <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" />
                      <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z" />
                    </svg>
                    Installing...
                  </>
                ) : (
                  <>
                    <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4" />
                    </svg>
                    Install App
                  </>
                )}
              </button>
            </div>
          </div>
        </div>
      </div>

      {/* Animation keyframes */}
      <style>{`
        @keyframes slideUpFade {
          from {
            opacity: 0;
            transform: translateY(20px);
          }
          to {
            opacity: 1;
            transform: translateY(0);
          }
        }
      `}</style>
    </>
  );
}

export default InstallPrompt;
