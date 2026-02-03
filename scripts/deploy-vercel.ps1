# Automated Vercel Deployment Script
# Clinical Rotation Platform

param(
    [string]$Environment = "production",
    [switch]$SkipInstall,
    [switch]$SkipEnvCheck
)

$ErrorActionPreference = "Stop"

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "  Clinical Rotation Platform Deployment" -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Cyan

# Check if Vercel CLI is installed
Write-Host "Checking Vercel CLI..." -ForegroundColor Yellow
$vercelInstalled = Get-Command vercel -ErrorAction SilentlyContinue

if (-not $vercelInstalled)
{
    Write-Host "Vercel CLI not found. Installing..." -ForegroundColor Yellow
    npm install -g vercel
    if ($LASTEXITCODE -ne 0)
    {
        Write-Host "Failed to install Vercel CLI" -ForegroundColor Red
        exit 1
    }
    Write-Host "Vercel CLI installed successfully" -ForegroundColor Green
}
else
{
    Write-Host "Vercel CLI already installed" -ForegroundColor Green
}

# Check for required environment variables
if (-not $SkipEnvCheck)
{
    Write-Host "`nChecking environment variables..." -ForegroundColor Yellow
    
    $requiredVars = @(
        "DATABASE_URL",
        "JWT_SECRET",
        "CORS_ORIGIN"
    )
    
    $missingVars = @()
    foreach ($var in $requiredVars)
    {
        if (-not (Test-Path "Env:$var"))
        {
            $missingVars += $var
        }
    }
    
    if ($missingVars.Count -gt 0)
    {
        Write-Host "`nMissing environment variables:" -ForegroundColor Red
        $missingVars | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
        Write-Host "`nWould you like to set them now? (y/n)" -ForegroundColor Yellow
        $response = Read-Host
        
        if ($response -eq 'y')
        {
            foreach ($var in $missingVars)
            {
                if ($var -eq "JWT_SECRET")
                {
                    Write-Host "`nGenerating secure JWT_SECRET..." -ForegroundColor Cyan
                    $bytes = New-Object byte[] 64
                    [Security.Cryptography.RandomNumberGenerator]::Create().GetBytes($bytes)
                    $secret = [Convert]::ToBase64String($bytes)
                    Set-Item -Path "Env:$var" -Value $secret
                    Write-Host "Generated and set JWT_SECRET" -ForegroundColor Green
                }
                else
                {
                    $value = Read-Host "`nEnter value for $var"
                    Set-Item -Path "Env:$var" -Value $value
                }
            }
        }
        else
        {
            Write-Host "`nYou can set them in Vercel dashboard later." -ForegroundColor Yellow
        }
    }
    else
    {
        Write-Host "All required environment variables are set" -ForegroundColor Green
    }
}

# Install dependencies
if (-not $SkipInstall)
{
    Write-Host "`nInstalling dependencies..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0)
    {
        Write-Host "Failed to install dependencies" -ForegroundColor Red
        exit 1
    }
    Write-Host "Dependencies installed" -ForegroundColor Green
}

# Build the project
Write-Host "`nBuilding project..." -ForegroundColor Yellow
npm run build
if ($LASTEXITCODE -ne 0)
{
    Write-Host "Build failed" -ForegroundColor Red
    exit 1
}
Write-Host "Build successful" -ForegroundColor Green

# Check Vercel authentication
Write-Host "`nChecking Vercel authentication..." -ForegroundColor Yellow
vercel whoami 2>$null
if ($LASTEXITCODE -ne 0)
{
    Write-Host "Not logged in. Opening Vercel login..." -ForegroundColor Yellow
    vercel login
    if ($LASTEXITCODE -ne 0)
    {
        Write-Host "Vercel login failed" -ForegroundColor Red
        exit 1
    }
}
Write-Host "Authenticated with Vercel" -ForegroundColor Green

# Deploy to Vercel
Write-Host "`nDeploying to Vercel ($Environment)..." -ForegroundColor Yellow

if ($Environment -eq "production")
{
    Write-Host "`nYou are about to deploy to PRODUCTION" -ForegroundColor Red
    Write-Host "Continue? (y/n)" -ForegroundColor Yellow
    $confirm = Read-Host
    
    if ($confirm -ne 'y')
    {
        Write-Host "Deployment cancelled" -ForegroundColor Yellow
        exit 0
    }
    
    vercel --prod --yes
}
else
{
    vercel --yes
}

if ($LASTEXITCODE -ne 0)
{
    Write-Host "Deployment failed" -ForegroundColor Red
    exit 1
}

Write-Host "`n========================================" -ForegroundColor Green
Write-Host "  Deployment Successful!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

Write-Host "`nNext steps:" -ForegroundColor Cyan
Write-Host "1. Set up environment variables in Vercel dashboard" -ForegroundColor White
Write-Host "2. Run database migrations" -ForegroundColor White
Write-Host "3. Test your deployment" -ForegroundColor White
Write-Host "`nRun: vercel inspect [deployment-url]" -ForegroundColor Yellow
Write-Host ""
