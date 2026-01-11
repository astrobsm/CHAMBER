import crypto from 'crypto';

/**
 * Generate a secure random token
 */
export function generateToken(length: number = 32): string {
  return crypto.randomBytes(length).toString('hex');
}

/**
 * Generate a time-limited QR code token
 */
export function generateQRToken(sessionId: string, expiresAt: Date): string {
  const payload = {
    sessionId,
    exp: expiresAt.getTime(),
    nonce: crypto.randomBytes(8).toString('hex'),
  };
  
  const data = JSON.stringify(payload);
  const hash = crypto.createHmac('sha256', process.env.JWT_SECRET || 'secret')
    .update(data)
    .digest('hex');
  
  return Buffer.from(`${data}:${hash}`).toString('base64url');
}

/**
 * Validate QR code token
 */
export function validateQRToken(token: string): { valid: boolean; sessionId?: string } {
  try {
    const decoded = Buffer.from(token, 'base64url').toString('utf8');
    const [data, hash] = decoded.split(':');
    
    const expectedHash = crypto.createHmac('sha256', process.env.JWT_SECRET || 'secret')
      .update(data)
      .digest('hex');
    
    if (hash !== expectedHash) {
      return { valid: false };
    }
    
    const payload = JSON.parse(data);
    
    if (payload.exp < Date.now()) {
      return { valid: false };
    }
    
    return { valid: true, sessionId: payload.sessionId };
  } catch {
    return { valid: false };
  }
}

/**
 * Calculate distance between two GPS coordinates (Haversine formula)
 */
export function calculateDistance(
  lat1: number,
  lon1: number,
  lat2: number,
  lon2: number
): number {
  const R = 6371e3; // Earth's radius in meters
  const φ1 = (lat1 * Math.PI) / 180;
  const φ2 = (lat2 * Math.PI) / 180;
  const Δφ = ((lat2 - lat1) * Math.PI) / 180;
  const Δλ = ((lon2 - lon1) * Math.PI) / 180;

  const a =
    Math.sin(Δφ / 2) * Math.sin(Δφ / 2) +
    Math.cos(φ1) * Math.cos(φ2) * Math.sin(Δλ / 2) * Math.sin(Δλ / 2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

  return R * c; // Distance in meters
}

/**
 * Generate device fingerprint hash
 */
export function generateDeviceFingerprint(
  userAgent: string,
  ip: string,
  additionalData?: string
): string {
  const data = `${userAgent}:${ip}:${additionalData || ''}`;
  return crypto.createHash('sha256').update(data).digest('hex').substring(0, 32);
}

/**
 * Shuffle array using Fisher-Yates algorithm with time-seeded randomness
 */
export function shuffleArray<T>(array: T[], seed?: number): T[] {
  const shuffled = [...array];
  const random = seed ? seededRandom(seed) : Math.random;
  
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
  }
  
  return shuffled;
}

/**
 * Create seeded random number generator
 */
function seededRandom(seed: number): () => number {
  let value = seed;
  return () => {
    value = (value * 16807) % 2147483647;
    return (value - 1) / 2147483646;
  };
}

/**
 * Format date for display
 */
export function formatDate(date: Date | string): string {
  const d = new Date(date);
  return d.toLocaleDateString('en-NG', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  });
}

/**
 * Format date and time for display
 */
export function formatDateTime(date: Date | string): string {
  const d = new Date(date);
  return d.toLocaleString('en-NG', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
  });
}

/**
 * Calculate percentage
 */
export function calculatePercentage(value: number, total: number): number {
  if (total === 0) return 0;
  return Math.round((value / total) * 100 * 100) / 100;
}

/**
 * Generate integrity hash for offline data
 */
export function generateIntegrityHash(data: unknown): string {
  const jsonStr = JSON.stringify(data);
  return crypto.createHash('sha256').update(jsonStr).digest('hex');
}

/**
 * Validate integrity hash
 */
export function validateIntegrityHash(data: unknown, hash: string): boolean {
  const computedHash = generateIntegrityHash(data);
  return computedHash === hash;
}

/**
 * Sanitize string for safe storage
 */
export function sanitizeString(input: string): string {
  return input
    .trim()
    .replace(/[<>]/g, '')
    .substring(0, 1000);
}

/**
 * Generate unique offline ID
 */
export function generateOfflineId(): string {
  const timestamp = Date.now().toString(36);
  const random = crypto.randomBytes(8).toString('hex');
  return `offline_${timestamp}_${random}`;
}
