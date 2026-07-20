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

// Generate random username (8 characters)
function randomUsername(length = 12) {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    let username = '';

    for (let i = 0; i < length; i++) {
        username += chars.charAt(Math.floor(Math.random() * chars.length));
    }

    return username;
}

const usedNames = new Set();

function getUniqueUsername() {
    let username;

    do {
        username = randomUsername(8);
    } while (usedNames.has(username));

    usedNames.add(username);
    return username;
}

rl.question('Minecraft Version: ', (version) => {
    rl.question('Server IP: ', (host) => {
        rl.question('Port (25565): ', (portInput) => {
            rl.question('Bot Count (1-100): ', (countInput) => {

                const port = parseInt(portInput) || 25565;
                const count = parseInt(countInput);

                function createBot(username) {
                    console.log(`[+] Connecting ${username}`);

                    const bot = mineflayer.createBot({
                        host: host,
                        port: port,
                        username: username,
                        version: version,
                        auth: 'offline'
                    });

                    bot.on('spawn', () => {
                        console.log(`[✓] ${username} joined`);

                        // Reconnect every 1 hour
                        setTimeout(() => {
                            console.log(`[↻] ${username} reconnecting...`);
                            bot.quit();
                        }, 60 * 60 * 1000);
                    });

                    bot.on('end', () => {
                        console.log(`[-] ${username} disconnected`);

                        setTimeout(() => {
                            createBot(username); // reconnect using the same username
                        }, 5000);
                    });

                    bot.on('error', (err) => {
                        console.log(`[!] ${username}: ${err.message}`);
                    });
                }

                for (let i = 0; i < count; i++) {
                    createBot(getUniqueUsername());
                }

                console.log('\nPress Ctrl+C to stop.\n');
                rl.close();
            });
        });
    });
});

process.on('SIGINT', () => {
    console.log('\nStopping bots...');
    process.exit(0);
});
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
