import {
  createContext,
  useContext,
  useEffect,
  useState,
  useCallback,
  useRef,
  ReactNode,
} from 'react';
import { syncService } from '../services/syncService';
import { SyncItem, SyncResult, PullData } from '../types';
import toast from 'react-hot-toast';
import { useAuth } from './AuthContext';

// ============================================================================
// Types
// ============================================================================

interface SyncStatus {
  pendingPush: number;
  conflicts: number;
  lastPushSync: string | null;
  lastPullSync: string | null;
  isSyncing: boolean;
  isPulling: boolean;
  lastSyncResult: SyncResult | null;
  lastPullResult: PullData | null;
}

interface OfflineContextType {
  // Connection state
  isOnline: boolean;

  // Sync state
  syncStatus: SyncStatus;

  // Actions — PUSH
  addToSyncQueue: (
    item: Omit<SyncItem, 'id' | 'createdAt' | 'synced' | 'retryCount'>
  ) => Promise<string>;
  pushSync: () => Promise<SyncResult | null>;

  // Actions — PULL
  pullSync: (options?: { entities?: string[]; fullSync?: boolean }) => Promise<PullData | null>;
  getCachedEntity: <T>(entity: string) => Promise<T | null>;

  // Actions — FULL sync
  syncNow: () => Promise<void>;
  fullSync: () => Promise<void>;

  // Conflict management
  getConflicts: () => Promise<SyncItem[]>;

  // Cache
  cacheData: (key: string, data: unknown, ttl?: number) => Promise<void>;
  getCachedData: <T>(key: string) => Promise<T | null>;

  // Device
  deviceId: string;
}

const OfflineContext = createContext<OfflineContextType | null>(null);

// ============================================================================
// Constants
// ============================================================================

const PULL_INTERVAL_MS = 5 * 60 * 1000;    // Pull every 5 minutes when online
const PUSH_RETRY_MS = 30 * 1000;            // Retry push every 30 seconds if pending
const RECONNECT_DELAY_MS = 2000;             // Wait 2s after reconnection before syncing

// ============================================================================
// Provider
// ============================================================================

export function OfflineProvider({ children }: { children: ReactNode }) {
  const [isOnline, setIsOnline] = useState(navigator.onLine);
  const [syncStatus, setSyncStatus] = useState<SyncStatus>({
    pendingPush: 0,
    conflicts: 0,
    lastPushSync: null,
    lastPullSync: null,
    isSyncing: false,
    isPulling: false,
    lastSyncResult: null,
    lastPullResult: null,
  });

  const { isAuthenticated } = useAuth();
  const pullIntervalRef = useRef<ReturnType<typeof setInterval> | null>(null);
  const pushRetryRef = useRef<ReturnType<typeof setInterval> | null>(null);
  const initRef = useRef(false);

  // ── Initialize sync service ──────────────────────────────────────────────

  useEffect(() => {
    if (initRef.current) return;
    initRef.current = true;

    syncService.init().then(() => {
      refreshStatus();
      // Register device on first load if authenticated
      if (isAuthenticated && navigator.onLine) {
        syncService.registerDevice();
      }
    });
  }, [isAuthenticated]);

  // ── Online/Offline listeners ─────────────────────────────────────────────

  useEffect(() => {
    const handleOnline = () => {
      setIsOnline(true);
      toast.success('Back online! Syncing...', { duration: 3000, icon: '🌐' });

      // Auto-sync after brief delay to let connection stabilize
      setTimeout(() => {
        if (isAuthenticated) {
          performFullSync();
        }
      }, RECONNECT_DELAY_MS);
    };

    const handleOffline = () => {
      setIsOnline(false);
      toast('You\'re offline. Changes saved locally.', {
        duration: 4000,
        icon: '📴',
      });
    };

    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);

    return () => {
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
    };
  }, [isAuthenticated]);

  // ── Periodic PULL (when online & authenticated) ──────────────────────────

  useEffect(() => {
    if (isOnline && isAuthenticated) {
      // Start periodic pull
      pullIntervalRef.current = setInterval(() => {
        performPull();
      }, PULL_INTERVAL_MS);

      // Delay first pull slightly to let init() finish
      const initPullTimeout = setTimeout(() => {
        performPull();
      }, 2000);

      return () => {
        clearTimeout(initPullTimeout);
        if (pullIntervalRef.current) {
          clearInterval(pullIntervalRef.current);
          pullIntervalRef.current = null;
        }
      };
    } else {
      // Stop periodic pull when offline
      if (pullIntervalRef.current) {
        clearInterval(pullIntervalRef.current);
        pullIntervalRef.current = null;
      }
    }

    return () => {
      if (pullIntervalRef.current) {
        clearInterval(pullIntervalRef.current);
      }
    };
  }, [isOnline, isAuthenticated]);

  // ── Periodic PUSH retry (for any pending items) ──────────────────────────

  useEffect(() => {
    if (isOnline && isAuthenticated) {
      pushRetryRef.current = setInterval(async () => {
        const pending = await syncService.getPendingCount();
        if (pending > 0) {
          performPush();
        }
      }, PUSH_RETRY_MS);
    } else {
      if (pushRetryRef.current) {
        clearInterval(pushRetryRef.current);
        pushRetryRef.current = null;
      }
    }

    return () => {
      if (pushRetryRef.current) {
        clearInterval(pushRetryRef.current);
      }
    };
  }, [isOnline, isAuthenticated]);

  // ── Listen for service worker sync messages ──────────────────────────────

  useEffect(() => {
    const handleMessage = (event: MessageEvent) => {
      if (event.data?.type === 'SYNC_TRIGGERED') {
        if (isAuthenticated) {
          performFullSync();
        }
      }
      if (event.data?.type === 'BACKGROUND_SYNC_COMPLETE') {
        refreshStatus();
      }
    };

    if ('serviceWorker' in navigator) {
      navigator.serviceWorker.addEventListener('message', handleMessage);
    }

    return () => {
      if ('serviceWorker' in navigator) {
        navigator.serviceWorker.removeEventListener('message', handleMessage);
      }
    };
  }, [isAuthenticated]);

  // ── Helpers ──────────────────────────────────────────────────────────────

  const refreshStatus = useCallback(async () => {
    const [pending, conflicts, lastPush, lastPull] = await Promise.all([
      syncService.getPendingCount(),
      syncService.getConflicts(),
      syncService.getMeta('lastPushSync'),
      syncService.getMeta('lastPullSync'),
    ]);

    setSyncStatus(prev => ({
      ...prev,
      pendingPush: pending,
      conflicts: conflicts.length,
      lastPushSync: lastPush,
      lastPullSync: lastPull,
    }));
  }, []);

  // ── PUSH ─────────────────────────────────────────────────────────────────

  const performPush = useCallback(async (): Promise<SyncResult | null> => {
    if (!isOnline) return null;

    setSyncStatus(prev => ({ ...prev, isSyncing: true }));
    try {
      const result = await syncService.pushSync();
      if (result) {
        setSyncStatus(prev => ({
          ...prev,
          lastSyncResult: result,
          isSyncing: false,
        }));

        if (result.conflicts > 0) {
          toast(`${result.conflicts} sync conflict(s) detected`, {
            icon: '⚠️',
            duration: 5000,
          });
        }
      } else {
        setSyncStatus(prev => ({ ...prev, isSyncing: false }));
      }

      await refreshStatus();
      return result;
    } catch {
      setSyncStatus(prev => ({ ...prev, isSyncing: false }));
      return null;
    }
  }, [isOnline, refreshStatus]);

  // ── PULL ─────────────────────────────────────────────────────────────────

  const performPull = useCallback(
    async (options?: { entities?: string[]; fullSync?: boolean }): Promise<PullData | null> => {
      if (!isOnline) return null;

      setSyncStatus(prev => ({ ...prev, isPulling: true }));
      try {
        const result = await syncService.pullSync(options);
        setSyncStatus(prev => ({
          ...prev,
          lastPullResult: result,
          isPulling: false,
        }));
        await refreshStatus();
        return result;
      } catch {
        setSyncStatus(prev => ({ ...prev, isPulling: false }));
        return null;
      }
    },
    [isOnline, refreshStatus]
  );

  // ── FULL SYNC (Push + Pull) ──────────────────────────────────────────────

  const performFullSync = useCallback(async () => {
    if (!isOnline || !isAuthenticated) return;
    await performPush();
    await performPull();
  }, [isOnline, isAuthenticated, performPush, performPull]);

  // ── Public API ───────────────────────────────────────────────────────────

  const addToSyncQueue = useCallback(
    async (
      item: Omit<SyncItem, 'id' | 'createdAt' | 'synced' | 'retryCount'>
    ): Promise<string> => {
      const id = await syncService.addToQueue(item);
      await refreshStatus();

      // Try immediate push if online
      if (isOnline) {
        // Small delay so UI updates first
        setTimeout(() => performPush(), 100);
      }

      return id;
    },
    [isOnline, refreshStatus, performPush]
  );

  const getCachedEntity = useCallback(
    async <T,>(entity: string): Promise<T | null> => {
      return syncService.getCachedEntity<T>(entity);
    },
    []
  );

  const cacheData = useCallback(
    async (key: string, data: unknown, ttl?: number) => {
      await syncService.cacheData(key, data, ttl);
    },
    []
  );

  const getCachedData = useCallback(
    async <T,>(key: string): Promise<T | null> => {
      return syncService.getCachedData<T>(key);
    },
    []
  );

  const getConflicts = useCallback(async () => {
    return syncService.getConflicts();
  }, []);

  // ── Render ───────────────────────────────────────────────────────────────

  return (
    <OfflineContext.Provider
      value={{
        isOnline,
        syncStatus,
        addToSyncQueue,
        pushSync: performPush,
        pullSync: performPull,
        getCachedEntity,
        syncNow: performFullSync,
        fullSync: async () => {
          await performPush();
          await performPull({ fullSync: true });
        },
        getConflicts,
        cacheData,
        getCachedData,
        deviceId: syncService.getDeviceId(),
      }}
    >
      {children}

      {/* ── Offline Banner ────────────────────────────────────────────────── */}
      {!isOnline && (
        <div
          className="fixed bottom-0 left-0 right-0 z-50 flex items-center justify-center gap-2 px-4 py-3"
          style={{
            background: 'linear-gradient(135deg, #dc2626 0%, #b91c1c 100%)',
            color: 'white',
          }}
        >
          <svg className="w-5 h-5 animate-pulse" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              strokeWidth={2}
              d="M18.364 5.636a9 9 0 010 12.728m0 0l-2.829-2.829m2.829 2.829L21 21M15.536 8.464a5 5 0 010 7.072m0 0l-2.829-2.829m-4.243 2.829a4.978 4.978 0 01-1.414-2.83m-1.414 5.658a9 9 0 01-2.167-9.238m7.824 2.167a1 1 0 111.414 1.414m-1.414-1.414L3 3m8.293 8.293l1.414 1.414"
            />
          </svg>
          <span className="text-sm font-medium">
            You&apos;re offline — changes are saved locally and will sync automatically
          </span>
          {syncStatus.pendingPush > 0 && (
            <span className="ml-2 bg-white/20 px-2 py-0.5 rounded-full text-xs font-semibold">
              {syncStatus.pendingPush} pending
            </span>
          )}
        </div>
      )}

      {/* ── Syncing Indicator ─────────────────────────────────────────────── */}
      {(syncStatus.isSyncing || syncStatus.isPulling) && isOnline && (
        <div className="fixed top-0 left-0 right-0 z-50 h-1">
          <div
            className="h-full animate-pulse"
            style={{
              background: 'linear-gradient(90deg, #3b82f6, #8b5cf6, #3b82f6)',
              backgroundSize: '200% 100%',
              animation: 'syncBar 1.5s ease-in-out infinite',
            }}
          />
        </div>
      )}

      <style>{`
        @keyframes syncBar {
          0% { background-position: 200% 0; }
          100% { background-position: -200% 0; }
        }
      `}</style>
    </OfflineContext.Provider>
  );
}

// ============================================================================
// Hook
// ============================================================================

export function useOffline() {
  const context = useContext(OfflineContext);
  if (!context) {
    throw new Error('useOffline must be used within an OfflineProvider');
  }
  return context;
}

// ============================================================================
// Offline-first data fetching hook
// ============================================================================

/**
 * Hook to fetch data with offline-first strategy:
 * 1. Return cached data immediately (if available)
 * 2. Fetch from network in background
 * 3. Update cache and state with fresh data
 */
export function useOfflineData<T>(
  cacheKey: string,
  fetcher: () => Promise<T>,
  options?: { ttl?: number; enabled?: boolean }
) {
  const { isOnline, cacheData, getCachedData } = useOffline();
  const [data, setData] = useState<T | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<Error | null>(null);
  const [isStale, setIsStale] = useState(false);

  const ttl = options?.ttl ?? 5 * 60 * 1000; // 5 min default
  const enabled = options?.enabled ?? true;

  useEffect(() => {
    if (!enabled) {
      setIsLoading(false);
      return;
    }

    let cancelled = false;

    const load = async () => {
      // Step 1: Try cache first
      const cached = await getCachedData<T>(cacheKey);
      if (cached && !cancelled) {
        setData(cached);
        setIsLoading(false);
        setIsStale(true); // Mark as potentially stale
      }

      // Step 2: Try network if online
      if (isOnline) {
        try {
          const fresh = await fetcher();
          if (!cancelled) {
            setData(fresh);
            setIsStale(false);
            setError(null);
            await cacheData(cacheKey, fresh, ttl);
          }
        } catch (err) {
          if (!cancelled && !cached) {
            setError(err instanceof Error ? err : new Error('Fetch failed'));
          }
        }
      } else if (!cached) {
        setError(new Error('Offline and no cached data'));
      }

      if (!cancelled) setIsLoading(false);
    };

    load();

    return () => {
      cancelled = true;
    };
  }, [cacheKey, isOnline, enabled]);

  return { data, isLoading, error, isStale };
}
