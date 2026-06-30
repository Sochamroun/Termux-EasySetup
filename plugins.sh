#!/data/data/com.termux/files/usr/bin/bash

pkg install curl jq wget -y >/dev/null 2>&1

echo "=============================="
echo " Paper Plugin Installer"
echo "=============================="
echo

read -p "Enter Server Folder: " SERVER

PLUGIN_DIR="$HOME/$SERVER/plugins"

mkdir -p "$PLUGIN_DIR"
cd "$PLUGIN_DIR" || exit

download_modrinth() {
    PROJECT="$1"

    echo ""
    echo "Downloading $PROJECT (Paper only)..."

    URL=$(curl -s \
    "https://api.modrinth.com/v2/project/$PROJECT/version" \
    | jq -r '
        .[]
        | select(.loaders[]? == "paper" or .loaders[]? == "bukkit" or .loaders[]? == "spigot")
        | .files[0].url
      ' | head -n 1)

    if [ -z "$URL" ] || [ "$URL" = "null" ]; then
        echo "❌ No Paper-compatible version found!"
        return
    fi

    wget -q --show-progress "$URL"

    echo "✅ Done!"
}

install_all() {
    echo ""
    echo "🚀 Installing ALL Paper Plugins..."

    download_modrinth skinsrestorer
    download_modrinth chunky
    download_modrinth essentialsx
    download_modrinth essentialsx-chat
    download_modrinth essentialsx-spawn
    download_modrinth pl3xmap
    download_modrinth luckperms
    download_modrinth viaversion
    download_modrinth viabackwards
    download_modrinth geyser
    download_modrinth floodgate
    download_modrinth spark
    download_modrinth coreprotect
    download_modrinth vault

    echo ""
    echo "✅ All plugins installed!"
}

while true
do

echo
echo "====== Paper Plugin Menu ======"
echo "0) Plugin install all "
echo "1) SkinsRestorer"
echo "2) Chunky"
echo "3) EssentialsX"
echo "4) EssentialsX Chat"
echo "5) EssentialsX Spawn"
echo "6) Pl3xMap"
echo "7) LuckPerms"
echo "8) ViaVersion"
echo "9) ViaBackwards"
echo "10) Geyser"
echo "11) Floodgate"
echo "12) Spark"
echo "13) CoreProtect"
echo "14) Vault"
echo "100) exit"
echo

read -p "Choose: " CHOICE

case $CHOICE in

1) download_modrinth skinsrestorer ;;
2) download_modrinth chunky ;;
3) download_modrinth essentialsx ;;
4) download_modrinth essentialsx-chat ;;
5) download_modrinth essentialsx-spawn ;;
6) download_modrinth pl3xmap ;;
7) download_modrinth luckperms ;;
8) download_modrinth viaversion ;;
9) download_modrinth viabackwards ;;
10) download_modrinth geyser ;;
11) download_modrinth floodgate ;;
12) download_modrinth spark ;;
13) download_modrinth coreprotect ;;
14) download_modrinth vault ;;
0) install_all ;;
100) exit ;;
*) echo "Invalid Choice!" ;;

esac

done

