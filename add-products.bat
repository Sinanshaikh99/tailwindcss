@echo off
echo ========================================
echo   ADDING 22 PREMIUM PRODUCTS
echo ========================================
echo.

cd backend
echo Running seed script...
echo.
node scripts/seed-20-products.js

echo.
echo ========================================
echo   DONE!
echo ========================================
echo.
echo Now restart your backend server:
echo   cd backend
echo   node server.js
echo.
echo Then visit: http://localhost:3000/shop
echo.
pause
