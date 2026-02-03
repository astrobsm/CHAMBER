# Vercel Deployment Guide

This guide covers deploying the Clinical Rotation Platform to Vercel.

## Prerequisites

1. A Vercel account (free or paid)
2. Vercel CLI installed: `npm install -g vercel`
3. PostgreSQL database (Supabase, Neon, Railway, or other)
4. Environment variables configured

## Project Structure

This is a monorepo with:
- **Frontend**: React + Vite PWA (`packages/frontend`)
- **Backend**: Express API (`packages/backend`)
- **Serverless API**: Entry point at root (`api/index.ts`)

## Deployment Steps

### 1. Database Setup

First, set up your PostgreSQL database (recommended: Supabase or Neon):

**Option A: Supabase (Recommended)**
1. Create account at https://supabase.com
2. Create a new project
3. Note the connection string (Settings > Database > Connection string)
4. Run migrations: Use the SQL files in `packages/backend/database/`

**Option B: Neon**
1. Create account at https://neon.tech
2. Create a new project
3. Copy the connection string
4. Run migrations using the provided SQL files

### 2. Environment Variables

Configure these environment variables in Vercel:

```bash
# Database
DATABASE_URL=postgresql://user:password@host:5432/database
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_KEY=your-anon-key

# JWT
JWT_SECRET=your-super-secret-jwt-key-min-32-chars
JWT_EXPIRES_IN=24h

# Server
NODE_ENV=production
PORT=3000

# CORS
CORS_ORIGIN=https://your-vercel-app.vercel.app

# Rate Limiting
RATE_LIMIT_WINDOW_MS=900000
RATE_LIMIT_MAX=100

# File Upload
MAX_FILE_SIZE=5242880
UPLOAD_DIR=/tmp/uploads

# Email (Optional)
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=your-email@gmail.com
SMTP_PASS=your-app-password
```

### 3. Deploy to Vercel

**Option A: Vercel CLI**

```bash
# Login to Vercel
vercel login

# Deploy to production
vercel --prod
```

**Option B: Vercel Dashboard**

1. Go to https://vercel.com/dashboard
2. Click "Add New Project"
3. Import your Git repository
4. Configure:
   - Framework Preset: `Other`
   - Root Directory: `./`
   - Build Command: Use default from vercel.json
   - Output Directory: `packages/frontend/dist`
5. Add environment variables (from step 2)
6. Click "Deploy"

### 4. Configure Environment Variables in Vercel

Via CLI:
```bash
vercel env add DATABASE_URL
vercel env add JWT_SECRET
# ... add all other variables
```

Via Dashboard:
1. Go to Project Settings > Environment Variables
2. Add each variable with appropriate scope (Production, Preview, Development)

### 5. Domain Configuration (Optional)

1. Go to Project Settings > Domains
2. Add your custom domain
3. Follow DNS configuration instructions

## Vercel Configuration

The `vercel.json` configuration handles:

### Routing
- `/api/*` → Serverless API functions
- All other routes → Frontend (SPA routing)

### Build Configuration
- Installs dependencies in frontend package
- Builds the frontend with Vite
- Outputs to `packages/frontend/dist`

### Security Headers
- X-Content-Type-Options: nosniff
- X-Frame-Options: DENY
- X-XSS-Protection: 1; mode=block

## Post-Deployment

### 1. Initialize Database

Run migrations and seeds:

```bash
# Using psql
psql $DATABASE_URL -f packages/backend/database/schema.sql
psql $DATABASE_URL -f packages/backend/database/seeds/01_surgery1_setup.sql
# ... run all seed files
```

Or use a database management tool like:
- Supabase SQL Editor
- pgAdmin
- DBeaver

### 2. Verify Deployment

Test these endpoints:

```bash
# Health check
curl https://your-app.vercel.app/api/health

# API info
curl https://your-app.vercel.app/api

# Frontend
curl https://your-app.vercel.app
```

### 3. Test Authentication

1. Navigate to your deployed app
2. Try registering a new user
3. Verify login works
4. Check database for user record

## Troubleshooting

### Build Failures

**Error: Module not found**
- Ensure all dependencies are in root `package.json`
- Check import paths in `api/index.ts`

**TypeScript errors**
- Verify `tsconfig.json` is properly configured
- Check that `@types/*` packages are installed

### Runtime Errors

**500 Internal Server Error**
- Check Vercel function logs: `vercel logs`
- Verify environment variables are set
- Check database connection

**CORS errors**
- Verify `CORS_ORIGIN` environment variable
- Check it matches your frontend URL

**Database connection failed**
- Verify `DATABASE_URL` is correct
- Ensure database accepts connections from Vercel IPs
- For Supabase: Enable "Direct Connection" or use connection pooler

### API Routes Not Working

**404 on API calls**
- Check `vercel.json` rewrites configuration
- Verify `api/index.ts` exports the app correctly
- Ensure routes match frontend API calls

## Monitoring

### View Logs

```bash
# Production logs
vercel logs --prod

# Specific deployment
vercel logs [deployment-url]
```

### Analytics

Vercel provides:
- Function execution time
- Error rates
- Bandwidth usage
- Geographic distribution

Access via: Project Settings > Analytics

## Optimization

### Edge Functions (Optional)

For better performance, consider using Vercel Edge Functions for:
- Authentication checks
- Rate limiting
- Simple API routes

### Caching

Configure caching in `vercel.json`:

```json
{
  "headers": [
    {
      "source": "/static/(.*)",
      "headers": [
        {
          "key": "Cache-Control",
          "value": "public, max-age=31536000, immutable"
        }
      ]
    }
  ]
}
```

### Database Connection Pooling

For production, use connection pooling:
- Supabase: Built-in connection pooler
- Neon: Automatic connection pooling
- External: PgBouncer

## Continuous Deployment

Vercel automatically deploys:
- **Production**: Pushes to `main` branch
- **Preview**: Pull requests and other branches

Configure in:
- Project Settings > Git
- Set production branch
- Enable/disable preview deployments

## Cost Considerations

### Vercel Free Tier
- 100 GB bandwidth/month
- 100 function invocations/day
- Unlimited preview deployments

### Vercel Pro ($20/month)
- 1000 GB bandwidth
- Unlimited function invocations
- Custom domains
- Team collaboration

### Database Costs
- **Supabase**: Free tier (500 MB), Pro $25/month
- **Neon**: Free tier (0.5 GB), paid plans start at $19/month

## Support

- Vercel Documentation: https://vercel.com/docs
- Vercel Community: https://github.com/vercel/vercel/discussions
- Project Issues: [Your repository]/issues

## Security Checklist

Before going live:

- [ ] All environment variables set
- [ ] JWT_SECRET is strong and unique
- [ ] Database credentials are secure
- [ ] CORS_ORIGIN is restricted to your domain
- [ ] Rate limiting is enabled
- [ ] HTTPS is enforced
- [ ] Security headers are configured
- [ ] Database backups are enabled
- [ ] Sensitive data is encrypted
- [ ] Admin accounts are secured

## Rollback

If deployment fails:

```bash
# List deployments
vercel ls

# Promote a previous deployment
vercel promote [deployment-url]
```

Or via Dashboard:
1. Go to Deployments
2. Find working deployment
3. Click "..." menu
4. Select "Promote to Production"
