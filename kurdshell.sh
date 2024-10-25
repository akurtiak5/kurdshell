
#this will install all needed software on ubuntu!
#only run this on a freshly installed system

# assuming you have already cloned kurdshell to you git directory...
# you will also need to install git with command: sudo apt install git

# Update kurdshell
sudo apt update; sudo apt upgrade
sudo apt install git
cd ~/git/kurdshell; sudo git pull

# Configure git
sudo git config --global user.name "akurtiak"
sudo git config --global user.email "ack555@duck.com"

# Linux Setup
sudo timedatectl set-local-rtc 1   #set time and date controls to not conflict with windows
sudo ssh-keygen -o # Generate id_rsa (or equivilent identify file)
sudo ubuntu-drivers install # Install latest drivers

#Setup zsh
mkdir -p $HOME/bin
sudo apt install zsh
sudo chsh -s $(which zsh)
sudo sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo cp ~/git/kurdshell/kurdshell.zsh-theme ~/.oh-my-zsh/themes
sudo cd ~/.oh-my-zsh/plugins
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git
sudo git clone https://github.com/zsh-users/zsh-history-substring-search.git
sudo git clone https://github.com/agkozak/zsh-z.git
sudo git clone https://github.com/supercrabtree/k
sudo cp ~/git/kurdshell/.zshrc $HOME
sudo cp ~/git/kurdshell/.zprofile $HOME
sudo source ~/.zshrc
sudo source ~/.zprofile

#Install Utilities
cd $HOME
sudo apt install liquidctl
sudo cp ~/git/kurdshell/casectl ~/bin
sudo chmod 755 ~/bin/casectl

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
    # DDG Safe
# git ssh keys
#Startup Tasks
    #vpn "protonvpn-app"
    #casectl "$HOME/bin/casectl"
    #mount SHARED drive ""
