#!/bin/bash
#Your Command Below!!!
sudo pip install virtualenv
sudo easy_install virtualenvwrapper

mkdir $HOME/.virtualenvs

echo "export WORKON_HOME=\$HOME/.virtualenvs" >> $HOME/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
source $HOME/.bashrc


