# សួស្តី 🤗 សូមស្វាគមន៍មកកាន់ 
## Termux tool Command Line 
![Banner](https://raw.githubusercontent.com/Sochamroun/Termux-setup.github.io/main/Icon.png)
# ✨ Termux Easy Setup and Easy Use

### Free Tools for Android & Termux Users

![Platform](https://img.shields.io/badge/Platform-Android-green)
![Shell](https://img.shields.io/badge/Shell-Termux-blue)
![License](https://img.shields.io/badge/License-Free-orange)
![Version](https://img.shields.io/badge/Version-1.0-brightgreen)
![Maintained](https://img.shields.io/badge/Maintained-Yes-success)
![Termux](https://img.shields.io/badge/Supports-Termux-black)

![YouTube](https://img.shields.io/badge/YouTube-red?logo=youtube&logoColor=white)
![Facebook](https://img.shields.io/badge/Facebook-1877F2?logo=facebook&logoColor=white)
![TikTok](https://img.shields.io/badge/TikTok-black?logo=tiktok&logoColor=white)
![Stars](https://img.shields.io/github/stars/Sochamroun/Termux-EasySetup)

---
## 📱 The program must be installed (កម្មវិធីត្រូវដំឡើង)
## 🔗 Install Termux App and Termux x11
[👉 Download App apk](https://github.com/Sochamroun/Termux-EasySetup/releases/tag/App)
## 🔗 Install Material Files
[💼 Play Store Material Files](https://play.google.com/store/apps/details?id=me.zhanghai.android.files)

---
## ✨ Features
* 📦 Update & Install: Automatically installs essential packages (Python, Git, NodeJS,Yt-dlp etc.).
* 🐚 Fish Shell: Sets up Fish shell with auto-suggestions for easier coding.
* 🎬 Video Downloader: Download 720p videos from YouTube and other social media platforms.
* 🎵 Audio Downloader: Automatically convert videos to MP3 (256k quality).
* 📡 FTP Server: Create an FTP server for transferring files between phone and computer.
## ✨ លក្ខណៈពិសេស
* 📦 Update & Install៖ ដំឡើង Package សំខាន់ៗដោយស្វ័យប្រវត្តិ (Python, Git, NodeJS ជាដើម)។
* 🐚 Fish Shell៖ កំណត់ Fish shell ដែលមាន auto-suggestion ងាយស្រួលសម្រាប់វាយកូដ។
* 🎬 Video Downloader៖ ទាញយកវីដេអូកម្រិត 720p ពី YouTube និងបណ្ដាញសង្គមផ្សេងៗ។
* 🎵 Audio Downloader៖ បំប្លែងវីដេអូទៅជា MP3 (256k) ដោយស្វ័យប្រវត្តិ។
* 📡 FTP Server៖ បង្កើត FTP Server សម្រាប់ផ្ទេរ File រវាងទូរស័ព្ទ

---
## 📥 របៀបដំឡើង (Installation) និង Update Vision package 
* បើកកម្មវិធី Termux រួចចម្លង Command ខាងក្រោមទៅ Run ៖

---
## ⚙️ Installation 
## Allow Storage Access
```bash
termux-setup-storage
```
## ⚡ Small Setup 😀
```bash
curl -sL https://github.com/Sochamroun/Termux-EasySetup/raw/refs/heads/main/setup-small.sh | bash
```
* 🎬 Download video
* 🎧 Download music
* 🌐 Open FTP localhost
* 😎 Package សំខាន់ៗ (python nodejs wget git....)
* Install Size 1500Mb+
---
## 🖥️ Big Setup (Requires Termux:X11)
```bash
curl -sL https://github.com/Sochamroun/Termux-EasySetup/raw/refs/heads/main/setup-big.sh | bash
```
* 🎬 Download video
* 🎧 Download music
* 🌐 Open FTP localhost
* 🤔 Package សំខាន់ៗ (firefox chromium mpv-x xfce4....)
* 🖥️ Desktop Ui
* Install Linux System size 4072Mb+

---
## 📦 Commands to use (command សម្រាប់ប្រើប្រាស់)
- `video.sh` → Download videos 🎬  
- `song.sh` → Download audio 🎵  
- `ftp.sh` → Start FTP server 📡  
- `win.sh` → Start XFCE desktop 🖥️
- `ai.sh`  → Ai localhost

---
![Banner](https://github.com/Sochamroun/Termux-EasySetup/blob/dc83feb31cd9819bf425915577ad875d4b2f1300/linux.jpg)
## 🎞️ Edit Video Quality
```bash
nano video.sh
````
-`yt-dlp \
        -f "bestvideo[height<=720][ext=mp4][fps<=60]+bestaudio[ext=m4a]/mp4" \
        --merge-output-format mp4 \
        -S "vcodec:h264,lang,quality,res,fps,hdr:12,acodec:aac" \
        -o "$DOWNLOAD_FOLDER/%(title)s.%(ext)s" \`
## Video Quality
* (height<=720) Change (ប្ដូរ)
* 144
* 240
* 360
* 480
* 720 (HD)
* 1080 (Full HD)
* 1440 (2K / QHD)
* 2160 (4K / UHD)
---

# Coder (អ្នកសរសេរកូដ)
## AstroNvim [Official Webpage](https://docs.astronvim.com/)
* Setup AstroNvim For Termux Users 
## Install 📦 Package
```bash
pkg install neovim nodejs-lts ripgrep -y
```
## Git Clone AstroNvim Linux 
```bash
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```
## How to use command 
- `nvim` filename Ex: .sh .js .py .html .css other
- `mkdir` foldername Command Create Folder
- `cd` Foldername Command Open Folder
- `ls` command show all folder
- `rm` filename delete file
- `rmdir` foldername delete folder 
![Banner](https://github.com/Sochamroun/Termux-EasySetup/blob/7724afce2bd07f015cdeccfe754fb1f1c1a78e2a/Coder.jpg)
---
## I Recommended Setup Use Wifi 😎
---
## bugs in termux [Process completed (signal 9)]
- `crashes on Android 12+ due to FLAG_IMMUTABLE, storage permission issues on newer Android versions, and "Process completed (signal 9)" due to battery optimization killing background processes.`
## To fix install 
[Install ADB shell](https://play.google.com/store/apps/details?id=com.bat.adb)
- `1.Tap Start via Wireless Debugging`
- `2.Go to:`
- `3.Settings → Developer Options`
   - `Enable:Wireless debugging`
- `4.Pair device (enter code shown)`
## Open adb shell app
- `cick to Terminal Open ADB Shell`
## Run This Command
```bash
settings put global settings_enable_monitor_phantom_procs false
```
### ✅ Now Termux can run smoothly on Android 12+
---
## ❤️ Thank You
## ⭐ Support This Project
* If you enjoy this project, consider sharing it with friends 💖
## Facebook Profile  
[❤️ link Profile 👾](https://www.facebook.com/share/18MeFbhuB3/)
### Thanks for Using Termux Easy Setup
---
<div align="center">
    <p><b> Prepared by Sochamroun </b></p>
    <p><b>If this project helps you, please give it a Stars ⭐</b></p>
</div>
---

*Last updated: 2026*
