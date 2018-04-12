#!/bin/bash
echo "Updating..."
sudo -s -- <<EOF
apt update
apt upgrade -y
apt dist-upgrade -y
apt autoremove -y
apt autoclean -y
EOF
echo "Finished update!"