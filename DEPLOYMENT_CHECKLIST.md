# Vercel Deployment Checklist

Use this checklist to ensure a successful deployment to Vercel.

## Pre-Deployment

### 1. Code Preparation
- [ ] All code is committed to Git
- [ ] Code builds successfully locally (`npm run build`)
- [ ] No TypeScript errors
- [ ] All tests pass (if applicable)
- [ ] Environment-specific code is properly configured

### 2. Database Setup
- [ ] PostgreSQL database is provisioned (Supabase/Neon/Railway)
- [ ] Database connection string is available
- [ ] Schema is migrated (`packages/backend/database/schema.sql`)
- [ ] Initial data is seeded (seed files in `packages/backend/database/seeds/`)
- [ ] Database accepts connections from Vercel

### 3. Environment Variables
Prepare these variables for Vercel:

**Required:**
- [ ] `DATABASE_URL` - PostgreSQL connection string
- [ ] `JWT_SECRET` - Strong secret (min 32 characters)
- [ ] `NODE_ENV` - Set to `production`
- [ ] `CORS_ORIGIN` - Your Vercel app URL

**Optional but Recommended:**
- [ ] `SUPABASE_URL` - If using Supabase
- [ ] `SUPABASE_KEY` - If using Supabase
- [ ] `JWT_EXPIRES_IN` - Default: 24h
- [ ] `RATE_LIMIT_WINDOW_MS` - Default: 900000
- [ ] `RATE_LIMIT_MAX` - Default: 100
- [ ] `MAX_FILE_SIZE` - Default: 5242880
- [ ] `SMTP_*` - If using email features

### 4. Configuration Files
- [ ] `vercel.json` is configured correctly
- [ ] `package.json` has all dependencies
- [ ] `tsconfig.json` is present at root
- [ ] `.gitignore` includes `.vercel` and `.env`

## Deployment

### Method A: Vercel CLI
```bash
# 1. Install Vercel CLI (if not installed)
npm install -g vercel

# 2. Login
vercel login

# 3. Deploy
vercel --prod
```

### Method B: Vercel Dashboard
1. [ ] Go to https://vercel.com/dashboard
2. [ ] Click "Add New Project"
3. [ ] Import Git repository
4. [ ] Configure project settings:
   - Framework: Other
   - Root Directory: ./
   - Build Command: (use default from vercel.json)
   - Output Directory: packages/frontend/dist
5. [ ] Add all environment variables
6. [ ] Click "Deploy"

## Post-Deployment

### 1. Verify Deployment
- [ ] Frontend loads: `https://your-app.vercel.app`
- [ ] API health check: `https://your-app.vercel.app/api/health`
- [ ] API info: `https://your-app.vercel.app/api`
- [ ] No console errors in browser
- [ ] No 500 errors in API calls

### 2. Test Core Features
- [ ] User registration works
- [ ] User login works
- [ ] JWT token is stored and used correctly
- [ ] Protected routes require authentication
- [ ] Database operations work (create/read/update/delete)
- [ ] File uploads work (if applicable)
- [ ] WebSocket connections work (if applicable)

### 3. Check Logs
```bash
# View production logs
vercel logs --prod
```
- [ ] No critical errors
- [ ] Database connections successful
- [ ] No authentication failures (except expected)

### 4. Performance Check
- [ ] Page load time < 3 seconds
- [ ] API response time < 500ms
- [ ] No memory leaks
- [ ] Function execution within limits

### 5. Security Verification
- [ ] HTTPS is enforced
- [ ] Security headers are present (check with browser dev tools)
- [ ] CORS is properly configured
- [ ] No sensitive data in logs
- [ ] No environment variables exposed to frontend
- [ ] Rate limiting is working
- [ ] JWT tokens expire correctly

## Domain Configuration (Optional)

### Custom Domain
- [ ] Domain is available
- [ ] DNS provider access
- [ ] Add domain in Vercel: Project Settings > Domains
- [ ] Configure DNS records:
  - A record: points to Vercel IP
  - Or CNAME: points to your-app.vercel.app
- [ ] Wait for DNS propagation (up to 48 hours)
- [ ] SSL certificate is issued automatically
- [ ] Test: `https://your-domain.com`

## Monitoring Setup

### Vercel Analytics
- [ ] Enable Vercel Analytics in Project Settings
- [ ] Check real-time visitor data
- [ ] Monitor Core Web Vitals

### Error Tracking (Optional)
Consider integrating:
- [ ] Sentry for error tracking
- [ ] LogRocket for session replay
- [ ] DataDog for APM

### Uptime Monitoring (Optional)
- [ ] UptimeRobot or similar
- [ ] Configure alerts for downtime
- [ ] Set check interval (5-10 minutes)

## Database Backup

- [ ] Enable automated backups in your database provider
- [ ] Test backup restoration process
- [ ] Document backup recovery procedure
- [ ] Set backup retention policy

## Team Access (If Applicable)

- [ ] Invite team members to Vercel project
- [ ] Set appropriate permissions
- [ ] Share environment variable access (securely)
- [ ] Document deployment process for team

## Documentation

- [ ] Update README.md with deployment URL
- [ ] Document environment variables
- [ ] Create runbook for common issues
- [ ] Document rollback procedure

## Rollback Plan

In case of issues:
```bash
# List all deployments
vercel ls

# Promote previous working deployment
vercel promote [previous-deployment-url]
```

Or via Dashboard:
1. Go to Deployments tab
2. Find last working deployment
3. Click "..." menu
4. Select "Promote to Production"

## Continuous Deployment

### Git Integration
- [ ] Main branch triggers production deployment
- [ ] Pull requests create preview deployments
- [ ] Configure branch protection rules
- [ ] Set up required status checks

### Deployment Hooks (Optional)
- [ ] Slack notifications for deployments
- [ ] Discord webhooks
- [ ] Email notifications

## Cost Management

### Monitor Usage
- [ ] Check Vercel usage dashboard regularly
- [ ] Set up billing alerts
- [ ] Monitor function execution count
- [ ] Track bandwidth usage
- [ ] Monitor database usage

### Optimize if Needed
- [ ] Enable caching where appropriate
- [ ] Optimize images
- [ ] Use Edge Functions for simple operations
- [ ] Implement database connection pooling
- [ ] Review and optimize slow API endpoints

## Support & Resources

### Documentation
- [ ] Bookmark Vercel docs: https://vercel.com/docs
- [ ] Bookmark your database provider docs
- [ ] Save deployment guide location

### Emergency Contacts
- [ ] Document who has access
- [ ] Save Vercel support contacts
- [ ] Database provider support
- [ ] Team lead contact

## Final Steps

- [ ] Announce deployment to team
- [ ] Update project status/dashboard
- [ ] Schedule post-deployment review
- [ ] Plan next sprint/improvements

---

## Common Issues & Solutions

### Build Failures
**Problem**: Module not found
- Check `package.json` dependencies
- Verify import paths
- Clear cache and redeploy

**Problem**: TypeScript errors
- Fix errors locally first
- Ensure `tsconfig.json` is correct
- Check `@types/*` packages

### Runtime Errors
**Problem**: 500 Internal Server Error
- Check Vercel logs: `vercel logs --prod`
- Verify environment variables
- Test database connection

**Problem**: CORS errors
- Update `CORS_ORIGIN` environment variable
- Check `vercel.json` headers configuration

**Problem**: Database connection failed
- Verify `DATABASE_URL`
- Check database firewall settings
- Enable connection pooling

### Performance Issues
**Problem**: Slow response times
- Check function execution time in Vercel dashboard
- Optimize database queries
- Add indexes to frequently queried columns
- Implement caching

**Problem**: Function timeout
- Increase `maxDuration` in `vercel.json`
- Optimize long-running operations
- Consider background jobs for heavy tasks

---

**Last Updated**: January 12, 2026
**Deployment Guide**: See `VERCEL_DEPLOYMENT.md` for detailed instructions
