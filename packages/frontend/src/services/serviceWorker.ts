import { Workbox } from 'workbox-window';

let wb: Workbox | null = null;

// ============================================================================
// Service Worker Registration
// ============================================================================

export const registerServiceWorker = async (): Promise<void> => {
  if (!('serviceWorker' in navigator)) {
    console.warn('[SW] Service Workers not supported');
    return;
  }

  // Only register in production
  if (!import.meta.env.PROD) {
    console.log('[SW] Skipping registration in development');
    return;
  }

  wb = new Workbox('/sw.js');

  // ── Lifecycle Events ─────────────────────────────────────────────────────

  wb.addEventListener('installed', (event) => {
    if (event.isUpdate) {
      console.log('[SW] New version available');
      // Show non-intrusive update notification
      showUpdateNotification();
    } else {
      console.log('[SW] Installed for the first time');
      cacheEssentialAssets();
    }
  });

  wb.addEventListener('activated', (event) => {
    if (event.isUpdate) {
      console.log('[SW] Activated after update');
    } else {
      console.log('[SW] Activated for the first time');
    }
  });

  wb.addEventListener('waiting', () => {
    console.log('[SW] Waiting to activate — skip waiting');
    wb?.messageSkipWaiting();
  });

  wb.addEventListener('controlling', () => {
    console.log('[SW] Now controlling the page');
  });

  // ── Messages from SW ─────────────────────────────────────────────────────

  wb.addEventListener('message', (event) => {
    switch (event.data?.type) {
      case 'CACHE_UPDATED':
        console.log('[SW] Cache updated:', event.data.payload);
        break;
      case 'BACKGROUND_SYNC_COMPLETE':
        console.log('[SW] Background sync complete:', event.data.url);
        // Dispatch custom event so OfflineContext can react
        window.dispatchEvent(
          new CustomEvent('sw-sync-complete', { detail: event.data })
        );
        break;
      case 'CACHE_STATUS':
        console.log('[SW] Cache status:', event.data.payload);
        break;
    }
  });

  // ── Register ─────────────────────────────────────────────────────────────

  try {
    await wb.register();
    console.log('[SW] Registered successfully');

    // Register periodic background sync (if supported)
    await registerPeriodicSync();
  } catch (error) {
    console.error('[SW] Registration failed:', error);
  }
};

// ============================================================================
// Periodic Background Sync
// ============================================================================

async function registerPeriodicSync(): Promise<void> {
  if (!('periodicSync' in ServiceWorkerRegistration.prototype)) {
    console.log('[SW] Periodic background sync not supported');
    return;
  }

  try {
    const registration = await navigator.serviceWorker.ready;
    const status = await navigator.permissions.query({
      name: 'periodic-background-sync' as PermissionName,
    });

    if (status.state === 'granted') {
      await (registration as any).periodicSync.register('sync-clinical-data', {
        minInterval: 5 * 60 * 1000, // Every 5 minutes minimum
      });
      console.log('[SW] Periodic background sync registered');
    } else {
      console.log('[SW] Periodic background sync permission not granted');
    }
  } catch (err) {
    console.warn('[SW] Periodic sync registration failed:', err);
  }
}

// ============================================================================
// Update Notification
// ============================================================================

function showUpdateNotification(): void {
  // Create a toast-like notification
  const banner = document.createElement('div');
  banner.id = 'sw-update-banner';
  banner.innerHTML = `
    <div style="
      position: fixed;
      bottom: 80px;
      left: 50%;
      transform: translateX(-50%);
      z-index: 9999;
      background: #1e3a5f;
      color: white;
      padding: 12px 24px;
      border-radius: 12px;
      box-shadow: 0 8px 32px rgba(0,0,0,0.3);
      display: flex;
      align-items: center;
      gap: 12px;
      font-family: system-ui, sans-serif;
      font-size: 14px;
      max-width: 90vw;
      animation: slideUp 0.3s ease-out;
    ">
      <span>🔄 A new version is available</span>
      <button onclick="window.location.reload()" style="
        background: white;
        color: #1e3a5f;
        border: none;
        padding: 6px 16px;
        border-radius: 6px;
        cursor: pointer;
        font-weight: 600;
        font-size: 13px;
        white-space: nowrap;
      ">Update Now</button>
      <button onclick="document.getElementById('sw-update-banner')?.remove()" style="
        background: transparent;
        color: rgba(255,255,255,0.7);
        border: none;
        padding: 4px;
        cursor: pointer;
        font-size: 18px;
        line-height: 1;
      ">&times;</button>
    </div>
    <style>
      @keyframes slideUp {
        from { transform: translateX(-50%) translateY(100px); opacity: 0; }
        to { transform: translateX(-50%) translateY(0); opacity: 1; }
      }
    </style>
  `;
  document.body.appendChild(banner);

  // Auto-dismiss after 30 seconds
  setTimeout(() => {
    banner.remove();
  }, 30000);
}

// ============================================================================
// Asset Caching
// ============================================================================

function cacheEssentialAssets(): void {
  sendMessageToSW({
    type: 'CACHE_ROUTES',
    payload: [
      '/',
      '/login',
      '/student/dashboard',
      '/student/tests',
      '/student/attendance',
      '/student/rotations',
      '/student/cbt',
      '/student/cme',
      '/student/performance',
      '/assessor/dashboard',
      '/assessor/attendance',
      '/admin/dashboard',
    ],
  });
}

// ============================================================================
// Service Worker Messaging
// ============================================================================

export const sendMessageToSW = (message: Record<string, unknown>): void => {
  wb?.messageSW(message);
};

export const cacheApiResponse = (url: string, data: unknown): void => {
  sendMessageToSW({
    type: 'CACHE_API_DATA',
    payload: { url, data },
  });
};

export const clearApiCache = (): void => {
  sendMessageToSW({ type: 'CLEAR_API_CACHE' });
};

export const clearAllSWCaches = (): void => {
  sendMessageToSW({ type: 'CLEAR_CACHE' });
};

export const getCacheStatus = (): void => {
  sendMessageToSW({ type: 'GET_CACHE_STATUS' });
};

// ============================================================================
// Unregister
// ============================================================================

export const unregisterServiceWorker = async (): Promise<void> => {
  if ('serviceWorker' in navigator) {
    const registrations = await navigator.serviceWorker.getRegistrations();
    for (const registration of registrations) {
      await registration.unregister();
    }
    console.log('[SW] All Service Workers unregistered');
  }
};

// ============================================================================
// PWA Utilities
// ============================================================================

/** Check if running as installed PWA */
export const isPWA = (): boolean => {
  return (
    window.matchMedia('(display-mode: standalone)').matches ||
    (window.navigator as any).standalone === true
  );
};

/** Request persistent storage to prevent browser from evicting data */
export const requestPersistentStorage = async (): Promise<boolean> => {
  if (navigator.storage && navigator.storage.persist) {
    const isPersisted = await navigator.storage.persist();
    console.log(`[Storage] Persistence: ${isPersisted ? 'granted' : 'denied'}`);
    return isPersisted;
  }
  return false;
};

/** Get current storage usage */
export const getStorageUsage = async (): Promise<{
  used: number;
  quota: number;
  percentage: number;
} | null> => {
  if (navigator.storage && navigator.storage.estimate) {
    const { usage, quota } = await navigator.storage.estimate();
    const used = usage || 0;
    const total = quota || 0;
    return {
      used,
      quota: total,
      percentage: total > 0 ? Math.round((used / total) * 100) : 0,
    };
  }
  return null;
};

/** Clear all browser caches */
export const clearAllCaches = async (): Promise<void> => {
  if ('caches' in window) {
    const cacheNames = await caches.keys();
    await Promise.all(cacheNames.map((name) => caches.delete(name)));
    console.log('[Cache] All caches cleared');
  }
};
