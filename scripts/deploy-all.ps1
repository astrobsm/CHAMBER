# Complete Deployment Automation Script
# Handles: Environment setup > Database setup > Vercel deployment

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "========================================================================" -ForegroundColor Cyan
Write-Host "        Clinical Rotation Platform - Full Deployment" -ForegroundColor Cyan
Write-Host "        University of Nigeria Teaching Hospital" -ForegroundColor Cyan
Write-Host "========================================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "This script will guide you through the complete deployment process." -ForegroundColor Yellow
Write-Host ""

# Step 1: Environment Setup
Write-Host "STEP 1: Environment Configuration" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

$setupEnv = Read-Host "Set up environment variables? (y/n)"
if ($setupEnv -eq 'y')
{
    & "$PSScriptRoot\setup-env.ps1"
    if ($LASTEXITCODE -ne 0)
    {
        Write-Host "Environment setup failed" -ForegroundColor Red
        exit 1
    }
    Write-Host ""
    Write-Host "Environment configured" -ForegroundColor Green
    Write-Host ""
}
else
{
    Write-Host "Skipping environment setup" -ForegroundColor Yellow
    Write-Host ""
}

# Step 2: Database Setup
Write-Host ""
Write-Host "STEP 2: Database Setup" -ForegroundColor Cyan
Write-Host "======================" -ForegroundColor Cyan
Write-Host ""

$setupDb = Read-Host "Set up database? (y/n)"
if ($setupDb -eq 'y')
{
    $dbUrl = $env:DATABASE_URL
    if (-not $dbUrl)
    {
        $dbUrl = Read-Host "Enter your DATABASE_URL"
    }
    
    & "$PSScriptRoot\setup-database.ps1" -DatabaseUrl $dbUrl
    if ($LASTEXITCODE -ne 0)
    {
        Write-Host "Database setup failed" -ForegroundColor Red
        Write-Host "You can run this manually later:" -ForegroundColor Yellow
        Write-Host ".\scripts\setup-database.ps1 -DatabaseUrl 'your-url'" -ForegroundColor Gray
    }
    else
    {
        Write-Host ""
        Write-Host "Database configured" -ForegroundColor Green
        Write-Host ""
    }
}
else
{
    Write-Host "Skipping database setup" -ForegroundColor Yellow
    Write-Host "NOTE: You'll need to set up the database manually before the app works" -ForegroundColor Yellow
    Write-Host ""
}

# Step 3: Vercel Deployment
Write-Host ""
Write-Host "STEP 3: Vercel Deployment" -ForegroundColor Cyan
Write-Host "=========================" -ForegroundColor Cyan
Write-Host ""

$deploy = Read-Host "Deploy to Vercel now? (y/n)"
if ($deploy -eq 'y')
{
    & "$PSScriptRoot\deploy-vercel.ps1"
    if ($LASTEXITCODE -ne 0)
    {
        Write-Host "Deployment failed" -ForegroundColor Red
        exit 1
    }
}
else
{
    Write-Host "Skipping deployment" -ForegroundColor Yellow
    Write-Host "You can deploy later with:" -ForegroundColor Yellow
    Write-Host ".\scripts\deploy-vercel.ps1" -ForegroundColor Gray
    Write-Host ""
}

# Final Summary
Write-Host ""
Write-Host "========================================================================" -ForegroundColor Green
Write-Host "                   Deployment Process Complete!" -ForegroundColor Green
Write-Host "========================================================================" -ForegroundColor Green
Write-Host ""

Write-Host "What's Next?" -ForegroundColor Cyan
Write-Host "============" -ForegroundColor Cyan
Write-Host ""

Write-Host "1. Add environment variables to Vercel Dashboard:" -ForegroundColor White
Write-Host "   https://vercel.com/dashboard > Your Project > Settings > Environment Variables" -ForegroundColor Gray
Write-Host ""

Write-Host "2. Test your deployment:" -ForegroundColor White
Write-Host "   Frontend: https://your-app.vercel.app" -ForegroundColor Gray
Write-Host "   API: https://your-app.vercel.app/api/health" -ForegroundColor Gray
Write-Host ""

Write-Host "3. Monitor logs:" -ForegroundColor White
Write-Host "   vercel logs --prod" -ForegroundColor Gray
Write-Host ""

Write-Host "4. Set up custom domain (optional):" -ForegroundColor White
Write-Host "   Vercel Dashboard > Domains" -ForegroundColor Gray
Write-Host ""

Write-Host "Documentation:" -ForegroundColor Cyan
Write-Host "  VERCEL_DEPLOYMENT.md - Full deployment guide" -ForegroundColor White
Write-Host "  DEPLOYMENT_CHECKLIST.md - Verification checklist" -ForegroundColor White
Write-Host "  DEPLOYMENT_SUMMARY.md - Quick reference" -ForegroundColor White
Write-Host ""

Write-Host "Need help? Check the documentation!" -ForegroundColor Yellow
Write-Host ""
