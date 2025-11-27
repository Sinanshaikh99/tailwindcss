const fs = require('fs');
const path = require('path');

console.log('🔍 Verifying Ethic Project Installation...\n');

const requiredFiles = {
  'Backend Files': [
    'backend/server.js',
    'backend/package.json',
    'backend/.env.example',
    'backend/models/User.js',
    'backend/models/Product.js',
    'backend/models/Order.js',
    'backend/models/Cart.js',
    'backend/routes/auth.js',
    'backend/routes/products.js',
    'backend/routes/cart.js',
    'backend/routes/orders.js',
    'backend/routes/users.js',
    'backend/middleware/auth.js',
    'backend/middleware/upload.js',
    'backend/scripts/seed.js'
  ],
  'Frontend Files': [
    'frontend/package.json',
    'frontend/src/App.js',
    'frontend/src/index.js',
    'frontend/src/index.css',
    'frontend/src/components/Navbar.jsx',
    'frontend/src/components/Footer.jsx',
    'frontend/src/components/ProductCard.jsx',
    'frontend/src/context/AuthContext.js',
    'frontend/src/context/CartContext.js',
    'frontend/src/pages/Home.jsx',
    'frontend/src/pages/Shop.jsx',
    'frontend/src/pages/ProductDetail.jsx',
    'frontend/src/pages/Cart.jsx',
    'frontend/src/pages/Checkout.jsx',
    'frontend/src/pages/About.jsx',
    'frontend/src/pages/Contact.jsx',
    'frontend/src/pages/Login.jsx',
    'frontend/src/pages/admin/AdminDashboard.jsx',
    'frontend/src/pages/admin/ProductManagement.jsx',
    'frontend/tailwind.config.js',
    'frontend/postcss.config.js'
  ],
  'Documentation': [
    'README.md',
    'QUICK_START.md',
    'SETUP.md',
    'FEATURES.md',
    'DEPLOYMENT.md',
    'PROJECT_SUMMARY.md'
  ]
};

let allFilesExist = true;
let totalFiles = 0;
let existingFiles = 0;

for (const [category, files] of Object.entries(requiredFiles)) {
  console.log(`\n📁 ${category}:`);
  
  for (const file of files) {
    totalFiles++;
    const exists = fs.existsSync(path.join(__dirname, file));
    
    if (exists) {
      console.log(`  ✅ ${file}`);
      existingFiles++;
    } else {
      console.log(`  ❌ ${file} - MISSING`);
      allFilesExist = false;
    }
  }
}

console.log('\n' + '='.repeat(60));
console.log(`\n📊 Installation Summary:`);
console.log(`   Total Files: ${totalFiles}`);
console.log(`   Existing: ${existingFiles}`);
console.log(`   Missing: ${totalFiles - existingFiles}`);
console.log(`   Completion: ${Math.round((existingFiles / totalFiles) * 100)}%`);

if (allFilesExist) {
  console.log('\n✨ SUCCESS! All files are present.');
  console.log('\n🚀 Next Steps:');
  console.log('   1. cd backend && npm install');
  console.log('   2. Setup .env file in backend/');
  console.log('   3. npm run seed (in backend)');
  console.log('   4. npm run dev (in backend)');
  console.log('   5. cd frontend && npm install');
  console.log('   6. Setup .env file in frontend/');
  console.log('   7. npm start (in frontend)');
  console.log('\n📖 Read QUICK_START.md for detailed instructions.');
} else {
  console.log('\n⚠️  WARNING: Some files are missing!');
  console.log('   Please ensure all files are created correctly.');
}

console.log('\n' + '='.repeat(60) + '\n');
