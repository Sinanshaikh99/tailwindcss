@echo off
echo ========================================
echo   ETHIC CLOTHING BRAND - STARTUP
echo ========================================
echo.

echo [1/5] Checking MongoDB...
echo Please make sure MongoDB Compass is running!
timeout /t 3 >nul

echo.
echo [2/5] Installing Backend Dependencies...
cd backend
call npm install
if errorlevel 1 (
    echo ERROR: Failed to install backend dependencies
    pause
    exit /b 1
)

echo.
echo [3/5] Starting Backend Server...
start "Ethic Backend" cmd /k "npm run dev"
timeout /t 5 >nul

echo.
echo [4/5] Installing Frontend Dependencies...
cd ..\frontend
call npm install
if errorlevel 1 (
    echo ERROR: Failed to install frontend dependencies
    pause
    exit /b 1
)

echo.
echo [5/5] Starting Frontend Server...
start "Ethic Frontend" cmd /k "npm start"

echo.
echo ========================================
echo   SERVERS STARTING...
echo ========================================
echo.
echo Backend: http://localhost:5000
echo Frontend: http://localhost:3000
echo.
echo Two new windows will open:
echo 1. Backend Server (keep it running)
echo 2. Frontend Server (keep it running)
echo.
echo Your browser will open automatically!
echo.
echo Login with:
echo Email: admin@ethic.com
echo Password: admin123
echo.
echo ========================================
pause
