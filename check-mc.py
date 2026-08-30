from mcstatus import JavaServer
import socket

server_address = input("Enter Minecraft Server IP: ").strip()

if not server_address:
    print("Error: Please enter a Server IP!")
    exit()

# Default Minecraft port
port = 25565

# Allow IP:PORT or DOMAIN:PORT
if ":" in server_address:
    host, port_text = server_address.rsplit(":", 1)
    try:
        port = int(port_text)
    except ValueError:
        print("Invalid port!")
        exit()
else:
    host = server_address

try:
    print(f"\nResolving {host}...")

    # Resolve Domain -> IP
    ip = socket.gethostbyname(host)

    print(f"Resolved IP: {ip}")
    print(f"Port: {port}")
    print("\nChecking server...")

    # Connect using IP directly
    server = JavaServer(ip, port)
    status = server.status()

    print("\n========== SERVER ONLINE ==========")
    print(f"Server Address : {server_address}")
    print(f"Resolved IP    : {ip}")
    print(f"Players Online : {status.players.online}/{status.players.max}")
    print(f"Version        : {status.version.name}")
    print(f"Ping           : {round(status.latency)} ms")
    print("===================================")

    if status.players.sample:
        print("\nOnline Players:")
        for player in status.players.sample:
            print(f" - {player.name}")
    else:
        print("\nPlayer names are hidden or unavailable.")

except socket.gaierror as e:
    print("\nDNS ERROR!")
    print(f"Cannot resolve domain: {host}")
    print(f"Error: {e}")

except Exception as e:
    print("\n========== CHECK FAILED ==========")
    print(f"Server Address : {server_address}")
    print(f"Error: {e}")
    print("==================================")
    EOF

# paper server install
curl -sLO https://raw.githubusercontent.com/Sochamroun/Termux-EasySetup/refs/heads/main/paper-server-setup.sh && chmod +x paper-server-setup.sh
## bot 
curl -sLO https://raw.githubusercontent.com/Sochamroun/Termux-EasySetup/refs/heads/main/bot-setup-free.sh && chmod +x bot-setup-free.sh
## hi
echo ""
echo "✅ Setup Complete!"
echo "--------------------------------"
echo "Commands (use this to run script files)"
echo "video.sh   → Download videos 🎬"
echo "song.sh    → Download audio 🎵"
echo "ftp.sh     → Start FTP server 📡"
echo "mv.sh      → Download video and song one time"
echo "ai.sh      → Ai Run Local"
echo "paper-server-setup.sh → PaperMc Server Install"
echo "bot-setup-free.sh → Install Bot Mc use Node JavaScript"
