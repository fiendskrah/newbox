#!/usr/bin/env bash

# get the basics
sudo apt-get install -y tmux ranger wmctrl
sudo apt install -y git
sudo apt-get install -y gnome-tweaks
sudo apt-get install -y chrome-gnome-shell
sudo apt-get install -y vim-gtk

ssh-keygen -t rsa
# push keys up to github then continue
ssh -T git@github.com
git clone git@github.com:sjsrey/dotfiles.git


# vim 
sudo apt-get install -y powerline
git clone https://github.com/powerline/fonts.git
cd fonts/
sudo ./install.sh
git clone git@github.com:sjsrey/vimfiles.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s ~/.vim/vimrc ~/.vimrc

# next three have to be done manually
# vim
# :PluginInstall
# :q


# Anaconda
sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 curl
cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
bash Anaconda3-2019.03-Linux-x86_64.sh
