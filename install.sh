#!/data/data/com.termux/files/usr/bin/bash

while true; do
    clear
    echo "=============================="
    echo "     Termux Easy Setup"
    echo "=============================="
    echo "1. termux-setup-storage"
    echo "2. Setup Small"
    echo "3. Setup Big"
    echo "4. Download Paper Server Setup"
	echo "5. Download vanilla Server setup"
	echo "6. Download purpur server setup"
    echo "10. Bot Join Setup Minecraft Free"
    echo
    echo "Press Ctrl+C to exit."
    echo "=============================="

    read -p "Choose (1-5): " choice

    case "$choice" in
        1)
            termux-setup-storage
            ;;
        2)
            curl -sL https://github.com/Sochamroun/Termux-EasySetup/raw/refs/heads/main/setup-small.sh | bash
            ;;
        3)
            curl -sL https://github.com/Sochamroun/Termux-EasySetup/raw/refs/heads/main/setup-big.sh | bash
            ;;
        4)
            curl -sLO https://raw.githubusercontent.com/Sochamroun/Termux-EasySetup/refs/heads/main/paper-server-setup.sh
            chmod +x paper-server-setup.sh
            echo "paper scrpit"
            ;;
        5)
           curl -sLO https://github.com/Sochamroun/Termux-EasySetup/raw/refs/heads/main/vanilla-server.sh 
		   chmod +x vanilla-server.sh
		   echo "vanilla scrpit"
            ;;
		6)
		   curl -sLO https://github.com/Sochamroun/Termux-EasySetup/raw/refs/heads/main/purpur-server.sh 
		   chmod +x purpur-server.sh
		   echo "purpur scrpit" 
		    ;;
		10) 
		   curl -sLO https://raw.githubusercontent.com/Sochamroun/Termux-EasySetup/refs/heads/main/bot-setup-free.sh 
		   chmod +x bot-setup-free.sh
		   echo "Bot scrpit Join server MInecaft"
		   ;;
        *)
            echo "Invalid choice! Please choose 1-5."
            ;;
    esac

    echo
    read -p "Press Enter to return to the menu..."
done
