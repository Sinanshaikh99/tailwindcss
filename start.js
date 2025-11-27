const { spawn } = require('child_process');
const path = require('path');

console.log('========================================');
console.log('  🎭 ETHIC CLOTHING BRAND - STARTUP');
console.log('========================================\n');

console.log('⚠️  IMPORTANT: Make sure MongoDB Compass is running!\n');

// Start backend
console.log('🔧 Starting Backend Server...\n');
const backend = spawn('npm', ['run', 'dev'], {
  cwd: path.join(__dirname, 'backend'),
  shell: true,
  stdio: 'inherit'
});

backend.on('error', (err) => {
  console.error('❌ Backend Error:', err);
});

// Wait 5 seconds then start frontend
setTimeout(() => {
  console.log('\n🎨 Starting Frontend Server...\n');
  const frontend = spawn('npm', ['start'], {
    cwd: path.join(__dirname, 'frontend'),
    shell: true,
    stdio: 'inherit'
  });

  frontend.on('error', (err) => {
    console.error('❌ Frontend Error:', err);
  });
}, 5000);

console.log('\n========================================');
console.log('📡 Backend: http://localhost:5000');
console.log('🌐 Frontend: http://localhost:3000');
console.log('========================================\n');
console.log('🔐 Login Credentials:');
console.log('   Email: admin@ethic.com');
console.log('   Password: admin123\n');
console.log('Press Ctrl+C to stop all servers\n');
