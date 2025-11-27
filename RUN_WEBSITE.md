# 🚀 How to Run the Ethic Website - Step by Step

## ⚠️ Important: Run these commands in Command Prompt (CMD), not PowerShell

### Step 1: Open Command Prompt
1. Press `Windows + R`
2. Type `cmd`
3. Press Enter

### Step 2: Navigate to Project
```cmd
cd C:\Users\patel\OneDrive\Desktop\ethic
```

### Step 3: Install Backend Dependencies
```cmd
cd backend
npm install
```
Wait for installation to complete (may take 2-3 minutes)

### Step 4: Seed the Database
Make sure MongoDB Compass is running, then:
```cmd
npm run seed
```

You should see:
```
✅ MongoDB connected
👤 Admin user created
📦 Sample products created
```

### Step 5: Start Backend Server
```cmd
npm run dev
```

You should see:
```
✅ MongoDB connected successfully
🚀 Server running on port 5000
```

✅ **Keep this terminal open!**

---

### Step 6: Open a NEW Command Prompt Window
1. Press `Windows + R` again
2. Type `cmd`
3. Press Enter

### Step 7: Navigate to Frontend
```cmd
cd C:\Users\patel\OneDrive\Desktop\ethic\frontend
```

### Step 8: Install Frontend Dependencies
```cmd
npm install
```
Wait for installation to complete (may take 2-3 minutes)

### Step 9: Start Frontend Server
```cmd
npm start
```

Your browser will automatically open to `http://localhost:3000`

If it doesn't open automatically, manually open your browser and go to:
```
http://localhost:3000
```

---

## ✅ Success Checklist

You should now have:
- [ ] Backend running in one terminal (port 5000)
- [ ] Frontend running in another terminal (port 3000)
- [ ] Website open in browser at http://localhost:3000
- [ ] MongoDB Compass running

---

## 🔐 Login Credentials

**Admin:**
- Email: admin@ethic.com
- Password: admin123

**User:**
- Email: user@example.com
- Password: user123

---

## 🐛 Still Not Working?

### Check MongoDB
1. Open MongoDB Compass
2. Make sure it's connected to `mongodb://localhost:27017`

### Check if ports are free
In Command Prompt:
```cmd
netstat -ano | findstr :5000
netstat -ano | findstr :3000
```

If you see output, those ports are in use. You'll need to:
1. Close the programs using those ports, OR
2. Change the ports in the .env files

### Alternative: Use Git Bash or Windows Terminal
If Command Prompt doesn't work, try:
1. Install Git Bash (comes with Git)
2. Or use Windows Terminal
3. Run the same commands

---

## 📱 Pages to Visit

Once running, visit these URLs:

- **Homepage:** http://localhost:3000/
- **Shop:** http://localhost:3000/shop
- **About:** http://localhost:3000/about
- **Contact:** http://localhost:3000/contact
- **Login:** http://localhost:3000/login
- **Admin:** http://localhost:3000/admin (after login)

---

## 💡 Quick Tip

If you see errors about "execution policy" in PowerShell, always use **Command Prompt (CMD)** instead!

To open CMD quickly:
1. Press `Windows + R`
2. Type `cmd`
3. Press Enter

---

Good luck! 🎭✨
