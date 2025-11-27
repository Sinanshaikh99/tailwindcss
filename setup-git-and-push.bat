@echo off
echo ========================================
echo Git Setup and Push to GitHub
echo ========================================
echo.

REM Configure Git user
echo Configuring Git user...
git config --global user.name "patel"
git config --global user.email "Sinan"
echo.

REM Initialize repository
echo Initializing Git repository...
git init
echo.

REM Add all files
echo Adding files to Git...
git add .
echo.

REM Create first commit
echo Creating first commit...
git commit -m "first commit"
echo.

REM Rename branch to main
echo Setting branch to main...
git branch -M main
echo.

REM Add remote origin
echo Adding remote repository...
git remote add origin https://github.com/Sinanshaikh99/website.git
echo.

REM Push to GitHub
echo Pushing to GitHub...
git push -u origin main
echo.

echo ========================================
echo Done! Your code is now on GitHub.
echo ========================================
pause
