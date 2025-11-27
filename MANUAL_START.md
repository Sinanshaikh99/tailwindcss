# 🚀 Manual Startup Guide - GUARANTEED TO WORK

Follow these steps **exactly** and the website will run!

## ✅ Step 1: Start MongoDB

1. Open **MongoDB Compass**
2. Click **Connect** (it will connect to localhost:27017)
3. **Keep it running** - don't close it!

---

## ✅ Step 2: Start Backend

1. Open **Command Prompt** (not PowerShell!)
   - Press `Windows + R`
   - Type: `cmd`
   - Press Enter

2. Run these commands **one by one**:

```cmd
cd C:\Users\patel\OneDrive\Desktop\ethic\backend
npm install
node server.js
```

You should see:
```
🔄 Connecting to MongoDB...
✅ MongoDB connected successfully
🚀 Server running on port 5000
```

✅ **Keep this window open!**

---

## ✅ Step 3: Start Frontend

1. Open a **NEW Command Prompt** window
   - Press `Windows + R` again
   - Type: `cmd`
   - Press Enter

2. Run these commands:

```cmd
cd C:\Users\patel\OneDrive\Desktop\ethic\frontend
npm install
npm start
```

Your browser will automatically open to: **http://localhost:3000**

✅ **Keep this window open too!**

---

## 🎉 Success!

You should now see the beautiful Ethic website!

### 🔐 Login Credentials:

**Admin:**
- Email: `admin@ethic.com`
- Password: `admin123`

**User:**
- Email: `user@example.com`
- Password: `user123`

---

## 🐛 If Backend Crashes

### Error: "MongoDB connection error"

**Solution:**
1. Make sure MongoDB Compass is running
2. In MongoDB Compass, click "Connect"
3. Restart the backend: `node server.js`

### Error: "Port 5000 already in use"

**Solution:**
1. Close any other programs using port 5000
2. Or change the port in `backend/.env`:
   ```
   PORT=5001
   ```
3. Then update `frontend/.env`:
   ```
   REACT_APP_API_URL=http://localhost:5001/api
   ```

### Error: "Cannot find module"

**Solution:**
```cmd
cd backend
rmdir /s /q node_modules
npm install
```

---

## 📱 Pages to Visit

- **Homepage:** http://localhost:3000/
- **Shop:** http://localhost:3000/shop
- **Admin:** http://localhost:3000/admin (login first)

---

## 💡 Pro Tips

1. **Always use Command Prompt (CMD)**, not PowerShell
2. **Keep both terminal windows open** while using the website
3. **MongoDB Compass must be running** at all times
4. Press `Ctrl + C` in a terminal to stop a server

---

## 🆘 Still Having Issues?

Run this command to check everything:
```cmd
cd C:\Users\patel\OneDrive\Desktop\ethic
node verify-installation.js
```

It will tell you if any files are missing!

---

**You got this! 🎭✨**
