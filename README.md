# Setting up a new debian or ubuntu box 

This assumes you have already done an install on the machine and have a user account with user name `serge`


## Steps


  1. `mkdir ~/opt`
  1. Download  from https://github.com/sjsrey/newbox 
  1. `mv ~/Downloads/newbox-master.zip ~/opt/`
  1. `cd ~/opt;unzip newbox-master.zip; mv newbox-master newbox`
  1. `cd newbox`

There are two flavors supported: Debian and Ubuntu.


### Debian

1. `make debian_1`
1. `make debian_2`
1. `make debian_3`
1. `make debian_4`
1. `sudo shutdown -r`




### Ubuntu

  1. `make basic`
  1. `make dotfiles; make anaconda`
  1.  restart a terminal to have anaconda paths set
  1. `make vim`
  2. `vim;:PluginInstall:q`
  2. `make emacs` 
  3. `make zsh`
  2. `zsh;/home/serge/opt/newbox/zconfig.sh`
  2. `make org;  make latex; make i3; make wallpaper; make st`
  1. `make docker-ubuntu; make qgis-ubuntu`
  2. `sudo shutdown -r now`
  3. Profit

