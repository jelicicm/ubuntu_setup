#!/bin/bash
sudo -s -- <<EOF
apt-add-repository universe
apt-add-repository ppa:alexx2000/doublecmd -y
apt-add-repository ppa:deadsnakes/ppa -y
apt-add-repository ppa:webupd8team/sublime-text-3 -y
apt-add-repository ppa:hollywood/ppa -y
apt-add-repository ppa:nathan-renniewaldock/flux -y
add-apt-repository ppa:ubuntu-toolchain-r/test -y

apt update -y

apt install libgconf2-4 libnss3-1d libxss1 -y
apt install compizconfig-settings-manager -y
apt install compiz-plugins -y
apt install unity-tweak-tool -y
apt install screenfetch -y
apt install doublecmd-gtk -y
apt install python3.6 -y
apt install python-pip -y
apt install sublime-text-installer -y
apt install byobu hollywood -y
apt install chromium-browser -y
apt install vlc -y
apt install trash-cli -y
apt install libimage-exiftool-perl -y
apt install qbittorrent -y
apt install fluxgui -y
apt install build-essential software-properties-common -y
apt install gcc-snapshot -y
apt install gcc-7 g++-7 -y
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7
apt install git-core -y

source ./update_system.sh

git config --global user.name "Mirko Jelicic"
git config --global user.email mirkojelicic991@gmail.com

timedatectl set-local-rtc 1

source ./enable_hibernate.sh
EOF
echo "Finished installing!"
