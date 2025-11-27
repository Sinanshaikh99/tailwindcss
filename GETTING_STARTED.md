# 🚀 Getting Started with Ethic

Welcome! This guide will help you get the Ethic clothing brand website running on your machine.

## 📋 What You Need

Before starting, make sure you have:
- ✅ **Node.js** v16 or higher ([Download](https://nodejs.org/))
- ✅ **MongoDB Compass** ([Download](https://www.mongodb.com/try/download/compass))
- ✅ **Code Editor** (VS Code recommended)
- ✅ **Terminal/Command Prompt**

## 🎯 Installation Steps

### Step 1: Verify Installation
```bash
node verify-installation.js
```
You should see: ✨ SUCCESS! All files are present.

### Step 2: Install Dependencies

**Option A - Manual:**
```bash
# Backend
cd backend
npm install

# Frontend (open new terminal)
cd frontend
npm install
```

**Option B - Automated:**
```bash
npm run install-all
```

### Step 3: Setup Environment Files

**Backend Environment:**
```bash
cd backend
copy .env.example .env
```

Edit `backend/.env`:
```env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/ethic-clothing
JWT_SECRET=my_super_secret_key_12345
NODE_ENV=development
```

**Frontend Environment:**
```bash
cd frontend
copy .env.example .env
```

Edit `frontend/.env`:
```env
REACT_APP_API_URL=http://localhost:5000/api
```

### Step 4: Start MongoDB

1. Open **MongoDB Compass**
2. Click **Connect** (default: mongodb://localhost:27017)
3. Keep it running in the background

### Step 5: Seed Database

```bash
cd backend
npm run seed
```

You should see:
```
✅ MongoDB connected
🗑️  Cleared existing data
👤 Admin user created
👤 Sample user created
📦 Sample products created

✨ Database seeded successfully!

🔐 Login credentials:
Admin: admin@ethic.com / admin123
User: user@example.com / user123
```

### Step 6: Start Backend Server

```bash
cd backend
npm run dev
```

You should see:
```
✅ MongoDB connected successfully
🚀 Server running on port 5000
```

✅ Backend is now running at: `http://localhost:5000`

### Step 7: Start Frontend (New Terminal)

Open a **new terminal window**:

```bash
cd frontend
npm start
```

Your browser will automatically open to: `http://localhost:3000`

## 🎉 Success!

You should now see the Ethic homepage with 6 storytelling chapters!

## 🔐 Test Login

1. Click the **user icon** in the navbar
2. Login with:
   - **Email:** admin@ethic.com
   - **Password:** admin123

## 🧪 Test Features

### As a User:
1. ✅ Browse the **Shop** page
2. ✅ Click on a **product** to see details
3. ✅ **Add to cart**
4. ✅ View **cart**
5. ✅ Complete **checkout**

### As an Admin:
1. ✅ Visit `/admin` for dashboard
2. ✅ Go to `/admin/products` to manage products
3. ✅ **Create** a new product
4. ✅ **Edit** existing products
5. ✅ **Delete** products

## 📱 Pages to Explore

| Page | URL | What to See |
|------|-----|-------------|
| Home | `http://localhost:3000/` | 6 storytelling chapters |
| Shop | `http://localhost:3000/shop` | Product catalog |
| Product | `http://localhost:3000/product/:id` | Product details |
| Cart | `http://localhost:3000/cart` | Shopping cart |
| Checkout | `http://localhost:3000/checkout` | Order form |
| About | `http://localhost:3000/about` | Brand story |
| Contact | `http://localhost:3000/contact` | Contact form |
| Admin | `http://localhost:3000/admin` | Dashboard |

## 🛠️ Development Commands

### Backend
```bash
npm start          # Production mode
npm run dev        # Development mode (with nodemon)
npm run seed       # Seed database
```

### Frontend
```bash
npm start          # Development server
npm run build      # Production build
npm test           # Run tests
```

## 🐛 Common Issues & Solutions

### Issue: "MongoDB connection error"
**Solution:**
- Make sure MongoDB Compass is running
- Check that connection string is correct in `.env`
- Try: `mongodb://127.0.0.1:27017/ethic-clothing`

### Issue: "Port 5000 already in use"
**Solution:**
- Change `PORT=5001` in `backend/.env`
- Update frontend `.env`: `REACT_APP_API_URL=http://localhost:5001/api`

### Issue: "Cannot find module"
**Solution:**
```bash
# Delete node_modules and reinstall
cd backend
rmdir /s /q node_modules
npm install

cd ../frontend
rmdir /s /q node_modules
npm install
```

### Issue: "CORS error in browser"
**Solution:**
- Verify backend is running on port 5000
- Check frontend `.env` has correct API URL
- Restart both servers

### Issue: "Images not showing"
**Solution:**
- Images use placeholders by default
- Upload real images through admin panel
- Or add images to `backend/uploads/` folder

## 📊 Verify Everything Works

### Backend Health Check
Visit: `http://localhost:5000/api/health`

Should return:
```json
{
  "status": "ok",
  "message": "Ethic API is running"
}
```

### Frontend Check
Visit: `http://localhost:3000`

Should see:
- Beautiful homepage with animations
- Navbar with logo and menu
- Footer with links

### Database Check
Open MongoDB Compass:
- Database: `ethic-clothing`
- Collections: `users`, `products`, `orders`, `carts`
- Products collection should have 6 sample products

## 🎨 Customization

### Change Colors
Edit `frontend/tailwind.config.js`:
```javascript
colors: {
  primary: { /* your colors */ },
  accent: { /* your colors */ }
}
```

### Add Your Products
1. Login as admin
2. Go to `/admin/products`
3. Click "Add New Product"
4. Fill in details
5. Save

### Update Content
Edit the page files in `frontend/src/pages/`:
- `Home.jsx` - Homepage chapters
- `About.jsx` - Brand story
- `Contact.jsx` - Contact info

## 📚 Next Steps

1. ✅ **Explore** all pages and features
2. 📝 **Read** FEATURES.md for complete feature list
3. 🎨 **Customize** colors, fonts, and content
4. 📸 **Add** your own product images
5. 🚀 **Deploy** using DEPLOYMENT.md guide

## 💡 Pro Tips

- Use **MongoDB Compass** to view and edit database directly
- Check **browser console** (F12) for frontend errors
- Check **terminal** for backend errors
- Use **Postman** to test API endpoints
- Install **React DevTools** for debugging

## 🆘 Need More Help?

- 📖 **QUICK_START.md** - 5-minute setup
- 📖 **SETUP.md** - Detailed installation
- 📖 **FEATURES.md** - All features explained
- 📖 **DEPLOYMENT.md** - Production deployment
- 📖 **PROJECT_SUMMARY.md** - Complete overview

## ✅ Checklist

Before moving forward, make sure:
- [ ] MongoDB Compass is running
- [ ] Backend server is running (port 5000)
- [ ] Frontend server is running (port 3000)
- [ ] Database is seeded with sample data
- [ ] You can login as admin
- [ ] You can browse products
- [ ] You can add items to cart
- [ ] Admin dashboard is accessible

## 🎉 You're All Set!

Congratulations! You now have a fully functional, premium clothing brand website running locally.

**Happy coding!** 🎨✨

---

*"Where tradition whispers… and craftsmanship breathes."*
