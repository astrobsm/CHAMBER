import { createContext, useContext, useEffect, useState, ReactNode } from 'react';
import { syncService } from '../services/syncService';
import { SyncItem } from '../types';

interface OfflineContextType {
  isOnline: boolean;
  pendingSyncItems: number;
  lastSyncTime: Date | null;
  syncNow: () => Promise<void>;
  addToSyncQueue: (item: Omit<SyncItem, 'id' | 'createdAt' | 'synced' | 'retryCount'>) => Promise<void>;
}

const OfflineContext = createContext<OfflineContextType | null>(null);

export function OfflineProvider({ children }: { children: ReactNode }) {
  const [isOnline, setIsOnline] = useState(navigator.onLine);
  const [pendingSyncItems, setPendingSyncItems] = useState(0);
  const [lastSyncTime, setLastSyncTime] = useState<Date | null>(null);

  useEffect(() => {
    const handleOnline = () => {
      setIsOnline(true);
      // Auto-sync when coming back online
      syncNow();
    };

    const handleOffline = () => {
      setIsOnline(false);
    };

    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);

    // Initial load of pending items
    loadPendingCount();

    return () => {
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
    };
  }, []);

  const loadPendingCount = async () => {
    try {
      const count = await syncService.getPendingCount();
      setPendingSyncItems(count);
    } catch (error) {
      console.warn('Could not load pending count:', error);
      setPendingSyncItems(0);
    }
  };

  const syncNow = async () => {
    if (!isOnline) return;

    try {
      await syncService.syncAll();
      setLastSyncTime(new Date());
      await loadPendingCount();
    } catch (error) {
      console.error('Sync failed:', error);
    }
  };

  const addToSyncQueue = async (
    item: Omit<SyncItem, 'id' | 'createdAt' | 'synced' | 'retryCount'>
  ) => {
    await syncService.addToQueue(item);
    await loadPendingCount();

    // Try to sync immediately if online
    if (isOnline) {
      syncNow();
    }
  };

  return (
    <OfflineContext.Provider
      value={{
        isOnline,
        pendingSyncItems,
        lastSyncTime,
        syncNow,
        addToSyncQueue,
      }}
    >
      {children}
      
      {/* Offline indicator */}
      {!isOnline && (
        <div className="offline-indicator">
          <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} 
              d="M18.364 5.636a9 9 0 010 12.728m0 0l-2.829-2.829m2.829 2.829L21 21M15.536 8.464a5 5 0 010 7.072m0 0l-2.829-2.829m-4.243 2.829a4.978 4.978 0 01-1.414-2.83m-1.414 5.658a9 9 0 01-2.167-9.238m7.824 2.167a1 1 0 111.414 1.414m-1.414-1.414L3 3m8.293 8.293l1.414 1.414" />
          </svg>
          <span className="text-sm font-medium">
            You're offline. Changes will sync when connected.
          </span>
          {pendingSyncItems > 0 && (
            <span className="ml-2 bg-white/20 px-2 py-0.5 rounded-full text-xs">
              {pendingSyncItems} pending
            </span>
          )}
        </div>
      )}
    </OfflineContext.Provider>
  );
}

export function useOffline() {
  const context = useContext(OfflineContext);
  if (!context) {
    throw new Error('useOffline must be used within an OfflineProvider');
  }
  return context;
}
