basic:
	sudo apt-get install -y tmux ranger wmctrl mosh git htop
	sudo apt-get install -y gnome-tweaks clipit
	sudo apt-get install -y chrome-gnome-shell
	sudo apt-get install -y vim-gtk
	ssh-keygen -t rsa
	# push keys up to github then continue
	echo "push key up to github then continue"
	ssh -T git@github.com

.PHONY: dotfiles
dotfiles: 
	git clone git@github.com:sjsrey/dotfiles.git ~/opt/dotfiles
	ln -s ~/opt/dotfiles/tmux.conf ~/.tmux.conf


.PHONY: anaconda
anaconda:
	sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 curl
	cd /tmp
	curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
	bash Anaconda3-2019.03-Linux-x86_64.sh



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
	sudo apt-get install -y emacs25
	git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
	git clone git@github.com:sjsrey/spacemacs.d.git ~/.spacemacs.d
	mkdir ~/packages
	git clone https://github.com/gromnitsky/wordnut.git ~/packages/wordnut
	sudo apt-get install -y wordnet
	git clone https://github.com/pinguim06/pdf-tools-org ~/packages/pdf-tools-org
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
	sudo apt-get install -y qgis

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



