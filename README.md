# Setting up a new debian or ubuntu box 

## Steps

  1. `mkdir ~/opt`
  1. Download  from https://github.com/sjsrey/newbox 
  1. `mv ~/Downloads/newbox-master.zip ~/opt/`
  1. `cd ~/opt;unzip newbox-master.zip; mv newbox-master newbox`
  1. `cd newbox`
  1. `make basic`
  1.  Add ~/.ssh/id_rsa.pub to github keys 
  1. `make dotfiles; make anaconda`
  1.  restart a terminal to have anaconda paths set
  1. `make vim`
  2. `vim;:PluginInstall:q`
  2. `make emacs` 
  2. `make zsh`
  2. `zsh;/home/serge/opt/newbox/zconfig.sh`
  2. `make org;  make latex; make i3; make wallpaper; make st`
  # in the next two commands, specifiy either debian or ubuntu
  1. `make docker-[debian|ubuntu]; make qgis-[debian|ubuntu]`
  2. `sudo shutdown -r now`
  3. Profit

