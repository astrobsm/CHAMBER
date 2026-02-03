@echo off
REM Quick Deploy - Clinical Rotation Platform
REM Run this to start the automated deployment process

echo.
echo ========================================
echo   Clinical Rotation Platform
echo   Automated Deployment
echo ========================================
echo.

powershell -ExecutionPolicy Bypass -File "%~dp0scripts\deploy-all.ps1"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Deployment failed! Check the errors above.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo ========================================
echo   Deployment Complete!
echo ========================================
echo.
pause
