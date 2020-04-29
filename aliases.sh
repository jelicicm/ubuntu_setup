#!/bin/bash

#Add aliases
echo "alias supdate='sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y'" >> ~/.bash_aliases
echo "alias redsh='redshift -l geoclue2 &'" >> ~/.bash_aliases
echo "alias set_py2='sudo ln -fs /usr/bin/python2.7 /usr/bin/python'" >> ~/.bash_aliases
echo "alias set_py3='sudo ln -fs /usr/bin/python3.6 /usr/bin/python'" >> ~/.bash_aliases

source ~/.bash_aliases