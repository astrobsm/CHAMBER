import { useState, useEffect, useCallback, useRef } from 'react';

interface BeforeInstallPromptEvent extends Event {
  readonly platforms: string[];
  readonly userChoice: Promise<{ outcome: 'accepted' | 'dismissed'; platform: string }>;
  prompt(): Promise<void>;
}

interface UseInstallPromptReturn {
  /** Whether the install prompt can be shown */
  canInstall: boolean;
  /** Whether the app is already installed (standalone mode) */
  isInstalled: boolean;
  /** Whether the user dismissed the prompt (stored in localStorage) */
  isDismissed: boolean;
  /** Whether the app was just installed in this session */
  isJustInstalled: boolean;
  /** Trigger the native install prompt */
  installApp: () => Promise<boolean>;
  /** Dismiss the prompt and remember in localStorage */
  dismissPrompt: () => void;
  /** Platform info (e.g., 'web', 'play') */
  platforms: string[];
}

const DISMISS_KEY = 'pwa-install-dismissed';
const DISMISS_DURATION_MS = 7 * 24 * 60 * 60 * 1000; // 7 days

/**
 * Hook to manage the PWA install prompt lifecycle.
 * Captures the `beforeinstallprompt` event and provides methods to
 * trigger installation and dismiss the prompt.
 */
export function useInstallPrompt(): UseInstallPromptReturn {
  const deferredPromptRef = useRef<BeforeInstallPromptEvent | null>(null);
  const [canInstall, setCanInstall] = useState(false);
  const [isInstalled, setIsInstalled] = useState(false);
  const [isJustInstalled, setIsJustInstalled] = useState(false);
  const [platforms, setPlatforms] = useState<string[]>([]);
  const [isDismissed, setIsDismissed] = useState(() => {
    try {
      const stored = localStorage.getItem(DISMISS_KEY);
      if (!stored) return false;
      const { timestamp } = JSON.parse(stored);
      // Re-show after dismiss duration
      return Date.now() - timestamp < DISMISS_DURATION_MS;
    } catch {
      return false;
    }
  });

  // Check if already installed
  useEffect(() => {
    const isStandalone =
      window.matchMedia('(display-mode: standalone)').matches ||
      (window.navigator as unknown as { standalone?: boolean }).standalone === true ||
      document.referrer.includes('android-app://');

    setIsInstalled(isStandalone);

    // Listen for display mode changes (iOS/Android install detection)
    const mediaQuery = window.matchMedia('(display-mode: standalone)');
    const handleChange = (e: MediaQueryListEvent) => {
      setIsInstalled(e.matches);
      if (e.matches) {
        setIsJustInstalled(true);
        setCanInstall(false);
      }
    };
    mediaQuery.addEventListener('change', handleChange);

    return () => mediaQuery.removeEventListener('change', handleChange);
  }, []);

  // Capture the beforeinstallprompt event
  useEffect(() => {
    const handleBeforeInstallPrompt = (e: Event) => {
      // Prevent the default browser mini-infobar
      e.preventDefault();
      deferredPromptRef.current = e as BeforeInstallPromptEvent;
      setPlatforms((e as BeforeInstallPromptEvent).platforms || []);
      setCanInstall(true);
    };

    const handleAppInstalled = () => {
      setIsInstalled(true);
      setIsJustInstalled(true);
      setCanInstall(false);
      deferredPromptRef.current = null;
    };

    window.addEventListener('beforeinstallprompt', handleBeforeInstallPrompt);
    window.addEventListener('appinstalled', handleAppInstalled);

    return () => {
      window.removeEventListener('beforeinstallprompt', handleBeforeInstallPrompt);
      window.removeEventListener('appinstalled', handleAppInstalled);
    };
  }, []);

  const installApp = useCallback(async (): Promise<boolean> => {
    if (!deferredPromptRef.current) return false;

    try {
      await deferredPromptRef.current.prompt();
      const { outcome } = await deferredPromptRef.current.userChoice;

      if (outcome === 'accepted') {
        setIsJustInstalled(true);
        setCanInstall(false);
        deferredPromptRef.current = null;
        // Clear dismiss state on install
        localStorage.removeItem(DISMISS_KEY);
        return true;
      }

      return false;
    } catch {
      return false;
    }
  }, []);

  const dismissPrompt = useCallback(() => {
    setIsDismissed(true);
    try {
      localStorage.setItem(DISMISS_KEY, JSON.stringify({ timestamp: Date.now() }));
    } catch {
      // localStorage not available
    }
  }, []);

  return {
    canInstall: canInstall && !isInstalled && !isDismissed,
    isInstalled,
    isDismissed,
    isJustInstalled,
    installApp,
    dismissPrompt,
    platforms,
  };
}

export default useInstallPrompt;
