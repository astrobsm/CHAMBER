<# 
    Clinical Rotation Platform - Automated Setup Script
    University of Nigeria Teaching Hospital, Ituku-Ozalla
#>

Write-Host ""
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  Clinical Rotation Platform - UNTH Setup Script" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

$ErrorActionPreference = "Stop"
$projectRoot = $PSScriptRoot

# Check Node.js
Write-Host "[1/6] Checking Node.js installation..." -ForegroundColor Yellow
try {
    $nodeVersion = node --version
    Write-Host "       Node.js $nodeVersion found" -ForegroundColor Green
} catch {
    Write-Host "       ERROR: Node.js is not installed. Please install Node.js 18+ first." -ForegroundColor Red
    exit 1
}

# Check npm
Write-Host "[2/6] Checking npm installation..." -ForegroundColor Yellow
try {
    $npmVersion = npm --version
    Write-Host "       npm $npmVersion found" -ForegroundColor Green
} catch {
    Write-Host "       ERROR: npm is not installed." -ForegroundColor Red
    exit 1
}

# Install root dependencies
Write-Host "[3/6] Installing root dependencies..." -ForegroundColor Yellow
Set-Location $projectRoot
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "       WARNING: Root install had issues, continuing..." -ForegroundColor Yellow
}
Write-Host "       Root dependencies installed" -ForegroundColor Green

# Install backend dependencies
Write-Host "[4/6] Installing backend dependencies..." -ForegroundColor Yellow
Set-Location "$projectRoot\packages\backend"
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "       WARNING: Backend install had issues, continuing..." -ForegroundColor Yellow
}
Write-Host "       Backend dependencies installed" -ForegroundColor Green

# Install frontend dependencies
Write-Host "[5/6] Installing frontend dependencies..." -ForegroundColor Yellow
Set-Location "$projectRoot\packages\frontend"
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "       WARNING: Frontend install had issues, continuing..." -ForegroundColor Yellow
}
Write-Host "       Frontend dependencies installed" -ForegroundColor Green

# Return to project root
Set-Location $projectRoot

Write-Host "[6/6] Setup complete!" -ForegroundColor Yellow
Write-Host ""
Write-Host "========================================================" -ForegroundColor Green
Write-Host "  Setup Complete!" -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "  1. Ensure PostgreSQL is running on localhost:5432" -ForegroundColor White
Write-Host "  2. Create database: createdb clinical_rotation" -ForegroundColor White
Write-Host "  3. Run: .\scripts\setup-database.ps1" -ForegroundColor White
Write-Host "  4. Run: npm run dev" -ForegroundColor White
Write-Host ""
Write-Host "Or run the full setup with: .\scripts\start-dev.ps1" -ForegroundColor Yellow
Write-Host ""
