#!/bin/bash

read=$1
work=0
home=0

if [ "$#" -ne 1 ]
then
    echo "There needs to be a parameter 'work' or 'home'"
    exit 1
else
    if [ "$read" = "work" ]
    then
        work=1
    elif [ "$read" = "home" ]
    then
        home=1
    else
        echo "Parameter must be 'work' or 'home'"
        exit 1
    fi
fi

#Install Key's
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
wget -nv https://download.opensuse.org/repositories/home:Alexx2000/xUbuntu_18.04/Release.key -O Release.key && sudo apt-key add - < Release.key

#Add PPA's & Repositories
sudo add-apt-repository universe
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Alexx2000/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:Alexx2000.list"
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
ss

if [ "$work" != 1 ]
then
    sudo add-apt-repository ppa:videolan/stable-daily -y
    sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
else
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -linux -y
    sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib" -y
fi


sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

sudo apt install gnome-tweak-tool -y
sudo apt install software-properties-common -y
sudo apt install linux-headers-generic -y
sudo apt install dpkg-dev -y
sudo apt install libc6-dev -y
sudo apt install make -y
sudo apt install gcc-9 -y
sudo apt install g++-9 -y
sudo apt install python3-pip -y

sudo apt install terminator -y
sudo apt install doublecmd-gtk -y
sudo apt install git -y
sudo apt install chromium-browser -y
sudo apt install sublime-text -y
sudo apt install clipit -y
sudo apt install redshift redshift-gtk -y
sudo apt install trash-cli -y
sudo apt install bleachbit -y
sudo apt install screenfetch -y
sudo apt install neofetch -y
sudo apt install unrar -y

#Install Windows fonts
sudo apt-get install ttf-mscorefonts-installer -y
sudo fc-cache -y

#home variant applications
if [ "$home" = 1 ]
then
    sudo apt install vlc -y
    pip3 install https://github.com/Diaoul/subliminal/archive/develop.zip
    sudo apt install qbittorrent -y
    sudo apt install gimp -y
    sudo apt install pkg-config -y
fi

if [ "$work" = 1 ]
then
    #download Skype for Linux
    wget https://go.skype.com/skypeforlinux-64.deb
    sudo apt install ./skypeforlinux-64.deb
    rm skypeforlinux-64.deb

    sudo apt install thunderbird -y
    sudo apt install pkg-config -y
    sudo apt install cmake -y
    sudo apt install gparted -y
    sudo apt install virtualbox-6.0 -y
    sudo apt install remmina -y

    #download libreoffice
    wget http://download.documentfoundation.org/libreoffice/stable/6.3.2/deb/x86_64/LibreOffice_6.3.2_Linux_x86-64_deb.tar.gz
    tar xzf LibreOffice_6.3.2_Linux_x86-64_deb.tar.gz
    sudo dpkg -i LibreOffice_6.3.2.2_Linux_x86-64_deb/DEBS/*.deb
    rm LibreOffice_6.3.2* -rf
fi


#configure Git
git config --global user.name "Mirko Jelicic"
if [ "$work" = 1 ]
then
    git config --global user.email "mirko.jelicic@rt-rk.com"
else
    git config --global user.email "mirkojelicic991@gmail.com"
fi

#Change target links
sudo ln -fs /usr/bin/gcc-9 /usr/bin/gcc
sudo ln -fs /usr/bin/g++-9 /usr/bin/g++

timedatectl set-local-rtc 1

#Perform Git Pull of useful scripts
cd ~/Documents/ && git clone https://github.com/jelicicm/ubuntu_setup.git && cd -

#cleanup
rm -rf Release.key


