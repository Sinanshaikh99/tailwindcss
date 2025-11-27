# Deployment Guide

## Prerequisites
- MongoDB Atlas account (or local MongoDB)
- Vercel account (for frontend)
- Render/Heroku account (for backend)

## Backend Deployment (Render/Heroku)

### Using Render

1. **Create a new Web Service on Render**
   - Connect your GitHub repository
   - Root Directory: `backend`
   - Build Command: `npm install`
   - Start Command: `npm start`

2. **Environment Variables**
   ```
   PORT=5000
   MONGODB_URI=your_mongodb_atlas_connection_string
   JWT_SECRET=your_super_secret_jwt_key_change_in_production
   NODE_ENV=production
   ```

3. **MongoDB Atlas Setup**
   - Create a cluster on MongoDB Atlas
   - Whitelist all IPs (0.0.0.0/0) or Render's IPs
   - Get connection string and add to MONGODB_URI

### Using Heroku

1. **Install Heroku CLI and login**
   ```bash
   heroku login
   ```

2. **Create Heroku app**
   ```bash
   cd backend
   heroku create your-app-name
   ```

3. **Set environment variables**
   ```bash
   heroku config:set MONGODB_URI=your_mongodb_atlas_connection_string
   heroku config:set JWT_SECRET=your_super_secret_jwt_key
   heroku config:set NODE_ENV=production
   ```

4. **Deploy**
   ```bash
   git push heroku main
   ```

## Frontend Deployment (Vercel)

1. **Install Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Deploy from frontend directory**
   ```bash
   cd frontend
   vercel
   ```

3. **Set Environment Variables in Vercel Dashboard**
   - Go to your project settings
   - Add environment variable:
     ```
     REACT_APP_API_URL=https://your-backend-url.com/api
     ```

4. **Redeploy**
   ```bash
   vercel --prod
   ```

## Alternative: Vercel for Both

You can deploy both frontend and backend on Vercel:

1. **Backend as Serverless Functions**
   - Convert Express routes to Vercel serverless functions
   - Create `api/` directory in root
   - Move backend logic to serverless functions

2. **Frontend**
   - Deploy React app normally

## Post-Deployment

1. **Seed Database**
   ```bash
   # SSH into your backend server or run locally with production DB
   npm run seed
   ```

2. **Test the Application**
   - Visit your frontend URL
   - Test login with admin credentials
   - Create test orders
   - Verify all features work

3. **Update CORS Settings**
   In `backend/server.js`, update CORS to allow your frontend domain:
   ```javascript
   app.use(cors({
     origin: 'https://your-frontend-domain.vercel.app',
     credentials: true
   }));
   ```

## Security Checklist

- [ ] Change default admin password
- [ ] Use strong JWT_SECRET
- [ ] Enable HTTPS only
- [ ] Set proper CORS origins
- [ ] Add rate limiting
- [ ] Enable MongoDB authentication
- [ ] Use environment variables for all secrets
- [ ] Add input validation
- [ ] Implement CSP headers

## Monitoring

- Set up error tracking (Sentry)
- Monitor API performance
- Set up uptime monitoring
- Enable MongoDB Atlas monitoring
- Check logs regularly

## Backup

- Enable MongoDB Atlas automated backups
- Export important data regularly
- Keep environment variables documented securely
