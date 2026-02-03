# 🚀 Quick Deploy Guide

Deploy your Clinical Rotation Platform to Vercel in minutes!

## One-Command Deployment

Run the automated deployment script:

```powershell
.\scripts\deploy-all.ps1
```

This script will:
1. ✅ Set up environment variables
2. ✅ Configure database
3. ✅ Deploy to Vercel

## Individual Scripts

### 1. Environment Setup Only
```powershell
.\scripts\setup-env.ps1
```
Interactively configures all environment variables and generates secure secrets.

### 2. Database Setup Only
```powershell
.\scripts\setup-database.ps1 -DatabaseUrl "your-database-url"
```
Runs schema migrations and seeds your database.

### 3. Vercel Deployment Only
```powershell
.\scripts\deploy-vercel.ps1
```
Builds and deploys to Vercel.

### 4. Production Deployment
```powershell
.\scripts\deploy-vercel.ps1 -Environment production
```
Deploys to production with confirmation prompt.

## Script Parameters

### deploy-vercel.ps1
```powershell
# Skip dependency installation
.\scripts\deploy-vercel.ps1 -SkipInstall

# Skip environment variable check
.\scripts\deploy-vercel.ps1 -SkipEnvCheck

# Deploy to preview
.\scripts\deploy-vercel.ps1 -Environment preview
```

### setup-database.ps1
```powershell
# Run only schema migration
.\scripts\setup-database.ps1 -SchemaOnly

# Run only seed files
.\scripts\setup-database.ps1 -SeedsOnly

# Specify database URL
.\scripts\setup-database.ps1 -DatabaseUrl "postgresql://..."
```

### setup-env.ps1
```powershell
# Add environment variables directly to Vercel
.\scripts\setup-env.ps1 -AddToVercel
```

## Prerequisites

Before running the scripts, ensure you have:

- [x] Node.js 18+ installed
- [x] PowerShell 5.1+ (Windows) or PowerShell Core (cross-platform)
- [x] PostgreSQL database created (Supabase or Neon)
- [x] Git repository initialized

## Quick Setup Checklist

### 1. Create Database
**Supabase:**
```
1. Go to https://supabase.com
2. Create new project
3. Copy connection string from Settings > Database
```

**Neon:**
```
1. Go to https://neon.tech
2. Create new project
3. Copy connection string
```

### 2. Run Deployment Script
```powershell
.\scripts\deploy-all.ps1
```

### 3. Follow Interactive Prompts
The script will ask for:
- Database provider (Supabase/Neon/Custom)
- Database connection URL
- CORS origin (your Vercel URL)
- Optional configurations

### 4. Verify Deployment
```powershell
# Check deployment status
vercel ls

# View logs
vercel logs --prod

# Test endpoints
curl https://your-app.vercel.app/api/health
```

## Manual Deployment (Alternative)

If you prefer manual deployment:

```powershell
# 1. Install Vercel CLI
npm install -g vercel

# 2. Login
vercel login

# 3. Install dependencies
npm install

# 4. Build project
npm run build

# 5. Deploy
vercel --prod
```

## Environment Variables

Required variables (set in Vercel Dashboard):
```
DATABASE_URL=postgresql://user:pass@host:5432/db
JWT_SECRET=your-secret-min-32-chars
JWT_REFRESH_SECRET=your-refresh-secret
NODE_ENV=production
CORS_ORIGIN=https://your-app.vercel.app
```

Optional variables:
```
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_KEY=your-anon-key
RATE_LIMIT_WINDOW_MS=900000
RATE_LIMIT_MAX=100
MAX_FILE_SIZE=5242880
```

## Troubleshooting

### "Vercel CLI not found"
```powershell
npm install -g vercel
```

### "psql not found"
Install PostgreSQL client:
- Windows: https://www.postgresql.org/download/windows/
- Or use Supabase SQL Editor directly

### "Database connection failed"
1. Check DATABASE_URL format
2. Verify database allows connections from Vercel
3. For Supabase: Enable "Direct Connection"

### "Build failed"
```powershell
# Clear cache and rebuild
npm clean-install
npm run build
```

### "Environment variables not set"
```powershell
# Set variables in Vercel
vercel env add VARIABLE_NAME production
```

## Post-Deployment

After successful deployment:

1. **Test the application:**
   - Frontend: https://your-app.vercel.app
   - API Health: https://your-app.vercel.app/api/health

2. **Monitor logs:**
   ```powershell
   vercel logs --prod --follow
   ```

3. **Set up custom domain** (optional):
   - Vercel Dashboard > Settings > Domains

4. **Enable analytics** (optional):
   - Vercel Dashboard > Analytics

## Need Help?

- 📚 Full Guide: [VERCEL_DEPLOYMENT.md](VERCEL_DEPLOYMENT.md)
- ✅ Checklist: [DEPLOYMENT_CHECKLIST.md](DEPLOYMENT_CHECKLIST.md)
- 📝 Summary: [DEPLOYMENT_SUMMARY.md](DEPLOYMENT_SUMMARY.md)

## Script Locations

All deployment scripts are in the `scripts/` directory:
- `deploy-all.ps1` - Complete automated deployment
- `deploy-vercel.ps1` - Vercel deployment only
- `setup-env.ps1` - Environment configuration
- `setup-database.ps1` - Database migration and seeding

---

**Ready to deploy?** Run: `.\scripts\deploy-all.ps1`
