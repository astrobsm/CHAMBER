import { Workbox } from 'workbox-window';

let wb: Workbox | null = null;

export const registerServiceWorker = async (): Promise<void> => {
  if ('serviceWorker' in navigator && import.meta.env.PROD) {
    wb = new Workbox('/sw.js');

    // Add event listeners
    wb.addEventListener('installed', (event) => {
      if (event.isUpdate) {
        // New service worker installed
        console.log('New version available! Refresh to update.');
        // Show update notification
        if (window.confirm('A new version is available. Reload to update?')) {
          window.location.reload();
        }
      } else {
        console.log('Service Worker installed for the first time.');
      }
    });

    wb.addEventListener('activated', (event) => {
      if (event.isUpdate) {
        console.log('Service Worker activated after update.');
      } else {
        console.log('Service Worker activated for the first time.');
        // Cache important resources
        cacheEssentialAssets();
      }
    });

    wb.addEventListener('waiting', () => {
      console.log('Service Worker waiting to activate.');
      // Force activation
      wb?.messageSkipWaiting();
    });

    wb.addEventListener('controlling', () => {
      console.log('Service Worker is now controlling the page.');
    });

    // Handle offline/online events
    wb.addEventListener('message', (event) => {
      if (event.data.type === 'CACHE_UPDATED') {
        console.log('Cache updated:', event.data.payload);
      }
    });

    try {
      await wb.register();
      console.log('Service Worker registered successfully.');
    } catch (error) {
      console.error('Service Worker registration failed:', error);
    }
  }
};

export const unregisterServiceWorker = async (): Promise<void> => {
  if ('serviceWorker' in navigator) {
    const registrations = await navigator.serviceWorker.getRegistrations();
    for (const registration of registrations) {
      await registration.unregister();
    }
    console.log('Service Workers unregistered.');
  }
};

export const sendMessageToSW = (message: any): void => {
  wb?.messageSW(message);
};

const cacheEssentialAssets = (): void => {
  // Send message to SW to cache essential routes
  sendMessageToSW({
    type: 'CACHE_ROUTES',
    payload: [
      '/student/dashboard',
      '/student/tests',
      '/student/attendance',
      '/student/rotations',
    ],
  });
};

// Check if app is running in standalone mode (PWA)
export const isPWA = (): boolean => {
  return (
    window.matchMedia('(display-mode: standalone)').matches ||
    (window.navigator as any).standalone === true
  );
};

// Request persistent storage
export const requestPersistentStorage = async (): Promise<boolean> => {
  if (navigator.storage && navigator.storage.persist) {
    const isPersisted = await navigator.storage.persist();
    console.log(`Storage persistence: ${isPersisted ? 'granted' : 'denied'}`);
    return isPersisted;
  }
  return false;
};

// Get storage usage
export const getStorageUsage = async (): Promise<{ used: number; quota: number } | null> => {
  if (navigator.storage && navigator.storage.estimate) {
    const { usage, quota } = await navigator.storage.estimate();
    return { used: usage || 0, quota: quota || 0 };
  }
  return null;
};

// Clear all caches
export const clearAllCaches = async (): Promise<void> => {
  if ('caches' in window) {
    const cacheNames = await caches.keys();
    await Promise.all(cacheNames.map((name) => caches.delete(name)));
    console.log('All caches cleared.');
  }
};
