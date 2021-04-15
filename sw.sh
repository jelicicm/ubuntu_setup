#!/bin/bash

#Add PPA's & Repositories
sudo add-apt-repository universe
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y

sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

# Ubuntu tweaks
sudo apt install gnome-tweak-tool -y
sudo apt install software-properties-common -y
sudo apt install linux-headers-generic -y
sudo apt install redshift redshift-gtk -y
sudo apt install neofetch -y
sudo apt install trash-cli -y
sudo apt install unrar -y
sudo apt install curl -y
sudo apt install libtinfo-dev -y

# General Development
sudo apt install dpkg-dev -y
sudo apt install libc6-dev -y
sudo apt install make -y
sudo apt install cmake -y
sudo apt install gcc-9 -y
sudo apt install g++-9 -y
sudo apt install pkg-config -y
sudo apt install python3-pip -y
sudo apt install terminator -y
sudo apt install doublecmd-gtk -y
sudo apt install gparted -y
sudo snap install --classic code

# Apps
sudo apt install chromium-browser -y
sudo apt install qbittorrent -y
sudo apt install vlc -y
pip3 install https://github.com/Diaoul/subliminal/archive/develop.zip
sudo snap install gimp
sudo apt install audacity -y

# Communications
sudo snap install slack --classic
sudo snap install zoom-client
#download Skype for Linux
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb
rm skypeforlinux-64.deb

#Install Windows fonts
sudo apt-get install ttf-mscorefonts-installer -y
sudo fc-cache -y

#Change target links
sudo ln -fs /usr/bin/gcc-9 /usr/bin/gcc
sudo ln -fs /usr/bin/g++-9 /usr/bin/g++
sudo ln -s /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/libtinfo.so.5

timedatectl set-local-rtc 1
