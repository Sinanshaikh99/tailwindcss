Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Git Setup and Push to GitHub" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Configure Git user
Write-Host "Configuring Git user..." -ForegroundColor Yellow
git config --global user.name "patel"
git config --global user.email "Sinan"
Write-Host ""

# Initialize repository
Write-Host "Initializing Git repository..." -ForegroundColor Yellow
git init
Write-Host ""

# Add all files
Write-Host "Adding files to Git..." -ForegroundColor Yellow
git add .
Write-Host ""

# Create first commit
Write-Host "Creating first commit..." -ForegroundColor Yellow
git commit -m "first commit"
Write-Host ""

# Rename branch to main
Write-Host "Setting branch to main..." -ForegroundColor Yellow
git branch -M main
Write-Host ""

# Add remote origin
Write-Host "Adding remote repository..." -ForegroundColor Yellow
git remote add origin https://github.com/Sinanshaikh99/website.git
Write-Host ""

# Push to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin main
Write-Host ""

Write-Host "========================================" -ForegroundColor Green
Write-Host "Done! Your code is now on GitHub." -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Read-Host "Press Enter to exit"
