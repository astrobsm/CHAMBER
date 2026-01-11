<# 
    Clinical Rotation Platform - Development Server Launcher
    University of Nigeria Teaching Hospital, Ituku-Ozalla
#>

Write-Host ""
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  Clinical Rotation Platform - Development Server" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = Split-Path -Parent $PSScriptRoot

# Check if node_modules exists
if (-not (Test-Path "$projectRoot\node_modules")) {
    Write-Host "Dependencies not installed. Running setup first..." -ForegroundColor Yellow
    & "$projectRoot\scripts\setup.ps1"
}

Set-Location $projectRoot

Write-Host "Starting development servers..." -ForegroundColor Yellow
Write-Host ""
Write-Host "  Backend:  http://localhost:3001" -ForegroundColor Green
Write-Host "  Frontend: http://localhost:5173" -ForegroundColor Green
Write-Host ""
Write-Host "Press Ctrl+C to stop both servers" -ForegroundColor Gray
Write-Host ""

# Run both servers concurrently
npm run dev
