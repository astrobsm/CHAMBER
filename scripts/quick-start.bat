@echo off
REM Clinical Rotation Platform - Quick Start Script
REM University of Nigeria Teaching Hospital, Ituku-Ozalla

echo.
echo ========================================================
echo   Clinical Rotation Platform - UNTH Quick Start
echo ========================================================
echo.

cd /d "%~dp0.."

echo [1/3] Checking Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed. Please install Node.js 18+
    pause
    exit /b 1
)
echo       Node.js found

echo [2/3] Installing dependencies...
call npm install
if errorlevel 1 (
    echo WARNING: Some packages may not have installed correctly
)

echo [3/3] Starting development servers...
echo.
echo ========================================================
echo   Servers Starting...
echo ========================================================
echo.
echo   Backend API:  http://localhost:3001
echo   Frontend App: http://localhost:5173
echo.
echo   Press Ctrl+C to stop
echo.

call npm run dev

pause
