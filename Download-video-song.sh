#!/data/data/com.termux/files/usr/bin/bash

echo "Starting Termux Setup install software..."
# Server 
termux-change-repo
# update 
yes | pkg update && yes | pkg upgrade

# Install packages
yes | pkg install python ffmpeg git curl wget unzip fish nodejs nano -y

# Install pip tools
pip install --upgrade pip
pip install yt-dlp

# Fix fish config folder (important)
mkdir -p ~/.config/fish

# Set fish shell (safe)
chsh -s fish || echo "⚠️ Cannot change shell (ignore if error)"

# Fix PATH
grep -qxF 'set -U fish_user_paths $fish_user_paths $HOME' ~/.config/fish/config.fish || \
echo 'set -U fish_user_paths $fish_user_paths $HOME' >> ~/.config/fish/config.fish

# ---------------- VIDEO SCRIPT ----------------
cat > ~/video-quality.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

DOWNLOAD_FOLDER="/storage/emulated/0/Movies"
mkdir -p "$DOWNLOAD_FOLDER"

echo "🎬 Multi Video Downloader (CTRL+C to exit)"
echo ""

echo "=============================="
echo " Select Video Quality"
echo "=============================="
echo "1. 144p"
echo "2. 240p"
echo "3. 360p"
echo "4. 480p"
echo "5. 720p"
echo "6. 1080p"
echo "7. 1440p"
echo "8. 2160p (4K)"
echo "9. 4320p (8K)"
echo "=============================="

read -p "Choose quality (1-9): " choice

case $choice in
    1) QUALITY=144 ;;
    2) QUALITY=240 ;;
    3) QUALITY=360 ;;
    4) QUALITY=480 ;;
    5) QUALITY=720 ;;
    6) QUALITY=1080 ;;
    7) QUALITY=1440 ;;
    8) QUALITY=2160 ;;
    9) QUALITY=4320 ;;
    *)
        echo "❌ Invalid choice"
        exit
        ;;
esac

echo ""
echo "✅ Selected ${QUALITY}p"
echo ""

while true; do
    read -p "Enter video URL: " url

    if [[ -z "$url" ]]; then
        echo "⚠️ No URL entered"
        continue
    fi

    echo ""
    echo "⬇️ Downloading ${QUALITY}p ..."
    echo "🔗 $url"

    yt-dlp \
        -f "bestvideo[height<=${QUALITY}][ext=mp4][fps<=60]+bestaudio[ext=m4a]/best[height<=${QUALITY}]" \
        --merge-output-format mp4 \
        -S "vcodec:h264,lang,quality,res,fps,hdr:12,acodec:aac" \
        -o "$DOWNLOAD_FOLDER/%(title)s.%(ext)s" \
        "$url" &

    echo "✅ Download started!"
    echo ""
done
EOF

chmod +x ~/video-quality.sh

# ---------------- AUDIO SCRIPT ----------------
cat > ~/song.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

DOWNLOAD_FOLDER="/storage/emulated/0/Music"
mkdir -p "$DOWNLOAD_FOLDER"

echo "🎵 Multi Audio Downloader (CTRL+C to exit)"

while true; do
    read -p "Enter video URL: " url

    if [[ -z "$url" ]]; then
        echo "⚠️ No URL entered"
        continue
    fi

    echo "⬇️ Downloading audio..."

    yt-dlp -x \
        --audio-format mp3 \
        --audio-quality 256k \
        --embed-thumbnail \
        --add-metadata \
        -o "$DOWNLOAD_FOLDER/%(title)s.%(ext)s" "$url" &

    echo "🎧 Started!"
done
EOF

chmod +x ~/song.sh

## hi
echo ""
echo "✅ Setup Complete!"
echo "--------------------------------"
echo "Commands (use this to run script files)"
echo "video.sh   → Download videos 🎬"
echo "song.sh    → Download audio 🎵"

