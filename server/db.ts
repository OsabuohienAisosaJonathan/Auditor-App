import { drizzle, MySql2Database } from "drizzle-orm/mysql2";
import mysql from "mysql2/promise";
import * as schema from "@shared/schema";
import * as circuitBreaker from "./circuitBreaker";

console.log('[DB STARTUP] Environment check:', {
  DATABASE_URL: !!process.env.DATABASE_URL,
  NODE_ENV: process.env.NODE_ENV || 'not set',
  APP_URL: !!process.env.APP_URL,
});

let _pool: mysql.Pool | null = null;
let _db: MySql2Database<typeof schema> | null = null;
let _initPromise: Promise<void> | null = null;

const isProduction = process.env.NODE_ENV === 'production';

export function getPoolStats(): {
  totalCount: number;
  idleCount: number;
  waitingCount: number;
  circuitBreakerState: string;
  circuitBreakerOpen: boolean;
} | null {
  if (!_pool) return null;
  const cbStats = circuitBreaker.getCircuitStats();
  // MySQL2 pool doesn't expose exact idle/waiting counts in the same way as pg-pool
  // We approximate or return simplified stats
  return {
    totalCount: (_pool as any).pool?.config?.connectionLimit || 10,
    idleCount: (_pool as any).pool?._freeConnections?.length || 0,
    waitingCount: (_pool as any).pool?._allConnections?.length - (_pool as any).pool?._freeConnections?.length || 0,
    circuitBreakerState: cbStats.state,
    circuitBreakerOpen: cbStats.isOpen,
  };
}

export function isCircuitBreakerOpen(): boolean {
  return circuitBreaker.isCircuitOpen();
}

export function recordDbTimeout(): void {
  circuitBreaker.recordFailure('db_pool');
}

export function recordDbSuccess(): void {
  circuitBreaker.recordSuccess('db_pool');
}

async function connectWithRetry(pool: mysql.Pool, maxRetries = 3): Promise<void> {
  const delays = [500, 1500, 3000, 5000];

  for (let attempt = 0; attempt <= maxRetries; attempt++) {
    try {
      const connection = await pool.getConnection();
      await connection.query('SELECT 1');
      connection.release();
      console.log(`[DB Pool] Connection established on attempt ${attempt + 1}`);
      return;
    } catch (err: any) {
      console.error(`[DB Pool] Connection attempt ${attempt + 1} failed:`, err.message);
      if (attempt < maxRetries) {
        const delay = delays[attempt] || 5000;
        console.log(`[DB Pool] Retrying in ${delay}ms...`);
        await new Promise(resolve => setTimeout(resolve, delay));
      } else {
        throw err; // connection is handled by the pool, but we want to verify connectivity
      }
    }
  }
}

function ensureDatabase() {
  if (!process.env.DATABASE_URL) {
    const errorMsg = isProduction
      ? "DATABASE_URL is missing in production secrets."
      : "DATABASE_URL must be set.";
    console.error(`[DB FATAL] ${errorMsg}`);
    throw new Error(errorMsg);
  }

  if (!_pool) {
    const maxConnections = isProduction ? 10 : 10;

    _pool = mysql.createPool({
      uri: process.env.DATABASE_URL,
      waitForConnections: true,
      connectionLimit: maxConnections,
      queueLimit: 0,
      keepAliveInitialDelay: 10000,
      enableKeepAlive: true,
      multipleStatements: true
    });

    console.log(`[DB Pool] Created singleton MySQL pool with limit=${maxConnections}`);
  }

  if (!_db) {
    _db = drizzle(_pool, { mode: "default", schema });
  }

  return { pool: _pool, db: _db };
}

export async function initializePool(): Promise<void> {
  if (_initPromise) return _initPromise;

  _initPromise = (async () => {
    const { pool } = ensureDatabase();
    await connectWithRetry(pool, 3);
  })();

  return _initPromise;
}

export async function checkDbHealth(): Promise<{ ok: boolean; latencyMs: number; error?: string; poolStats?: ReturnType<typeof getPoolStats> }> {
  const startTime = Date.now();

  if (!process.env.DATABASE_URL) {
    return {
      ok: false,
      latencyMs: 0,
      error: 'DATABASE_URL not configured',
      poolStats: null,
    };
  }

  try {
    const { pool } = ensureDatabase();

    // MySQL2 doesn't have a direct connect() for pool, getConnection() gets a connection from pool
    const connection = await pool.getConnection();

    try {
      await connection.query('SELECT 1');
      const latencyMs = Date.now() - startTime;
      recordDbSuccess();
      return { ok: true, latencyMs, poolStats: getPoolStats() };
    } finally {
      connection.release();
    }
  } catch (err: any) {
    recordDbTimeout();
    return {
      ok: false,
      latencyMs: Date.now() - startTime,
      error: err.message,
      poolStats: getPoolStats()
    };
  }
}

export async function probeDatabase(): Promise<boolean> {
  try {
    const { pool } = ensureDatabase();
    const connection = await pool.getConnection();
    try {
      await connection.query('SELECT 1');
      recordDbSuccess();
      return true;
    } finally {
      connection.release();
    }
  } catch (err) {
    recordDbTimeout();
    return false;
  }
}

export { circuitBreaker };

// Proxy exports to lazy loads
export const pool = new Proxy({} as mysql.Pool, {
  get(_target, prop) {
    const { pool } = ensureDatabase();
    return (pool as any)[prop];
  }
});

export const db = new Proxy({} as MySql2Database<typeof schema>, {
  get(_target, prop) {
    const { db } = ensureDatabase();
    return (db as any)[prop];
  }
});
