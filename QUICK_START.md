# ⚡ Quick Start Guide - Ethic Clothing Brand

Get up and running in 5 minutes!

## 🎯 What You're Building

A premium, storytelling-based clothing brand website with:
- 6 emotional homepage chapters
- Full e-commerce functionality
- Admin dashboard
- Beautiful animations
- Production-ready code

## 📦 Installation (Windows)

### Step 1: Install Backend Dependencies
```cmd
cd backend
npm install
```

### Step 2: Setup Backend Environment
```cmd
copy .env.example .env
```

Edit `backend/.env`:
```
PORT=5000
MONGODB_URI=mongodb://localhost:27017/ethic-clothing
JWT_SECRET=your_secret_key_here_change_this
NODE_ENV=development
```

### Step 3: Start MongoDB
- Open MongoDB Compass
- Connect to `mongodb://localhost:27017`

### Step 4: Seed Database
```cmd
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

### Step 5: Start Backend
```cmd
npm run dev
```

Backend running at: `http://localhost:5000` ✅

---

### Step 6: Install Frontend Dependencies
Open a NEW terminal:
```cmd
cd frontend
npm install
```

### Step 7: Setup Frontend Environment
```cmd
copy .env.example .env
```

Edit `frontend/.env`:
```
REACT_APP_API_URL=http://localhost:5000/api
```

### Step 8: Start Frontend
```cmd
npm start
```

Frontend opens at: `http://localhost:3000` ✅

## 🎉 You're Done!

### Test the Website:

1. **Homepage** → See 6 storytelling chapters
2. **Shop** → Browse products with filters
3. **Login** → Use `admin@ethic.com` / `admin123`
4. **Add to Cart** → Select a product
5. **Checkout** → Complete an order
6. **Admin** → Visit `/admin` for dashboard

## 🔑 Login Credentials

**Admin:**
- Email: `admin@ethic.com`
- Password: `admin123`

**User:**
- Email: `user@example.com`
- Password: `user123`

## 📱 Pages to Explore

| Page | URL | Description |
|------|-----|-------------|
| Home | `/` | 6 storytelling chapters |
| Shop | `/shop` | Product catalog with filters |
| Product | `/product/:id` | Product details with tabs |
| Cart | `/cart` | Shopping cart |
| Checkout | `/checkout` | Order form |
| About | `/about` | Brand story timeline |
| Contact | `/contact` | Contact form |
| Admin | `/admin` | Dashboard (admin only) |
| Products | `/admin/products` | Manage products |

## 🎨 Key Features

✅ Parallax scrolling
✅ Smooth animations
✅ Responsive design
✅ Shopping cart
✅ User authentication
✅ Admin dashboard
✅ Product management
✅ Order processing

## 🐛 Common Issues

### "MongoDB connection error"
→ Make sure MongoDB Compass is running

### "Port 5000 already in use"
→ Change PORT in `backend/.env` to 5001

### "Cannot find module"
→ Run `npm install` in both backend and frontend

### "CORS error"
→ Check that backend is running on port 5000

## 📚 Next Steps

1. ✅ Test all features
2. 📝 Customize content
3. 🎨 Add your own images
4. 🚀 Deploy to production (see DEPLOYMENT.md)

## 🎯 Project Structure

```
ethic-clothing/
├── backend/              # Node.js + Express API
│   ├── models/          # MongoDB schemas
│   ├── routes/          # API endpoints
│   ├── middleware/      # Auth & uploads
│   └── server.js        # Main server
│
├── frontend/            # React app
│   ├── src/
│   │   ├── components/  # Navbar, Footer, etc.
│   │   ├── pages/       # All pages
│   │   ├── context/     # Auth & Cart state
│   │   └── App.js       # Main component
│   └── public/
│
├── README.md            # Overview
├── SETUP.md            # Detailed setup
├── FEATURES.md         # All features
└── DEPLOYMENT.md       # Deploy guide
```

## 💡 Tips

- Use MongoDB Compass to view data
- Check browser console for errors
- Backend logs show in terminal
- Admin panel is at `/admin`
- Change passwords before production!

## 🆘 Need Help?

1. Check SETUP.md for detailed instructions
2. Review error messages carefully
3. Verify MongoDB is running
4. Ensure both servers are running
5. Check .env files are configured

---

**Enjoy building with Ethic! 🎭✨**
