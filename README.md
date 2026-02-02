# kali-termux-pro

Simple automation script to get Kali NetHunter (rootless) running in Termux without the headache. 

I made this because I got tired of manually setting up PRoot every time I switched ROMs or reset my phone. 

### What it actually does:
* Updates Termux repos (standard stuff)
* Grabs dependencies like `proot`, `wget`, and `curl`
* Fetches the latest NetHunter install script and sets permissions
* Runs the installer for you

### How to use it:
```bash
git clone [https://github.com/YOUR_USERNAME/kali-termux-pro](https://github.com/YOUR_USERNAME/kali-termux-pro)
cd kali-termux-pro
chmod +x install.sh
./install.sh

