#!/bin/bash
# ---------------------------------------------------------
# Kali-Termux-Pro script 
# Tired of typing the same 20 commands every time I reset 
# ---------------------------------------------------------

G='\033[0;32m'
R='\033[0;31m'
NC='\033[0m'

echo -e "${G}[+] Starting setup... grabbing coffee...${NC}"

if [ -d "$HOME/kali-arm64" ]; then
    echo -e "${R}[!] Yo, Kali is already here. Just type 'nh' to start.${NC}"
    exit 1
fi

echo -e "${G}[*] Updating pkgs...${NC}"
pkg update -y && pkg upgrade -y

for tool in wget curl git proot tar; do
    if ! command -v $tool &> /dev/null; then
        echo "Installing $tool..."
        pkg install $tool -y
    fi
done

echo -e "${G}[*] Pulling nethunter from gitlab...${NC}"
curl -LO https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-rootless/raw/main/install-nethunter-termux

chmod +x install-nethunter-termux
./install-nethunter-termux

echo ""
echo -e "${G}Done. Use 'nethunter' or 'nh' to dive in.${NC}"
