
#this will install all needed software on ubuntu!
#only run this on a freshly installed system

# assuming you have already cloned kurdshell to you git directory...
# you will also need to install git with command: sudo apt install git

# Update kurdshell
sudo apt update; sudo apt upgrade
sudo apt install git
cd ~/git/kurdshell; git pull

# Configure git
git config --global user.name "akurtiak"
git config --global user.email "ack555@duck.com"

# Linux Setup
sudo timedatectl set-local-rtc 1   #set time and date controls to not conflict with windows
ssh-keygen -o # Generate id_rsa (or equivilent identify file)
sudo ubuntu-drivers install # Install latest drivers

#Setup zsh
mkdir -p $HOME/bin
cd $HOME
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp ~/git/kurdshell/kurdshell.zsh-theme ~/.oh-my-zsh/themes
cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git
git clone https://github.com/agkozak/zsh-z.git
git clone https://github.com/supercrabtree/k
sudo apt install python3-pip
sudo apt install python3-virtualenv
sudo apt install python3-virtualenvwrapper
cp ~/git/kurdshell/.zshrc $HOME
cp ~/git/kurdshell/.zprofile $HOME
source ~/.zshrc
source ~/.zprofile

#Install Utilities
cd $HOME
sudo apt install liquidctl
#sudo cp ~/git/kurdshell/casectl ~/bin
#sudo chmod 755 ~/bin/casectl

#Japanese Keyboard
sudo apt install fcitx-mozc ibus-mozc mozc-data mozc-server mozc-utils-gui
# install if characters not appearing correctly 'sudo apt install fonts-takao'

#Proton VPN
sudo wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.4_all.deb
sudo dpkg -i ./protonvpn-stable-release_1.0.4_all.deb && sudo apt update
sudo apt install proton-vpn-gnome-desktop
sudo apt install libayatana-appindicator3-1 gir1.2-ayatanaappindicator3-0.1 gnome-shell-extension-appindicator

#Install Apps
#Spotify
sudo snap install spotify
#VSCode - need the extensions too
sudo snap install code
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension github.vscode-pull-request-github
code --install-extension mhutchie.git-graph
code --install-extension mohsen1.prettify-json
code --install-extension ms-vscode-remote.remote-ssh
#Steam
sudo snap install steam
#Discord
sudo snap install discord
#Telegram
sudo snap install telegram-desktop


# Reboot when completed
echo "All processes completed, please run 'sudo reboot'"

#MANUAL STEPS
# setup display and monitors
# rename system to Saladin
# set user password
# Install official 1password client
    # Also add in op cli
# login and configure proton vpn
# Firefox
    # Login
    # LB Profile
    # UB Profile
    # DDG Safe
# git ssh keys
#Startup Tasks
    # protonvpn-app
    # (zsh -c "source ~/.zshrc && casectl")

# Mount SHARED Drive
# sudo mkdir -p /media/SHARED

# One time mount
# sudo mount /dev/sdb4 /media/SHARED

# Permanent Mount
# sudo blkid
# sudo vim /etc/fstab
# UUID=B396-6EB7 /media/SHARED vfat defaults 0 2

