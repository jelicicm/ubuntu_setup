#!/bin/bash

sudo apt install git -y

#configure Git
git config --global user.name "Mirko Jelicic"
git config --global user.email "mirkojelicic991@gmail.com"

#Perform Git Pull of useful scripts
cd ~/Documents/ && git clone https://github.com/jelicicm/ubuntu_setup.git && cd ~/Documents/ubuntu_setup
