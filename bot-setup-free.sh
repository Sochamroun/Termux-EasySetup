#!/data/data/com.termux/files/usr/bin/bash

clear
echo "===================================="
echo " 📁 Bot Join Minecraft Server"
echo " 🌐 Termux Auto Setup Bot by Roun"
echo "===================================="

sleep 2

echo "Install Nodejs"

yes | pkg install nodejs -y

sleep 2

mkdir mcbot && cd mcbot

npm init -y
npm install mineflayer

cat > ~/mcbot/bot.js << 'EOF'
const mineflayer = require('mineflayer');
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function ask(question) {
  return new Promise(resolve => rl.question(question, resolve));
}

let host;
let port;

function createBot() {
  console.log(`🚀 Connecting to ${host}:${port}...`);

  const bot = mineflayer.createBot({
    host,
    port,
    username: 'ZinProMax-BotMc',
    auth: 'offline'
  });

  bot.once('spawn', () => {
    console.log('✅ ZinProMax-BotMc Joined Server!');
  });

  bot.on('error', (err) => {
    console.log(`❌ Error: ${err.message}`);
  });

  bot.on('end', () => {
    console.log('🔄 Disconnected! Reconnecting in 5 seconds...');

    setTimeout(() => {
      createBot();
    }, 5000);
  });

  bot.on('kicked', () => {
    console.log('⚠️ Kicked! Reconnecting in 5 seconds...');
  });
}

async function main() {
  console.log('====================================');
  console.log('   ZinProMax-BotMc Minecraft Bot');
  console.log('====================================');

  host = (await ask('🌐 Server IP: ')).trim();

  const portInput = (await ask('🔌 Server Port [25565]: ')).trim();
  port = portInput === '' ? 25565 : parseInt(portInput, 10);

  rl.close();

  if (!host) {
    console.log('❌ Server IP is required!');
    return;
  }

  if (isNaN(port) || port < 1 || port > 65535) {
    console.log('❌ Invalid port!');
    return;
  }

  createBot();
}

main();
EOF

chmod +x ~/mcbot/bot.js

cd 
cat > ~/bot.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
cd ~/mcbot && node bot.js
EOF

chmod +x bot.sh
clear

echo "Run script Bor join server Minecraft☕ "
echo "./bot.sh"
echo "Or"
echo "bash bot.sh"
echo "Thank You Use my Shell Script"
