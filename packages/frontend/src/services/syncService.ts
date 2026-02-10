import { openDB, IDBPDatabase } from 'idb';
import { SyncItem, SyncResult, PullData } from '../types';
import { syncApi } from './api';

// ============================================================================
// IndexedDB Schema — stores for sync queue + offline data cache
// ============================================================================

interface ClinicalSyncDB {
  syncQueue: {
    key: string;
    value: SyncItem;
    indexes: {
      'by-synced': number;
      'by-type': string;
      'by-created': string;
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
  pullCache: {
    key: string;
    value: {
      entity: string;
      data: unknown;
      lastPulled: string;
      version: number;
    };
  };
  syncMeta: {
    key: string;
    value: {
      key: string;
      value: string;
    };
  };
}

// ============================================================================
// SyncService — Full two-way offline-first sync engine
// ============================================================================

class SyncService {
  private db: IDBPDatabase<ClinicalSyncDB> | null = null;
  private readonly DB_NAME = 'clinical-rotation-sync';
  private readonly DB_VERSION = 3;
  private syncInProgress = false;
  private pullInProgress = false;
  private deviceId: string | null = null;

  // ── Database Init ──────────────────────────────────────────────────────────

  async init(): Promise<void> {
    if (this.db) return;

    this.db = await openDB<ClinicalSyncDB>(this.DB_NAME, this.DB_VERSION, {
      upgrade(db) {
        // Sync queue store
        if (!db.objectStoreNames.contains('syncQueue')) {
          const syncStore = db.createObjectStore('syncQueue', { keyPath: 'id' });
          syncStore.createIndex('by-synced', 'synced');
          syncStore.createIndex('by-type', 'type');
          syncStore.createIndex('by-created', 'createdAt');
        }

        // Cached data store (generic TTL-based cache)
        if (!db.objectStoreNames.contains('cachedData')) {
          db.createObjectStore('cachedData', { keyPath: 'key' });
        }

        // Pull cache store (entity-based cache for pulled server data)
        if (!db.objectStoreNames.contains('pullCache')) {
          db.createObjectStore('pullCache', { keyPath: 'entity' });
        }

        // Sync metadata store
        if (!db.objectStoreNames.contains('syncMeta')) {
          db.createObjectStore('syncMeta', { keyPath: 'key' });
        }
      },
    });

    // Initialize device ID
    await this.initDeviceId();
  }

  private async ensureDb(): Promise<IDBPDatabase<ClinicalSyncDB>> {
    if (!this.db) await this.init();
    return this.db!;
  }

  // ── Device Registration ────────────────────────────────────────────────────

  private async initDeviceId(): Promise<void> {
    const db = await this.ensureDb();
    const stored = await db.get('syncMeta', 'deviceId');
    if (stored) {
      this.deviceId = stored.value;
    } else {
      this.deviceId = crypto.randomUUID();
      await db.put('syncMeta', { key: 'deviceId', value: this.deviceId });
    }
  }

  getDeviceId(): string {
    return this.deviceId || 'unknown';
  }

  async registerDevice(): Promise<void> {
    try {
      const ua = navigator.userAgent;
      const isMobile = /Mobi|Android/i.test(ua);
      const isTablet = /Tablet|iPad/i.test(ua);
      const deviceType = isMobile ? 'mobile' : isTablet ? 'tablet' : 'desktop';

      let browser = 'Unknown';
      if (ua.includes('Chrome')) browser = 'Chrome';
      else if (ua.includes('Firefox')) browser = 'Firefox';
      else if (ua.includes('Safari')) browser = 'Safari';
      else if (ua.includes('Edge')) browser = 'Edge';

      let os = 'Unknown';
      if (ua.includes('Win')) os = 'Windows';
      else if (ua.includes('Mac')) os = 'macOS';
      else if (ua.includes('Linux')) os = 'Linux';
      else if (ua.includes('Android')) os = 'Android';
      else if (ua.includes('iOS') || ua.includes('iPhone')) os = 'iOS';

      await syncApi.registerDevice({
        deviceFingerprint: this.getDeviceId(),
        deviceName: `${browser} on ${os}`,
        deviceType,
        browser,
        os,
      });
    } catch (err) {
      console.warn('Device registration failed (non-critical):', err);
    }
  }

  // ══════════════════════════════════════════════════════════════════════════
  // PUSH: Client → Server (upload offline changes)
  // ══════════════════════════════════════════════════════════════════════════

  async addToQueue(
    item: Omit<SyncItem, 'id' | 'createdAt' | 'synced' | 'retryCount'>
  ): Promise<string> {
    const db = await this.ensureDb();
    const syncItem: SyncItem = {
      ...item,
      id: crypto.randomUUID(),
      createdAt: new Date().toISOString(),
      synced: false,
      retryCount: 0,
    };
    await db.add('syncQueue', syncItem);
    return syncItem.id;
  }

  async getPendingItems(): Promise<SyncItem[]> {
    try {
      const db = await this.ensureDb();
      const allItems = await db.getAll('syncQueue');
      return allItems
        .filter(item => !item.synced)
        .sort((a, b) => new Date(a.createdAt).getTime() - new Date(b.createdAt).getTime());
    } catch {
      return [];
    }
  }

  async getPendingCount(): Promise<number> {
    try {
      const items = await this.getPendingItems();
      return items.length;
    } catch {
      return 0;
    }
  }

  async markSynced(id: string, serverId?: string): Promise<void> {
    const db = await this.ensureDb();
    const item = await db.get('syncQueue', id);
    if (item) {
      item.synced = true;
      item.syncedAt = new Date().toISOString();
      if (serverId) (item.data as Record<string, unknown>)._serverId = serverId;
      await db.put('syncQueue', item);
    }
  }

  async markConflict(id: string, conflictData: Record<string, unknown>): Promise<void> {
    const db = await this.ensureDb();
    const item = await db.get('syncQueue', id);
    if (item) {
      item.conflictData = conflictData;
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

  async clearSyncedItems(olderThanMs: number = 24 * 60 * 60 * 1000): Promise<number> {
    const db = await this.ensureDb();
    const allItems = await db.getAll('syncQueue');
    const cutoff = Date.now() - olderThanMs;
    let cleared = 0;
    for (const item of allItems) {
      if (item.synced && item.syncedAt && new Date(item.syncedAt).getTime() < cutoff) {
        await db.delete('syncQueue', item.id);
        cleared++;
      }
    }
    return cleared;
  }

  async getConflicts(): Promise<SyncItem[]> {
    const db = await this.ensureDb();
    const allItems = await db.getAll('syncQueue');
    return allItems.filter(item => item.conflictData);
  }

  /**
   * PUSH sync — batch send all pending offline items to server
   */
  async pushSync(): Promise<SyncResult | null> {
    if (this.syncInProgress) {
      console.log('[Sync] Push already in progress, skipping');
      return null;
    }

    const pendingItems = await this.getPendingItems();
    if (pendingItems.length === 0) return null;

    // Filter out items with too many retries
    const retryableItems = pendingItems.filter(item => item.retryCount < 10);
    if (retryableItems.length === 0) return null;

    this.syncInProgress = true;
    try {
      // Format data for the backend /sync/push endpoint
      const pushData = retryableItems.map(item => ({
        type: item.type,
        payload: item.data,
        offline_id: item.id,
        timestamp: item.createdAt,
      }));

      const response = await syncApi.push(pushData, this.getDeviceId());
      const result: SyncResult = response.data.data;

      // Process results
      for (const synced of result.details.results) {
        if (synced.status === 'synced' || synced.status === 'already_synced') {
          await this.markSynced(synced.offline_id, synced.server_id);
        }
      }

      // Process conflicts
      for (const conflict of result.details.conflicts) {
        await this.markConflict(conflict.offline_id, conflict as unknown as Record<string, unknown>);
      }

      // Process retryable errors
      for (const err of result.details.errors) {
        if (err.retryable) {
          await this.updateRetry(err.offline_id, err.error);
        } else {
          await this.markSynced(err.offline_id);
        }
      }

      // Save last push timestamp
      await this.setMeta('lastPushSync', result.serverTime);

      // Cleanup old synced items
      await this.clearSyncedItems();

      console.log(`[Sync] Push complete: ${result.synced} synced, ${result.conflicts} conflicts, ${result.errors} errors`);
      return result;
    } catch (error) {
      console.error('[Sync] Push failed:', error);
      for (const item of retryableItems) {
        await this.updateRetry(item.id, error instanceof Error ? error.message : 'Network error');
      }
      return null;
    } finally {
      this.syncInProgress = false;
    }
  }

  // ══════════════════════════════════════════════════════════════════════════
  // PULL: Server → Client (download data for offline use)
  // ══════════════════════════════════════════════════════════════════════════

  /**
   * PULL sync — download latest server data and cache in IndexedDB
   */
  async pullSync(options?: {
    entities?: string[];
    fullSync?: boolean;
  }): Promise<PullData | null> {
    if (this.pullInProgress) {
      console.log('[Sync] Pull already in progress, skipping');
      return null;
    }

    this.pullInProgress = true;
    try {
      const lastSync = options?.fullSync ? undefined : await this.getMeta('lastPullSync');

      const params: Record<string, string> = {};
      if (lastSync) params.last_sync = lastSync;
      if (options?.entities?.length) params.entities = options.entities.join(',');
      if (options?.fullSync) params.full = 'true';

      const response = await syncApi.pull(params);
      const pullData: PullData = response.data.data;

      // Cache pulled data in IndexedDB
      const db = await this.ensureDb();

      if (pullData.studentData) {
        await db.put('pullCache', {
          entity: 'studentData',
          data: pullData.studentData,
          lastPulled: pullData.syncTimestamp,
          version: Date.now(),
        });

        // Cache individual entities for quick access
        const sd = pullData.studentData as Record<string, unknown>;
        for (const [key, value] of Object.entries(sd)) {
          if (value !== null && value !== undefined) {
            await db.put('pullCache', {
              entity: `student_${key}`,
              data: value,
              lastPulled: pullData.syncTimestamp,
              version: Date.now(),
            });
          }
        }
      }

      if (pullData.assessorData) {
        await db.put('pullCache', {
          entity: 'assessorData',
          data: pullData.assessorData,
          lastPulled: pullData.syncTimestamp,
          version: Date.now(),
        });
      }

      if (pullData.adminData) {
        await db.put('pullCache', {
          entity: 'adminData',
          data: pullData.adminData,
          lastPulled: pullData.syncTimestamp,
          version: Date.now(),
        });
      }

      if (pullData.systemConfig) {
        await db.put('pullCache', {
          entity: 'systemConfig',
          data: pullData.systemConfig,
          lastPulled: pullData.syncTimestamp,
          version: Date.now(),
        });
      }

      if (pullData.participationTypes) {
        await db.put('pullCache', {
          entity: 'participationTypes',
          data: pullData.participationTypes,
          lastPulled: pullData.syncTimestamp,
          version: Date.now(),
        });
      }

      // Save last pull timestamp
      await this.setMeta('lastPullSync', pullData.syncTimestamp);

      console.log(`[Sync] Pull complete: ${pullData.isFullSync ? 'full' : 'delta'} sync at ${pullData.syncTimestamp}`);
      return pullData;
    } catch (error) {
      console.error('[Sync] Pull failed:', error);
      return null;
    } finally {
      this.pullInProgress = false;
    }
  }

  /**
   * Get cached offline data by entity name
   */
  async getCachedEntity<T>(entity: string): Promise<T | null> {
    try {
      const db = await this.ensureDb();
      const cached = await db.get('pullCache', entity);
      return cached ? (cached.data as T) : null;
    } catch {
      return null;
    }
  }

  // ══════════════════════════════════════════════════════════════════════════
  // FULL SYNC: Push then Pull
  // ══════════════════════════════════════════════════════════════════════════

  /**
   * Full two-way sync: push local changes, then pull server data
   */
  async syncAll(options?: {
    entities?: string[];
    fullSync?: boolean;
  }): Promise<{
    push: SyncResult | null;
    pull: PullData | null;
  }> {
    // Step 1: Push local changes first
    const pushResult = await this.pushSync();

    // Step 2: Then pull latest from server
    const pullResult = await this.pullSync(options);

    return { push: pushResult, pull: pullResult };
  }

  // ── Generic Cache Operations ───────────────────────────────────────────────

  async cacheData(key: string, data: unknown, ttl: number = 3600000): Promise<void> {
    const db = await this.ensureDb();
    await db.put('cachedData', { key, data, timestamp: Date.now(), ttl });
  }

  async getCachedData<T>(key: string): Promise<T | null> {
    try {
      const db = await this.ensureDb();
      const cached = await db.get('cachedData', key);
      if (!cached) return null;
      if (Date.now() - cached.timestamp > cached.ttl) {
        await db.delete('cachedData', key);
        return null;
      }
      return cached.data as T;
    } catch {
      return null;
    }
  }

  async clearCache(): Promise<void> {
    const db = await this.ensureDb();
    await db.clear('cachedData');
    await db.clear('pullCache');
  }

  // ── Metadata ───────────────────────────────────────────────────────────────

  async setMeta(key: string, value: string): Promise<void> {
    const db = await this.ensureDb();
    await db.put('syncMeta', { key, value });
  }

  async getMeta(key: string): Promise<string | null> {
    try {
      const db = await this.ensureDb();
      const meta = await db.get('syncMeta', key);
      return meta?.value || null;
    } catch {
      return null;
    }
  }

  // ── Status ─────────────────────────────────────────────────────────────────

  async getFullStatus() {
    const [pending, conflicts, lastPush, lastPull] = await Promise.all([
      this.getPendingCount(),
      this.getConflicts(),
      this.getMeta('lastPushSync'),
      this.getMeta('lastPullSync'),
    ]);

    let serverStatus = null;
    try {
      const res = await syncApi.getStatus();
      serverStatus = res.data.data;
    } catch {
      // Offline — no server status available
    }

    return {
      pendingPush: pending,
      conflicts: conflicts.length,
      lastPushSync: lastPush,
      lastPullSync: lastPull,
      deviceId: this.getDeviceId(),
      serverStatus,
      isOnline: navigator.onLine,
    };
  }

  // ── Cleanup ────────────────────────────────────────────────────────────────

  async resetAll(): Promise<void> {
    const db = await this.ensureDb();
    await db.clear('syncQueue');
    await db.clear('cachedData');
    await db.clear('pullCache');
    await db.clear('syncMeta');
    await this.initDeviceId();
  }
}

export const syncService = new SyncService();
export default syncService;
