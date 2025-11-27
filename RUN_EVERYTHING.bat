@echo off
color 0A
title ETHIC CLOTHING BRAND - AUTOMATIC SETUP

echo.
echo ========================================
echo   ETHIC CLOTHING BRAND
echo   AUTOMATIC SETUP AND LAUNCH
echo ========================================
echo.
echo This will:
echo  1. Install all dependencies
echo  2. Add 22 premium products
echo  3. Start backend server
echo  4. Start frontend server
echo  5. Open website in browser
echo.
echo ========================================
echo.

echo [STEP 1/6] Installing Backend Dependencies...
cd backend
call npm install >nul 2>&1
if errorlevel 1 (
    echo ERROR: Failed to install backend dependencies
    echo Please make sure Node.js is installed
    pause
    exit /b 1
)
echo ✓ Backend dependencies installed
echo.

echo [STEP 2/6] Adding 22 Premium Products...
node scripts/seed-20-products.js
if errorlevel 1 (
    echo ERROR: Failed to seed database
    echo Please make sure MongoDB Compass is running
    pause
    exit /b 1
)
echo ✓ Products added successfully
echo.

echo [STEP 3/6] Installing Frontend Dependencies...
cd ..\frontend
call npm install >nul 2>&1
if errorlevel 1 (
    echo ERROR: Failed to install frontend dependencies
    pause
    exit /b 1
)
echo ✓ Frontend dependencies installed
echo.

echo [STEP 4/6] Starting Backend Server...
cd ..\backend
start "Ethic Backend Server" cmd /k "echo BACKEND SERVER RUNNING && echo. && echo Backend: http://localhost:5001 && echo API: http://localhost:5001/api && echo. && echo Keep this window open! && echo. && node server.js"
timeout /t 5 >nul
echo ✓ Backend server started
echo.

echo [STEP 5/6] Starting Frontend Server...
cd ..\frontend
start "Ethic Frontend Server" cmd /k "echo FRONTEND SERVER RUNNING && echo. && echo Website: http://localhost:3000 && echo. && echo Keep this window open! && echo Your browser will open automatically... && echo. && npm start"
echo ✓ Frontend server starting...
echo.

echo [STEP 6/6] Opening Browser...
timeout /t 10 >nul
start http://localhost:3000
echo ✓ Browser opened
echo.

echo ========================================
echo   SUCCESS! WEBSITE IS RUNNING
echo ========================================
echo.
echo Backend:  http://localhost:5001
echo Frontend: http://localhost:3000
echo.
echo Two new windows opened:
echo  1. Backend Server (keep it running)
echo  2. Frontend Server (keep it running)
echo.
echo Your browser should open automatically!
echo If not, go to: http://localhost:3000
echo.
echo ========================================
echo   LOGIN CREDENTIALS
echo ========================================
echo.
echo Admin:
echo   Email: admin@ethic.com
echo   Password: admin123
echo.
echo User:
echo   Email: user@example.com
echo   Password: user123
echo.
echo ========================================
echo   WHAT YOU HAVE
echo ========================================
echo.
echo ✓ 22 Premium Products
echo   - 5 Sarees
echo   - 6 Kurtas
echo   - 4 Dupattas
echo   - 3 Menswear
echo   - 4 Accessories
echo.
echo ✓ Full E-commerce Website
echo   - Homepage with 6 storytelling chapters
echo   - Shop page with filters
echo   - Product detail pages
echo   - Shopping cart
echo   - Checkout
echo   - Admin dashboard
echo.
echo ========================================
echo.
echo Press any key to close this window...
echo (Keep the other 2 windows open!)
echo.
pause >nul
