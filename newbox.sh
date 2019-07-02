#!/usr/bin/env bash


########################################################################
################################ basics ################################
########################################################################

sudo apt-get install -y tmux ranger wmctrl mosh git htop
sudo apt-get install -y gnome-tweaks clipit
sudo apt-get install -y chrome-gnome-shell
sudo apt-get install -y vim-gtk

ssh-keygen -t rsa
# push keys up to github then continue
ssh -T git@github.com
git clone git@github.com:sjsrey/dotfiles.git


########################################################################
############################### anaconda ###############################
########################################################################

sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 curl
cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
bash Anaconda3-2019.03-Linux-x86_64.sh

# will have to restart a shell to have anaconda path set in environment


########################################################################
################################# vim ##################################
########################################################################

# this assumes pip is from anaconda
sudo apt-get install -y powerline
pip install powerline-status
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


########################################################################
################################ emacs #################################
########################################################################

sudo apt-get install -y emacs25
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone git@github.com:sjsrey/spacemacs.d.git ~/.spacemacs.d

# wordnut
mkdir ~/packages
cd ~/packages
git clone https://github.com/gromnitsky/wordnut.git
sudo apt-get install -y wordnet

# pdf-tools-org
git clone https://github.com/pinguim06/pdf-tools-org

# TODO add a sed call for this fix
# fix for ob-sh error on emacs 26+
# https://emacs.stackexchange.com/questions/43767/after-i-updated-emacs-25-1-to-26-1-org-mode-does-not-work-any-more?rq=1
# Change

# (org-babel-do-load-languages 'org-babel-load-languages '((sh . t) (python . t) (C . t) (ruby . t) (js . t)))

# to

#(org-babel-do-load-languages 'org-babel-load-languages '((shell . t) (python . t) (C . t) (ruby . t) (js . t)))


# source code pro fonts
git clone --depth 1 --branch release https://github.com/adobe-fonts/source-code-pro.git ~/.fonts/adobe-fonts/source-code-pro
fc-cache -f -v ~/.fonts/adobe-fonts/source-code-pro


########################################################################
################################ LaTeX #################################
########################################################################

sudo apt-get install -y texlive-full


########################################################################
################################# QGIS #################################
########################################################################

sudo apt-get install -y qgis


################
# org-protocol #
################
