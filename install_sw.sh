#!/bin/bash
sudo -s -- <<EOF
apt-add-repository universe
apt-add-repository ppa:alexx2000/doublecmd -y
apt-add-repository ppa:deadsnakes/ppa -y
apt-add-repository ppa:webupd8team/sublime-text-3 -y
apt-add-repository ppa:hollywood/ppa -y

apt update -y

apt install libgconf2-4 libnss3-1d libxss1 -y
apt install compizconfig-settings-manager -y
apt install compiz-plugins -y
apt install unity-tweak-tool -y
apt install screenfetch -y
apt install doublecmd-gtk -y
apt install python3.6 -y
apt install sublime-text-installer -y
apt install byobu hollywood -y
apt install chromium-browser -y
apt install vlc -y
apt install trash-cli -y

source ./update_system.sh

apt install git-core -y
git config --global user.name "Mirko Jelicic"
git config --global user.email mirkojelicic991@gmail.com

timedatectl set-local-rtc 1

source ./enable_hibernate.sh
EOF
echo "Finished installing!"