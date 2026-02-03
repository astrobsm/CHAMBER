// Vercel Serverless API Entry Point
// This imports the complete backend application for serverless deployment
import type { VercelRequest, VercelResponse } from '@vercel/node';
import app from '../packages/backend/src/app';

// Export the Express app as a Vercel serverless function
export default function handler(req: VercelRequest, res: VercelResponse) {
  return app(req, res);
}
