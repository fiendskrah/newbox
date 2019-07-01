#!/usr/bin/env bash

# get the basics
sudo apt-get install tmux ranger wmctrl
ssh-keygen -t rsa
sudo apt install git
sudo apt-get install gnome-tweaks
sudo apt-get install chrome-gnome-shell
sudo apt-get install vim-gtk

# push keys up to github then continue
ssh -T git@github.com
git clone git@github.com:sjsrey/dotfiles.git


# vim 
sudo apt-get install powerline
git clone https://github.com/powerline/fonts.git
cd fonts/
sudo ./install.sh
git clone git@github.com:sjsrey/vimfiles.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s ~/.vim/vimrc ~/.vimrc

# vim
# :PluginInstall
# :q

