# kali-termux-pro

Simple automation script to get Kali NetHunter (rootless) running in Termux without the headache. 

I made this because I got tired of manually setting up PRoot every time I switched ROMs or reset my phone.

Note: I'm still working on this and learning as I go, so there might be bugs. Let me know if you encounter any issues on your device while running this.

### What it actually does:
* Updates Termux repos (standard stuff)
* Grabs dependencies like `proot`, `wget`, and `curl`
* Fetches the latest NetHunter install script and sets permissions
* Runs the installer for you

### How to use it:

# Install git first
pkg install git -y

# Clone and run
git clone https://github.com/Niranj-coder/kali-termux-pro
cd kali-termux-pro
chmod +x install.sh
./install.sh




