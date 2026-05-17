#!/data/data/com.termux/files/usr/bin/bash

while true
do
    clear

    echo "================================="
    echo "     🚀 Termux Easy Setup"
    echo "================================="
    echo ""
    echo "1. Small Setup   📦  Size: 1500MB+"
    echo "2. Big Setup     💾  Size: 4072MB+"
    echo ""
    echo "Press CTRL+C to Exit"
    echo "---------------------------------"
    read -p "Choose option (1-2): " choice

    case $choice in
        1)
            echo ""
            echo "📦 Running Small Setup..."
            sleep 1

            curl -sL https://raw.githubusercontent.com/Sochamroun/Termux-EasySetup/main/setup-small.sh | bash

            echo ""
            echo "✅ Small Setup Finished"
            echo "Press Enter to return menu..."
            read
            ;;
            
        2)
            echo ""
            echo "💾 Running Big Setup..."
            sleep 1

            curl -sL https://raw.githubusercontent.com/Sochamroun/Termux-EasySetup/main/setup-big.sh | bash

            echo ""
            echo "✅ Big Setup Finished"
            echo "Press Enter to return menu..."
            read
            ;;
            
        *)
            echo ""
            echo "❌ Invalid option"
            sleep 1
            ;;
    esac
done
