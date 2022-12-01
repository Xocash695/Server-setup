apt install sudo
apt install zsh
chsh -s /usr/bin/zsh
apt install firmware-linux-nonfree
apt-add-repository non-free
apt install nvidia-detect
apt-get update
apt-get upgrade --with-new-pkgs
apt install ufw 
ufw enable 
sudo apt-get install rkhunter
rkhunter -c
apt-get install unattended-upgrades apt-listchanges
systemctl enable unattended-upgrades
systemctl start unattended-upgrades
ufw allow 9090
. /etc/os-release
echo "deb http://deb.debian.org/debian ${VERSION_CODENAME}-backports main" > \
    /etc/apt/sources.list.d/backports.list
apt update
apt install -t ${VERSION_CODENAME}-backports cockpit
systemctl enable cockpit.socket
apt-get install openssh-server
systemctl enable ssh
systemctl start ssh
apt install git 
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
apt autoremove
apt autoclean 



