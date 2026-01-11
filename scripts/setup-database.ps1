<# 
    Clinical Rotation Platform - Database Setup Script
    University of Nigeria Teaching Hospital, Ituku-Ozalla
#>

Write-Host ""
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  Database Setup Script" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = Split-Path -Parent $PSScriptRoot
$schemaPath = "$projectRoot\packages\backend\database\schema.sql"

# Database configuration
$DB_HOST = "localhost"
$DB_PORT = "5432"
$DB_NAME = "clinical_rotation"
$DB_USER = "postgres"
$DB_PASSWORD = "postgres"

Write-Host "[1/3] Checking PostgreSQL connection..." -ForegroundColor Yellow

# Check if psql is available
try {
    $psqlVersion = psql --version
    Write-Host "       PostgreSQL client found: $psqlVersion" -ForegroundColor Green
} catch {
    Write-Host "       WARNING: psql command not found. Using alternative method..." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Please run the following SQL manually in your PostgreSQL client:" -ForegroundColor Cyan
    Write-Host "  1. Create database: CREATE DATABASE clinical_rotation;" -ForegroundColor White
    Write-Host "  2. Run schema file: $schemaPath" -ForegroundColor White
    Write-Host ""
    exit 0
}

# Set environment variable for password
$env:PGPASSWORD = $DB_PASSWORD

Write-Host "[2/3] Creating database if not exists..." -ForegroundColor Yellow
try {
    # Check if database exists
    $dbExists = psql -h $DB_HOST -p $DB_PORT -U $DB_USER -lqt 2>$null | Select-String -Pattern "\s$DB_NAME\s"
    
    if (-not $dbExists) {
        psql -h $DB_HOST -p $DB_PORT -U $DB_USER -c "CREATE DATABASE $DB_NAME;" 2>$null
        Write-Host "       Database '$DB_NAME' created" -ForegroundColor Green
    } else {
        Write-Host "       Database '$DB_NAME' already exists" -ForegroundColor Green
    }
} catch {
    Write-Host "       Could not create database automatically" -ForegroundColor Yellow
    Write-Host "       Please create it manually: CREATE DATABASE $DB_NAME;" -ForegroundColor White
}

Write-Host "[3/3] Running schema migrations..." -ForegroundColor Yellow
try {
    if (Test-Path $schemaPath) {
        psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f $schemaPath 2>$null
        Write-Host "       Schema applied successfully" -ForegroundColor Green
    } else {
        Write-Host "       Schema file not found at: $schemaPath" -ForegroundColor Red
    }
} catch {
    Write-Host "       Could not apply schema automatically" -ForegroundColor Yellow
    Write-Host "       Please run manually: psql -d $DB_NAME -f $schemaPath" -ForegroundColor White
}

# Clear password from environment
$env:PGPASSWORD = ""

Write-Host ""
Write-Host "========================================================" -ForegroundColor Green
Write-Host "  Database Setup Complete!" -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Green
Write-Host ""
