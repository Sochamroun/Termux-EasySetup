#!/data/data/com.termux/files/usr/bin/bash

clear
echo "===================================="
echo " 📁 Minecraft Paper Server Free"
echo " 🌐 Termux Auto Setup by Roun"
echo "===================================="

sleep 2

echo "Install required packages"

pkg install curl wget jq openjdk-21 -y

echo ""
echo "Enter server folder name:"
read SERVERNAME

mkdir -p ~/$SERVERNAME
cd ~/$SERVERNAME || exit

echo ""
echo "Enter Minecraft version"
echo "Example: 1.20.4 / 1.21.1"
read VERSION

echo ""
echo "Getting latest Paper build..."

BUILD=$(curl -s https://api.papermc.io/v2/projects/paper/versions/$VERSION | jq '.builds[-1]')

if [ "$BUILD" = "null" ] || [ -z "$BUILD" ]; then
echo "❌ Version not found!"
exit
fi

echo "✅ Latest build: $BUILD"

URL="https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$BUILD/downloads/paper-$VERSION-$BUILD.jar"

echo ""
echo "Downloading Paper server..."
wget "$URL" -O server.jar

if [ ! -f server.jar ]; then
echo "❌ Download failed!"
exit
fi

echo ""
echo "Select RAM size"
echo "1) 1GB"
echo "2) 2GB"
echo "3) 3GB"
echo "4) 4GB"
echo "5) 5GB"
echo "6) 6GB"

read RAMCHOICE

case $RAMCHOICE in

1) RAM="1G" ;;
2) RAM="2G" ;;
3) RAM="3G" ;;
4) RAM="4G" ;;
5) RAM="5G" ;;
6) RAM="6G" ;;
   *) RAM="2G" ;;
   esac

echo ""
echo "Creating start.sh..."

cat > start.sh <<EOF
#!/data/data/com.termux/files/usr/bin/bash
java -Xms$RAM -Xmx$RAM -jar server.jar nogui
EOF

chmod +x start.sh

echo ""
echo "Running server first time..."
timeout 60s ./start.sh

echo ""
echo "Accepting EULA..."
if [ -f eula.txt ]; then
sed -i 's/eula=false/eula=true/g' eula.txt
fi

echo ""
echo "Setting online-mode=false..."

if [ -f server.properties ]; then
sed -i 's/^online-mode=.*/online-mode=false/' server.properties

grep -q "^online-mode=" server.properties || \
echo "online-mode=false" >> server.properties

else
cat > server.properties <<EOF
online-mode=false
EOF
fi

echo ""
echo "Setting MOTD..."

echo "Enter MOTD text:"
read MOTD

if [ -f server.properties ]; then
    # កែ MOTD បើមានរួច
    sed -i "s/^motd=.*/motd=$MOTD/" server.properties

    # បើមិនមាន motd ទេ → បន្ថែមថ្មី
    grep -q "^motd=" server.properties || echo "motd=$MOTD" >> server.properties
else
    echo "motd=$MOTD" > server.properties
fi

echo "✅ MOTD set: $MOTD"
echo "✅ online-mode=false applied"

echo ""
echo "Creating plugins folder..."
mkdir -p plugins

echo ""
echo "Creating shortcut script..."

cat > ~/$SERVERNAME.sh <<EOF
#!/data/data/com.termux/files/usr/bin/bash
cd ~/$SERVERNAME || exit
./start.sh
EOF

chmod +x ~/$SERVERNAME.sh

echo ""
echo "===================================="
echo " ✅ Server Installed Successfully"
echo "===================================="

echo ""
echo "📁 Folder:"
echo "cd ~/$SERVERNAME"

echo ""
echo "▶ Start server:"
echo "bash ~/$SERVERNAME.sh"

echo ""
echo "🔓 Crack Server Enabled"
echo "online-mode=false"
