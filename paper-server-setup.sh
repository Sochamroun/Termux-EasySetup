#!/data/data/com.termux/files/usr/bin/bash

clear
echo "===================================="
echo " 📁Minecraft Paper Server Free"
echo " 🌐Termux Auto Setup by Roun"
echo "===================================="

sleep 2

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

if [ "$BUILD" = "null" ]; then
  echo "❌ Version not found!"
  exit
fi

echo "✅ Latest build: $BUILD"

URL="https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$BUILD/downloads/paper-$VERSION-$BUILD.jar"

echo ""
echo "Downloading Paper server..."
wget $URL -O server.jar

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
1) RAM="1G";;
2) RAM="2G";;
3) RAM="3G";;
4) RAM="4G";;
5) RAM="5G";;
6) RAM="6G";;
*) RAM="2G";;
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
./start.sh

echo ""
echo "Accepting EULA..."
sed -i 's/eula=false/eula=true/g' eula.txt

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
echo "📁 Folder: cd ~/$SERVERNAME"
echo ""
echo "▶ Start server:"
echo "bash $SERVERNAME.sh"
