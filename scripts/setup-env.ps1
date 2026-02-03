#!/usr/bin/env pwsh
# Environment Setup Script
# Sets up environment variables for Vercel deployment

param(
    [string]$ProjectName = "",
    [switch]$AddToVercel
)

$ErrorActionPreference = "Stop"

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "  Environment Variables Setup" -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Cyan

# Generate secure secrets
function New-SecureSecret {
    param([int]$Length = 64)
    $bytes = New-Object byte[] $Length
    [Security.Cryptography.RandomNumberGenerator]::Create().GetBytes($bytes)
    return [Convert]::ToBase64String($bytes)
}

# Collect environment variables
$envVars = @{}

Write-Host "Let's set up your environment variables.`n" -ForegroundColor Yellow

# Database
Write-Host "1. DATABASE CONFIGURATION" -ForegroundColor Cyan
Write-Host "   Choose your database provider:" -ForegroundColor White
Write-Host "   1) Supabase (Recommended)" -ForegroundColor White
Write-Host "   2) Neon" -ForegroundColor White
Write-Host "   3) Custom PostgreSQL" -ForegroundColor White
$dbChoice = Read-Host "   Enter choice (1-3)"

switch ($dbChoice) {
    "1" {
        Write-Host "`n   Supabase Setup:" -ForegroundColor Yellow
        Write-Host "   Go to: https://supabase.com/dashboard" -ForegroundColor Gray
        Write-Host "   Navigate to: Settings > Database > Connection string" -ForegroundColor Gray
        $dbUrl = Read-Host "   Enter your Supabase DATABASE_URL"
        $envVars["DATABASE_URL"] = $dbUrl
        
        $supabaseUrl = Read-Host "   Enter your SUPABASE_URL (optional, press Enter to skip)"
        if ($supabaseUrl) { $envVars["SUPABASE_URL"] = $supabaseUrl }
        
        $supabaseKey = Read-Host "   Enter your SUPABASE_KEY (optional, press Enter to skip)"
        if ($supabaseKey) { $envVars["SUPABASE_KEY"] = $supabaseKey }
    }
    "2" {
        Write-Host "`n   Neon Setup:" -ForegroundColor Yellow
        Write-Host "   Go to: https://neon.tech/dashboard" -ForegroundColor Gray
        Write-Host "   Copy your connection string" -ForegroundColor Gray
        $dbUrl = Read-Host "   Enter your Neon DATABASE_URL"
        $envVars["DATABASE_URL"] = $dbUrl
    }
    "3" {
        Write-Host "`n   Custom PostgreSQL:" -ForegroundColor Yellow
        $dbUrl = Read-Host "   Enter your DATABASE_URL"
        $envVars["DATABASE_URL"] = $dbUrl
    }
}

# JWT Secrets
Write-Host "`n2. JWT CONFIGURATION" -ForegroundColor Cyan
Write-Host "   Generating secure JWT secrets..." -ForegroundColor Yellow
$jwtSecret = New-SecureSecret
$jwtRefreshSecret = New-SecureSecret
$envVars["JWT_SECRET"] = $jwtSecret
$envVars["JWT_REFRESH_SECRET"] = $jwtRefreshSecret
$envVars["JWT_EXPIRES_IN"] = "24h"
$envVars["JWT_REFRESH_EXPIRES_IN"] = "7d"
Write-Host "   JWT secrets generated" -ForegroundColor Green

# Node Environment
Write-Host "`n3. NODE ENVIRONMENT" -ForegroundColor Cyan
$envVars["NODE_ENV"] = "production"
Write-Host "   NODE_ENV set to production" -ForegroundColor Green

# CORS Origin
Write-Host "`n4. CORS CONFIGURATION" -ForegroundColor Cyan
Write-Host "   This will be your Vercel deployment URL" -ForegroundColor Gray
$corsOrigin = Read-Host "   Enter CORS_ORIGIN (e.g., https://your-app.vercel.app)"
$envVars["CORS_ORIGIN"] = $corsOrigin

# Optional configurations
Write-Host "`n5. OPTIONAL SETTINGS" -ForegroundColor Cyan
Write-Host "   Configure optional settings? (y/n)" -ForegroundColor Yellow
$configOptional = Read-Host

if ($configOptional -eq 'y') {
    $rateLimit = Read-Host "   RATE_LIMIT_WINDOW_MS (default: 900000)"
    if ($rateLimit) { $envVars["RATE_LIMIT_WINDOW_MS"] = $rateLimit }
    
    $rateLimitMax = Read-Host "   RATE_LIMIT_MAX (default: 100)"
    if ($rateLimitMax) { $envVars["RATE_LIMIT_MAX"] = $rateLimitMax }
    
    $maxFileSize = Read-Host "   MAX_FILE_SIZE in bytes (default: 5242880)"
    if ($maxFileSize) { $envVars["MAX_FILE_SIZE"] = $maxFileSize }
}

# Save to .env file
Write-Host "`n6. SAVING CONFIGURATION" -ForegroundColor Cyan
$envFile = ".env"
$content = "# Generated on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')`n`n"

foreach ($key in $envVars.Keys) {
    $content += "$key=$($envVars[$key])`n"
}

$content | Out-File -FilePath $envFile -Encoding UTF8
Write-Host "   Saved to $envFile" -ForegroundColor Green

# Display summary
Write-Host "`n========================================" -ForegroundColor Green
Write-Host "  Configuration Summary" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

foreach ($key in $envVars.Keys) {
    if ($key -like "*SECRET*" -or $key -like "*PASSWORD*") {
        Write-Host "  $key = ********" -ForegroundColor Gray
    }
    else {
        Write-Host "  $key = $($envVars[$key])" -ForegroundColor Gray
    }
}

# Add to Vercel
if ($AddToVercel) {
    Write-Host "`n7. ADDING TO VERCEL" -ForegroundColor Cyan
    Write-Host "   Checking Vercel CLI..." -ForegroundColor Yellow
    
    $vercelInstalled = Get-Command vercel -ErrorAction SilentlyContinue
    if (-not $vercelInstalled) {
        Write-Host "   Vercel CLI not installed. Install with: npm install -g vercel" -ForegroundColor Red
        exit 1
    }
    
    Write-Host "   Adding environment variables to Vercel..." -ForegroundColor Yellow
    
    foreach ($key in $envVars.Keys) {
        Write-Host "   Adding $key..." -ForegroundColor Gray
        $value = $envVars[$key]
        
        # Add to production
        echo $value | vercel env add $key production 2>$null
    }
    
    Write-Host "   Environment variables added to Vercel" -ForegroundColor Green
}

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "  Setup Complete!" -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Cyan

Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Review the .env file" -ForegroundColor White
Write-Host "2. Manually add variables to Vercel:" -ForegroundColor White
Write-Host "   vercel env add VARIABLE_NAME production" -ForegroundColor Gray
Write-Host "3. Or use Vercel Dashboard:" -ForegroundColor White
Write-Host "   https://vercel.com/dashboard > Project > Settings > Environment Variables" -ForegroundColor Gray
Write-Host "4. Run deployment script:" -ForegroundColor White
Write-Host "   .\scripts\deploy-vercel.ps1" -ForegroundColor Gray
Write-Host ""
