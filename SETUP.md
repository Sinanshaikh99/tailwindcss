# 🎭 Ethic - Setup Guide

Complete setup instructions for the Ethic storytelling clothing brand website.

## 📋 Prerequisites

- Node.js v16 or higher
- MongoDB Compass installed
- npm or yarn package manager
- Git (optional)

## 🚀 Quick Start

### 1. Backend Setup

```bash
# Navigate to backend directory
cd backend

# Install dependencies
npm install

# Create environment file
copy .env.example .env

# Edit .env file with your settings:
# - Set MONGODB_URI to your MongoDB connection string
# - Set a strong JWT_SECRET
# - Keep PORT as 5000 or change if needed

# Start MongoDB (if using local MongoDB)
# Make sure MongoDB Compass is running

# Seed the database with sample data
npm run seed

# Start the backend server
npm run dev
```

The backend will run on `http://localhost:5000`

### 2. Frontend Setup

Open a new terminal window:

```bash
# Navigate to frontend directory
cd frontend

# Install dependencies
npm install

# Create environment file
copy .env.example .env

# Edit .env file:
# REACT_APP_API_URL=http://localhost:5000/api

# Start the development server
npm start
```

The frontend will open automatically at `http://localhost:3000`

## 🔐 Default Login Credentials

After running the seed script, use these credentials:

**Admin Account:**
- Email: `admin@ethic.com`
- Password: `admin123`

**Test User Account:**
- Email: `user@example.com`
- Password: `user123`

⚠️ **Important:** Change these passwords in production!

## 📁 Project Structure

```
ethic-clothing/
├── backend/
│   ├── models/          # MongoDB models
│   ├── routes/          # API routes
│   ├── middleware/      # Auth & upload middleware
│   ├── scripts/         # Seed script
│   ├── uploads/         # Product images
│   └── server.js        # Express server
│
├── frontend/
│   ├── public/          # Static files
│   ├── src/
│   │   ├── components/  # Reusable components
│   │   ├── context/     # Auth & Cart context
│   │   ├── pages/       # Page components
│   │   │   ├── admin/   # Admin dashboard
│   │   │   └── ...      # Other pages
│   │   ├── App.js       # Main app component
│   │   └── index.js     # Entry point
│   └── package.json
│
└── README.md
```

## 🎨 Features Implemented

### Frontend
✅ 6 Storytelling Chapters on Homepage
✅ Parallax Effects & Animations
✅ Shop Page with Filters & Pagination
✅ Product Detail Page with Tabs
✅ Shopping Cart
✅ Checkout Flow
✅ About & Contact Pages
✅ Admin Dashboard
✅ Product Management
✅ Responsive Design
✅ Premium UI/UX

### Backend
✅ RESTful API
✅ JWT Authentication
✅ User & Admin Roles
✅ Product CRUD Operations
✅ Cart Management
✅ Order Processing
✅ File Upload Support
✅ MongoDB Integration

## 🛠 Development Commands

### Backend
```bash
npm start          # Start production server
npm run dev        # Start development server with nodemon
npm run seed       # Seed database with sample data
```

### Frontend
```bash
npm start          # Start development server
npm run build      # Build for production
npm test           # Run tests
```

## 🌐 API Endpoints

### Authentication
- `POST /api/auth/signup` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/me` - Get current user

### Products
- `GET /api/products` - Get all products (with filters)
- `GET /api/products/:id` - Get single product
- `POST /api/products` - Create product (Admin)
- `PUT /api/products/:id` - Update product (Admin)
- `DELETE /api/products/:id` - Delete product (Admin)

### Cart
- `GET /api/cart` - Get user cart
- `POST /api/cart` - Add item to cart
- `PUT /api/cart/item/:itemId` - Update cart item
- `DELETE /api/cart/item/:itemId` - Remove from cart

### Orders
- `POST /api/orders` - Create order
- `GET /api/orders` - Get orders (user's or all for admin)
- `GET /api/orders/:id` - Get single order
- `PUT /api/orders/:id/status` - Update order status (Admin)

### Users
- `GET /api/users` - Get all users (Admin)
- `PUT /api/users/profile` - Update profile
- `POST /api/users/wishlist/:productId` - Add to wishlist
- `DELETE /api/users/wishlist/:productId` - Remove from wishlist

## 🎯 Testing the Application

1. **Homepage**: Visit `http://localhost:3000` to see the 6 storytelling chapters
2. **Shop**: Browse products with filters
3. **Product Detail**: Click any product to see details, tabs, and related products
4. **Authentication**: Sign up or login
5. **Cart**: Add products to cart
6. **Checkout**: Complete an order
7. **Admin**: Login as admin and access `/admin` for dashboard

## 🐛 Troubleshooting

### MongoDB Connection Error
- Ensure MongoDB is running
- Check MONGODB_URI in .env file
- Verify MongoDB Compass is connected

### Port Already in Use
- Change PORT in backend/.env
- Update REACT_APP_API_URL in frontend/.env

### CORS Errors
- Verify backend is running
- Check API URL in frontend .env
- Ensure CORS is enabled in backend

### Images Not Loading
- Check uploads folder exists
- Verify file permissions
- Use placeholder images for testing

## 📦 Production Build

### Backend
```bash
cd backend
npm install --production
npm start
```

### Frontend
```bash
cd frontend
npm run build
# Serve the build folder with a static server
```

## 🔒 Security Notes

- Change default admin credentials
- Use strong JWT_SECRET in production
- Enable HTTPS
- Set proper CORS origins
- Add rate limiting
- Validate all inputs
- Use environment variables for secrets

## 📚 Additional Resources

- [MongoDB Documentation](https://docs.mongodb.com/)
- [Express.js Guide](https://expressjs.com/)
- [React Documentation](https://react.dev/)
- [TailwindCSS Docs](https://tailwindcss.com/)

## 💡 Tips

- Use MongoDB Compass to view database
- Check browser console for frontend errors
- Check terminal for backend errors
- Use Postman to test API endpoints
- Enable React DevTools for debugging

## 🤝 Support

For issues or questions:
1. Check this documentation
2. Review error messages
3. Check MongoDB connection
4. Verify environment variables
5. Ensure all dependencies are installed

---

Happy coding! 🎨✨
