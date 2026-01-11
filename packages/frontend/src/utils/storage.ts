type StorageType = 'local' | 'session';

export const storage = {
  get(key: string): string | null {
    // Try localStorage first, then sessionStorage
    return localStorage.getItem(key) || sessionStorage.getItem(key);
  },

  set(key: string, value: string, type: StorageType = 'local'): void {
    const storage = type === 'local' ? localStorage : sessionStorage;
    storage.setItem(key, value);
  },

  remove(key: string): void {
    localStorage.removeItem(key);
    sessionStorage.removeItem(key);
  },

  clear(): void {
    localStorage.clear();
    sessionStorage.clear();
  },
};

export default storage;
