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

// 100 Bot Names
const botNames = [
'AlexNova','SteveCraft','MinerKing','BuilderPro','PixelFox',
'ShadowWolf','DarkNinja','BlueDragon','IronGolem','RedPanda',
'EnderGhost','StormRider','FireBlade','IceHunter','SkyWalker',
'NightFury','LavaKnight','StoneMiner','GoldenPick','DiamondBoy',
'EmeraldKid','NetherHero','VoidWalker','BlockMaster','CraftLegend',
'TreeCutter','OceanKing','MountainFox','CloudRunner','RiverWolf',
'SilentArrow','CrazySteve','HappyMiner','FastBuilder','WildTiger',
'SnowLeopard','JungleCat','ThunderBolt','ElectricFox','MagicSword',
'CrystalSoul','PixelStorm','LuckyBlock','ZombieSlayer','SkeletonKing',
'CreeperRun','SpiderHunter','GhastRider','BlazeMaster','WitherSoul',
'DragonHeart','MoonLight','SunStrike','StarGazer','GalaxyFox',
'CosmicWolf','NovaHunter','TitanCraft','PhantomSky','FrostByte',
'InfernoKing','CyberKnight','QuantumBot','NeonShadow','AlphaWolf',
'BetaMiner','GammaCraft','OmegaHero','TurboSteve','RapidFox',
'SwiftArrow','EpicBuilder','RoyalKnight','MysticMage','ShadowStrike',
'FrozenSoul','SolarFlame','LunarWolf','VenomBlade','SteelHeart',
'RubyHunter','SapphireFox','TopazKnight','ObsidianMan','QuartzHero',
'CopperKing','SilverArrow','GoldenWolf','DiamondSoul','EmeraldStar',
'CrimsonFire','AzureSky','IvoryGhost','OnyxHunter','ScarletFox',
'RoyalDragon','EchoRunner','StormShadow','PixelKnight','VoidMaster'
];

rl.question('Minecraft Version (Enter = Auto): ', (versionInput) => {

    rl.question('Server IP: ', (host) => {

        rl.question('Port (25565): ', (portInput) => {

            rl.question('Bot Count (10-100): ', (countInput) => {

                const version = versionInput.trim() === '' ? false : versionInput.trim();
                const port = portInput.trim() === '' ? 25565 : parseInt(portInput);

                let count = parseInt(countInput);

                if (isNaN(count) || count < 10) count = 10;
                if (count > 100) count = 100;

                console.log(`\nStarting ${count} bots...\n`);

                for (let i = 0; i < count; i++) {

                    setTimeout(() => {

                        const bot = mineflayer.createBot({
                            host: host,
                            port: port,
                            username: botNames[i],
                            version: version
                        });

                        bot.on('login', () => {
                            console.log(`[+] ${bot.username} Joined`);
                        });

                        bot.on('spawn', () => {
                            console.log(`[✓] ${bot.username} Spawned`);
                        });

                        bot.on('end', () => {
                            console.log(`[-] ${bot.username} Disconnected`);
                        });

                        bot.on('kicked', (reason) => {
                            console.log(`[Kick] ${bot.username}: ${reason}`);
                        });

                        bot.on('error', (err) => {
                            console.log(`[Error] ${bot.username}: ${err.message}`);
                        });

                    }, i * 1000);

                }

                rl.close();

            });

        });

    });

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
