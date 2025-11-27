# 🎭 Ethic - Premium Storytelling Clothing Brand

> *"Where tradition whispers… and craftsmanship breathes."*

A fully responsive, production-ready e-commerce website inspired by ByShree, featuring emotional storytelling, premium design, and complete shopping functionality.

![Status](https://img.shields.io/badge/status-production--ready-success)
![React](https://img.shields.io/badge/React-18-blue)
![Node](https://img.shields.io/badge/Node.js-Express-green)
![MongoDB](https://img.shields.io/badge/Database-MongoDB-brightgreen)

---

## ✨ What Makes This Special

This isn't just another e-commerce template. It's a **storytelling experience** where:
- Every scroll reveals a new chapter
- Every product carries a poetic narrative
- Every interaction feels premium and intentional
- Every detail honors craftsmanship and heritage

**Built for:** Clothing brands, artisan products, luxury goods, handcrafted items, ethical fashion

---

## 🎯 Key Features

### 🏠 Homepage - 6 Storytelling Chapters
1. **Hero** - Full-screen with soft fade-in animations
2. **The Craft** - Parallax storytelling section
3. **The Collection** - Featured products showcase
4. **The Story of You** - Lifestyle gallery with poetic lines
5. **Our Promise** - Ethical values (Handmade, Responsible, Fair, Zero-waste)
6. **Join Our Circle** - Newsletter signup with warm invitation

### 🛍️ E-commerce Features
- Product catalog with **filters & search**
- Product detail pages with **image gallery & tabs**
- **Shopping cart** with quantity management
- **Checkout flow** with order form
- **User authentication** (Login/Signup)
- **Order tracking**

### 👨‍💼 Admin Dashboard
- Statistics overview (Products, Orders, Users, Revenue)
- **Product management** (Create, Read, Update, Delete)
- Order management with status updates
- User management
- Protected admin routes

### 🎨 Design Excellence
- **Premium color palette**: Beige, Ivory, Gold, Charcoal
- **Typography**: Playfair Display (serif) + Inter (sans-serif)
- **Smooth animations**: Framer Motion
- **Parallax effects** on scroll
- **Fully responsive** (Mobile, Tablet, Desktop)
- **Loading states** and error handling

---

## 🛠️ Tech Stack

### Frontend
```
React 18 • React Router v6 • TailwindCSS • Framer Motion
Axios • React Icons • Context API • React Intersection Observer
```

### Backend
```
Node.js • Express.js • MongoDB • Mongoose
JWT Authentication • bcryptjs • Multer • CORS
```

### Database Collections
- **Users** (with roles, wishlist, addresses)
- **Products** (with stories, images, variants, stock)
- **Orders** (with tracking, status, shipping info)
- **Cart** (per user, with items)

---

## 🚀 Quick Start (5 Minutes)

### 1️⃣ Backend Setup
```bash
cd backend
npm install
copy .env.example .env
# Edit .env with your MongoDB URI
npm run seed
npm run dev
```
✅ Backend running at `http://localhost:5000`

### 2️⃣ Frontend Setup
```bash
cd frontend
npm install
copy .env.example .env
# Edit .env: REACT_APP_API_URL=http://localhost:5000/api
npm start
```
✅ Frontend opens at `http://localhost:3000`

### 3️⃣ Login & Explore
**Admin:** `admin@ethic.com` / `admin123`  
**User:** `user@example.com` / `user123`

---

## 📁 Project Structure

```
ethic-clothing/
├── backend/              # Node.js + Express API
│   ├── models/          # MongoDB schemas (User, Product, Order, Cart)
│   ├── routes/          # API endpoints (auth, products, cart, orders)
│   ├── middleware/      # Auth & file upload
│   ├── scripts/         # Database seeding
│   └── server.js        # Express server
│
├── frontend/            # React Application
│   ├── src/
│   │   ├── components/  # Navbar, Footer, ProductCard
│   │   ├── context/     # Auth & Cart state management
│   │   ├── pages/       # All pages (Home, Shop, Product, Cart, etc.)
│   │   │   └── admin/   # Admin Dashboard & Product Management
│   │   └── App.js       # Main app with routing
│   └── public/
│
└── 📚 Documentation/
    ├── README.md            # This file
    ├── QUICK_START.md       # 5-minute setup guide
    ├── SETUP.md            # Detailed installation
    ├── FEATURES.md         # Complete features list (100+)
    ├── DEPLOYMENT.md       # Production deployment
    └── PROJECT_SUMMARY.md  # Comprehensive overview
```

---

## 📱 Pages & Routes

| Page | Route | Description |
|------|-------|-------------|
| **Home** | `/` | 6 storytelling chapters with parallax |
| **Shop** | `/shop` | Product catalog with filters & search |
| **Product** | `/product/:id` | Details, gallery, tabs, related products |
| **Cart** | `/cart` | Shopping cart (protected) |
| **Checkout** | `/checkout` | Order form (protected) |
| **About** | `/about` | Brand story timeline |
| **Contact** | `/contact` | Contact form & info |
| **Login** | `/login` | Authentication |
| **Admin** | `/admin` | Dashboard (admin only) |
| **Products** | `/admin/products` | Product management (admin only) |

---

## 🔐 API Endpoints

### Authentication
- `POST /api/auth/signup` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/me` - Get current user

### Products
- `GET /api/products` - List products (with filters, search, pagination)
- `GET /api/products/:id` - Get single product
- `POST /api/products` - Create product (Admin)
- `PUT /api/products/:id` - Update product (Admin)
- `DELETE /api/products/:id` - Delete product (Admin)

### Cart
- `GET /api/cart` - Get user cart
- `POST /api/cart` - Add item to cart
- `PUT /api/cart/item/:id` - Update quantity
- `DELETE /api/cart/item/:id` - Remove item

### Orders
- `POST /api/orders` - Create order
- `GET /api/orders` - List orders (user's or all for admin)
- `GET /api/orders/:id` - Get single order
- `PUT /api/orders/:id/status` - Update status (Admin)

### Users
- `GET /api/users` - List users (Admin)
- `PUT /api/users/profile` - Update profile
- `POST /api/users/wishlist/:id` - Add to wishlist
- `DELETE /api/users/wishlist/:id` - Remove from wishlist

---

## 🎨 Design System

### Color Palette
```css
Primary:     #FFFFF0 (Ivory)
Accent Gold: #D4AF37
Charcoal:    #36454F
Beige:       #F5F5DC to #C0B698
```

### Typography
- **Headings**: Playfair Display (serif) - Elegant, royal
- **Body**: Inter (sans-serif) - Clean, readable

### Animations
- Fade-in, Slide-up, Float effects
- Parallax scrolling
- Hover transformations
- Smooth transitions (300-500ms)

---

## 📦 Environment Variables

### Backend `.env`
```env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/ethic-clothing
JWT_SECRET=your_super_secret_jwt_key_change_in_production
NODE_ENV=development
```

### Frontend `.env`
```env
REACT_APP_API_URL=http://localhost:5000/api
```

---

## 🌐 Deployment

### Frontend (Vercel)
```bash
cd frontend
vercel
# Set REACT_APP_API_URL in Vercel dashboard
```

### Backend (Render/Heroku)
```bash
cd backend
# Deploy via Render dashboard or Heroku CLI
# Set environment variables in platform
```

### Database (MongoDB Atlas)
- Create cluster on MongoDB Atlas
- Get connection string
- Update MONGODB_URI in backend

📖 **Detailed guide:** See [DEPLOYMENT.md](DEPLOYMENT.md)

---

## 📚 Documentation

| File | Purpose |
|------|---------|
| [QUICK_START.md](QUICK_START.md) | Get running in 5 minutes |
| [SETUP.md](SETUP.md) | Detailed installation guide |
| [FEATURES.md](FEATURES.md) | Complete features list (100+) |
| [DEPLOYMENT.md](DEPLOYMENT.md) | Production deployment guide |
| [PROJECT_SUMMARY.md](PROJECT_SUMMARY.md) | Comprehensive overview |

---

## ✅ What You Get

- ✅ **40+ files** of production-ready code
- ✅ **100+ features** implemented
- ✅ **10+ pages** with premium design
- ✅ **20+ API endpoints** fully functional
- ✅ **Complete authentication** system
- ✅ **Admin dashboard** for management
- ✅ **Responsive design** for all devices
- ✅ **Smooth animations** throughout
- ✅ **Comprehensive documentation**
- ✅ **Ready to deploy**

---

## 🎯 Perfect For

- 👗 Clothing & Fashion Brands
- 🧵 Handcrafted Products
- 💎 Luxury Goods
- 🌿 Ethical & Sustainable Brands
- 🎨 Artisan Marketplaces
- 📿 Heritage Products

---

## 🔒 Security Features

- JWT authentication with secure tokens
- Password hashing with bcrypt
- Role-based access control (User/Admin)
- Protected routes on frontend & backend
- Input validation
- CORS configuration
- Environment variables for secrets

---

## 🐛 Troubleshooting

**MongoDB connection error?**  
→ Ensure MongoDB Compass is running

**Port already in use?**  
→ Change PORT in backend/.env

**CORS errors?**  
→ Verify backend is running and API URL is correct

**Images not loading?**  
→ Check uploads folder exists and has permissions

📖 **More help:** See [SETUP.md](SETUP.md)

---

## 📈 Project Stats

- **Lines of Code**: 5000+
- **Components**: 15+
- **Pages**: 10+
- **API Routes**: 20+
- **Setup Time**: 5 minutes
- **Production Ready**: ✅

---

## 🎉 Ready to Launch?

1. ✅ **Install** - Follow QUICK_START.md
2. 🎨 **Customize** - Add your products & content
3. 📸 **Add Images** - Replace placeholders
4. 🚀 **Deploy** - Follow DEPLOYMENT.md
5. 🌟 **Launch** - Share with the world!

---

## 📄 License

MIT License - Feel free to use for personal or commercial projects

---

## 🙏 Acknowledgments

Inspired by the beautiful storytelling approach of ByShree and premium clothing brands that honor craftsmanship.

---

<div align="center">

**Built with ❤️ for storytelling and craftsmanship**

*"Every thread carries a story. Every fabric remembers the loom."*

⭐ **Star this project if you found it helpful!**

</div>
#   w e b s i t e  
 