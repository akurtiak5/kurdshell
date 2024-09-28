
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
# Generate id_rsa (or equivilent identify file)
# Install latest drivers

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
sudo apt install liquidctl
sudo cp ~/git/kurdshell/casectl ~/bin
sudo chmod 755 ~/bin/casectl

#Japanese Keyboard

#Install Apps
#Proton VPN
#Spotify
#VSCode - need the extensions too
#Steam
#Discord

#Firefox Setup

#Startup Tasks
#vpn
#casectl
#mount SHARED drive

#MANUAL STEPS
# configure proton VPN
# rename system to Saladin
# set user password
# firefox login and personal configuration
# add LB profile to firefox
# git ssh keys
