# 👋 Hello, welcome / សួស្តី សូមស្វាគមន៍
## Termux tool Command Line 
![Banner](https://raw.githubusercontent.com/Sochamroun/Termux-setup.github.io/main/Icon.png)
# ✨ Termux Easy Setup and Easy Use / ងាយស្រួលដំឡើង និងងាយស្រួលប្រើប្រាស់

### Temrux Command Line For Android 

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
## Quick Navigation / ការរុករករហ័ស

## Installation Script 
[![📦 Installation](https://img.shields.io/badge/📦-Installation-blue?style=for-the-badge)](https://github.com/Sochamroun/Termux-EasySetup#installation)

## Minecraft Paper Server 
[![🎲 Minecraft-Paper](https://img.shields.io/badge/🎲-Minecraft_Paper-yellow?style=for-the-badge)](https://github.com/Sochamroun/Termux-EasySetup#minecraft-paper-server-install-)

## Termux X11 Desktop 
[![✅ Termux x11](https://img.shields.io/badge/🤫-Termux_X11-red?style=for-the-badge)](https://github.com/Sochamroun/Termux-EasySetup/blob/main/README.md#%EF%B8%8F-big-installation--%E1%9E%80%E1%9E%B6%E1%9E%9A%E1%9E%8A%E1%9F%86%E1%9E%A1%E1%9E%BE%E1%9E%84%E1%9E%92%E1%9F%86-requires-termuxx11)

## Termux Coder for Android 
[![🍗 Coder](https://img.shields.io/badge/😇-Coder-blue?style=for-the-badge)](https://github.com/Sochamroun/Termux-EasySetup#coder--%E1%9E%A2%E1%9F%92%E1%9E%93%E1%9E%80%E1%9E%9F%E1%9E%9A%E1%9E%9F%E1%9F%81%E1%9E%9A%E1%9E%80%E1%9E%BC%E1%9E%8A)

---
## 📱 The program must be installed / កម្មវិធីត្រូវតែត្រូវបានដំឡើង
## 🔗 Install Termux App and Termux x11
[![🤨 Termux](https://img.shields.io/badge/😎-Termux_Official-green?style=for-the-badge)](https://github.com/termux/termux-app/releases)

[![✅ Termux](https://img.shields.io/badge/🥱-Termux_Copy-blue?style=for-the-badge)](https://github.com/Sochamroun/Termux-EasySetup/releases/tag/App)
## 🔗 Install Material Files
[![Material Files](https://img.shields.io/badge/📁-Material_Files-blue?style=for-the-badge)](https://play.google.com/store/apps/details?id=me.zhanghai.android.files)

## ✨ Features / មុខងារ

- 📦 Install required packages
  - ដំឡើង Package ចាំបាច់

- ⚡ Fast installation
  - ដំណើរការលឿន

- 🔄 Automatic update
  - Update Package ដោយស្វ័យប្រវត្តិ

- 🛠 Beginner Friendly
  - ងាយស្រួលសម្រាប់អ្នកទើបចាប់ផ្តើម

---
## 📋 Requirements / តម្រូវការ

- Android 8+
- Latest Termux
- Internet Connection
  
---
## Installation
* បើកកម្មវិធី Termux រួចចម្លង Command ខាងក្រោមទៅ Run ៖

---
## ⚙️ Installation and Update / ការដំឡើង និងការអាប់ដេត
## Allow Storage Access / អនុញ្ញាតឲ្យចូលប្រើប្រាស់កន្លែងផ្ទុក
```bash
termux-setup-storage
```
## ⚡ Small installation / ការដំឡើងតូច 
```bash
curl -sL https://github.com/Sochamroun/Termux-EasySetup/raw/refs/heads/main/setup-small.sh | bash
```
* 🎬 Download video
* 🎧 Download music
* 🌐 Open FTP localhost
* 😎 Package សំខាន់ៗ (python nodejs wget git....)
* Install Size 1500Mb+
---
## 🖥️ Big installation / ការដំឡើងធំ (Requires Termux:X11)
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

![Banner](https://github.com/Sochamroun/Termux-EasySetup/blob/dc83feb31cd9819bf425915577ad875d4b2f1300/linux.jpg)
## 🎞️ Edit Video Quality / កែសម្រួលគុណភាពវីដេអូ
```bash
nano video.sh
````
-`yt-dlp \
        -f "bestvideo[height<=720][ext=mp4][fps<=60]+bestaudio[ext=m4a]/mp4" \
        --merge-output-format mp4 \
        -S "vcodec:h264,lang,quality,res,fps,hdr:12,acodec:aac" \
        -o "$DOWNLOAD_FOLDER/%(title)s.%(ext)s" \`
## Video Quality / គុណភាពវីដេអូ
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

## Coder / អ្នកសរសេរកូដ
## AstroNvim [Official Webpage](https://docs.astronvim.com/)
* Setup AstroNvim For Termux Users 
## 📦 Install Package / ដំឡើងកញ្ចប់
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
## Live preview Webpage build / ការមើលជាមុនផ្ទាល់នៃការបង្កើតគេហទំព័រ
- Use Python to Host 'index.html'
```bash
python -m http.server 5000
```
* Webpage Ip Localhost 📦
```bash
127.0.0.1:5000
```
* Or ip Local Lan Network 🌐 Wifi
- `192.168.x.x:5000`
## Net Analyzer App
[Download](https://play.google.com/store/apps/details?id=net.techet.netanalyzerlite.an)
![Banner](https://github.com/Sochamroun/Termux-EasySetup/blob/68f619c05ccdbd63b3ba155125e8cdf83bf4b03e/View.png)

---

## Minecraft Paper Server Install ☕
* Install For Termux App In Android Device 🤨
## Install Java JDK 17 and 21
## OpenJDK 17 ☕
```bash
yes | pkg install openjdk-17
```
## OpenJDK 21
```bash
yes | pkg install openjdk-21
```
---
## Downloaded Script Shell Install Server 🧾
```bash
curl -sLO https://raw.githubusercontent.com/Sochamroun/Termux-EasySetup/refs/heads/main/paper-server-setup.sh && chmod +x paper-server-setup.sh
```
## How To Run script shell ⭐
```bash
paper-server-setup.sh
```
## Bot Join Server Setup 🥱
* Download script shell setup
```bash
curl -sLO https://raw.githubusercontent.com/Sochamroun/Termux-EasySetup/refs/heads/main/bot-setup-free.sh && chmod +x bot-setup-free.sh
```

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
### Thanks for Using Termux Easy Setup

[![Facebook](https://img.shields.io/badge/📍-Facebook-blue?style=for-the-badge)](https://www.facebook.com/share/18q25LzNnc/)
[![telegram](https://img.shields.io/badge/🌐-Telegram-blue?style=for-the-badge)](https://t.me/Sochamroun123)

---
<div align="center">
    <p><b> Prepared by Sochamroun </b></p>
    <p><b>If this project helps you, please give it a Stars ⭐</b></p>
    <p><b>*Last updated: 2026*</b></p>
</div>


