basic:
	sudo apt-get install -y tmux ranger wmctrl mosh git htop
	sudo apt-get install -y gnome-tweaks clipit
	sudo apt-get install -y chrome-gnome-shell
	sudo apt-get install -y vim-gtk
	ssh-keygen -t rsa
	echo "push key up to github then continue"
	ssh -T git@github.com

.PHONY: dotfiles
dotfiles: 
	git clone git@github.com:sjsrey/dotfiles.git ~/opt/dotfiles
	ln -s ~/opt/dotfiles/tmux.conf ~/.tmux.conf

.PHONY: anaconda
anaconda:
	sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 curl
	cd /tmp; curl -O https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh; bash Anaconda3-2020.07-Linux-x86_64.sh

.PHONY: vim
vim:
	sudo apt-get install -y powerline
	pip install powerline-status
	git clone https://github.com/powerline/fonts.git ~/fonts
	sudo ~/fonts/install.sh
	git clone git@github.com:sjsrey/vimfiles.git ~/.vim
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ~/.vim/vimrc ~/.vimrc

.PHONY: emacs
emacs:
	sudo apt install emacs
	git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
	git clone git@github.com:sjsrey/spacemacs.d.git ~/.spacemacs.d
	mkdir ~/packages
	git clone https://github.com/gromnitsky/wordnut.git ~/packages/wordnut
	sudo apt-get install -y wordnet
	git clone https://github.com/pinguim06/pdf-tools-org ~/packages/pdf-tools-org
  git clone git@github.com:EFLS/zetteldeft.git ~/packages/zetteldeft
	git clone --depth 1 --branch release https://github.com/adobe-fonts/source-code-pro.git ~/.fonts/adobe-fonts/source-code-pro
	fc-cache -f -v ~/.fonts/adobe-fonts/source-code-pro
	mkdir ~/.spacemacs.d/layers
	sudo apt install -y nodejs
	sudo apt install -y npm
	sudo npm install -g tern

.PHONY: zsh
zsh:
	sudo apt-get install -y zsh
	echo "run: zsh and then do /home/serge/opt/newbox/zconfig.sh"

.PHONY: org
org:
	/home/serge/opt/newbox/org.sh

.PHONY: qgis
qgis:
	sudo apt-get install gnupg software-properties-common
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51F523511C7028C3
	sudo add-apt-repository "deb     https://qgis.org/ubuntu `lsb_release -c -s` main"
	sudo apt-get update
	sudo apt-get install -y qgis qgis-plugin-grass

.PHONY: latex
latex:
	sudo apt-get install -y texlive-full

.PHONY: i3
i3:
	sudo apt-get install -y i3
	wget https://github.com/erebe/greenclip/releases/download/3.2/greenclip
	rm -rf /home/serge/bin
	mkdir /home/serge/bin
	mv greenclip /home/serge/bin/.
	chmod +x /home/serge/bin/greenclip
	pip install py3status
	sudo apt-get install xautolock
	git clone git@github.com:sjsrey/wallpapers.git ~/.wallpaper
	sudo apt-get install scrot
	mkdir /home/serge/Pictures/Screenshots
	git clone git@github.com:sjsrey/i3status.git ~/.config/i3status
	git clone git@github.com:sjsrey/i3.git ~/.config/i3


.PHONY: wallpaper
wallpaper:
	( crontab -l ; echo "*/5 * * * * DISPLAY=\":0.0\" feh --randomize --bg-fill /home/serge/.wallpaper"  ) |  crontab -

.PHONY: st
st:
	sudo apt-get install libxft-dev libxft2
	git clone git@github.com:sjsrey/st.git ~/opt/st
	cd ~/opt/st; make; sudo make install

.PHONY: docker
docker:
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
	sudo apt update
	apt-cache policy docker-ce
	sudo apt install docker-ce
	sudo systemctl status docker
	sudo usermod -aG docker serge
	echo 'Log out and back in to have docker group added to user.'





