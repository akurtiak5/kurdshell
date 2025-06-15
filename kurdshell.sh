
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
sudo apt install vim
cp ~/git/kurdshell/.zshrc $HOME
cp ~/git/kurdshell/.zprofile $HOME
source ~/.zshrc
source ~/.zprofile

#Install Utilities
cd $HOME
sudo apt install liquidctl
#sudo cp ~/git/kurdshell/casectl ~/bin
#sudo chmod 755 ~/bin/casectl

#System Security
sudo ufw enable
sudo ufw allow ssh
# sudo ufw allow 8000/tcp # allows port forwarding (if applicable)
sudo apt install fail2ban -y
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
sudo apt install nginx -y
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx #reverse proxy and certbot

#Misc Info for Running Python Port-forwarded apps
# pip install gunicorn
# gunicorn -k uvicorn.workers.UvicornWorker your_script_name:app --bind 127.0.0.1:8000

#Japanese Keyboard
sudo apt install fcitx-mozc ibus-mozc mozc-data mozc-server mozc-utils-gui
# install if characters not appearing correctly 'sudo apt install fonts-takao'

#Proton VPN
sudo wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.8_all.deb
sudo dpkg -i ./protonvpn-stable-release_1.0.8_all.deb && sudo apt update
sudo apt install proton-vpn-gnome-desktop
sudo apt install libayatana-appindicator3-1 gir1.2-ayatanaappindicator3-0.1 gnome-shell-extension-appindicator

#1passsword
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list
sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
sudo apt update && sudo apt install 1password

#op cli
curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
  sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg && \
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/$(dpkg --print-architecture) stable main" | \
  sudo tee /etc/apt/sources.list.d/1password.list && \
  sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/ && \
  curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | \
  sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol && \
  sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22 && \
  curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
  sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg && \
  sudo apt update && sudo apt install 1password-cli

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
echo "All processes completed, please run 'reboot'"

#MANUAL STEPS
# setup display and monitors
# rename system to Saladin
# set user password
# login to 1password
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

# Permanent Mount
# sudo blkid
# sudo vim /etc/fstab
#EXAMPLE
#/dev/disk/by-uuid/<UUID> /media/hyper auto nosuid,nodev,nofail,x-gvfs-show,uid=1000,gid=1000,umask=002 0 2
#/dev/disk/by-uuid/<UUID> /media/project auto nosuid,nodev,nofail,x-gvfs-show,uid=1000,gid=1000,umask=002 0 2
#/dev/disk/by-uuid/<UUID> /media/SHARE auto nosuid,nodev,nofail,x-gvfs-show,uid=1000,gid=1000,umask=002 0 2


