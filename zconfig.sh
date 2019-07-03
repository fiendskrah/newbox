#!/usr/bin/env zsh



#######
# zsh #
#######

# https://www.chenhuijing.com/blog/bash-to-zsh/

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

rm -f ~/.zpreztorc
rm -f ~/.zshrc
ln -s  ~/dotfiles/zpreztorc ~/.zpreztorc
ln -s  ~/dotfiles/zshrc ~/.zshrc

