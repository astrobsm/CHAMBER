import { openDB, IDBPDatabase } from 'idb';
import { SyncItem } from '../types';
import { syncApi } from './api';

interface SyncDB {
  syncQueue: {
    key: string;
    value: SyncItem;
    indexes: {
      'by-synced': boolean;
      'by-type': string;
    };
  };
  cachedData: {
    key: string;
    value: {
      key: string;
      data: unknown;
      timestamp: number;
      ttl: number;
    };
  };
}

class SyncService {
  private db: IDBPDatabase<SyncDB> | null = null;
  private readonly DB_NAME = 'clinical-rotation-sync';
  private readonly DB_VERSION = 1;

  async init(): Promise<void> {
    if (this.db) return;

    this.db = await openDB<SyncDB>(this.DB_NAME, this.DB_VERSION, {
      upgrade(db) {
        // Sync queue store
        const syncStore = db.createObjectStore('syncQueue', { keyPath: 'id' });
        syncStore.createIndex('by-synced', 'synced');
        syncStore.createIndex('by-type', 'type');

        // Cached data store
        db.createObjectStore('cachedData', { keyPath: 'key' });
      },
    });
  }

  private async ensureDb(): Promise<IDBPDatabase<SyncDB>> {
    if (!this.db) {
      await this.init();
    }
    return this.db!;
  }

  // Sync Queue Operations
  async addToQueue(item: Omit<SyncItem, 'id' | 'createdAt' | 'synced' | 'retryCount'>): Promise<void> {
    const db = await this.ensureDb();
    const syncItem: SyncItem = {
      ...item,
      id: crypto.randomUUID(),
      createdAt: new Date().toISOString(),
      synced: false,
      retryCount: 0,
    };
    await db.add('syncQueue', syncItem);
  }

  async getPendingItems(): Promise<SyncItem[]> {
    try {
      const db = await this.ensureDb();
      const allItems = await db.getAll('syncQueue');
      return allItems.filter(item => !item.synced);
    } catch (error) {
      console.warn('Error getting pending items:', error);
      return [];
    }
  }

  async getPendingCount(): Promise<number> {
    try {
      const db = await this.ensureDb();
      const allItems = await db.getAll('syncQueue');
      return allItems.filter(item => !item.synced).length;
    } catch (error) {
      console.warn('Error getting pending count:', error);
      return 0;
    }
  }

  async markSynced(id: string): Promise<void> {
    const db = await this.ensureDb();
    const item = await db.get('syncQueue', id);
    if (item) {
      item.synced = true;
      item.syncedAt = new Date().toISOString();
      await db.put('syncQueue', item);
    }
  }

  async updateRetry(id: string, error: string): Promise<void> {
    const db = await this.ensureDb();
    const item = await db.get('syncQueue', id);
    if (item) {
      item.retryCount += 1;
      item.lastError = error;
      await db.put('syncQueue', item);
    }
  }

  async removeFromQueue(id: string): Promise<void> {
    const db = await this.ensureDb();
    await db.delete('syncQueue', id);
  }

  async clearSyncedItems(): Promise<void> {
    const db = await this.ensureDb();
    const allItems = await db.getAll('syncQueue');
    const syncedItems = allItems.filter(item => item.synced);
    for (const item of syncedItems) {
      await db.delete('syncQueue', item.id);
    }
  }

  // Sync all pending items
  async syncAll(): Promise<{ success: number; failed: number }> {
    const pendingItems = await this.getPendingItems();
    let success = 0;
    let failed = 0;

    for (const item of pendingItems) {
      if (item.retryCount >= 5) {
        // Max retries reached, skip
        failed++;
        continue;
      }

      try {
        await syncApi.sync([{
          type: item.type,
          action: item.action,
          data: item.data,
          clientId: item.id,
          timestamp: item.createdAt,
        }]);

        await this.markSynced(item.id);
        success++;
      } catch (error) {
        const errorMessage = error instanceof Error ? error.message : 'Unknown error';
        await this.updateRetry(item.id, errorMessage);
        failed++;
      }
    }

    // Clean up synced items older than 24 hours
    await this.clearSyncedItems();

    return { success, failed };
  }

  // Cache Operations
  async cacheData(key: string, data: unknown, ttl: number = 3600000): Promise<void> {
    const db = await this.ensureDb();
    await db.put('cachedData', {
      key,
      data,
      timestamp: Date.now(),
      ttl,
    });
  }

  async getCachedData<T>(key: string): Promise<T | null> {
    const db = await this.ensureDb();
    const cached = await db.get('cachedData', key);

    if (!cached) return null;

    // Check if expired
    if (Date.now() - cached.timestamp > cached.ttl) {
      await db.delete('cachedData', key);
      return null;
    }

    return cached.data as T;
  }

  async clearCache(): Promise<void> {
    const db = await this.ensureDb();
    await db.clear('cachedData');
  }
}

export const syncService = new SyncService();
export default syncService;
