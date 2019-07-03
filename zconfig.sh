#!/usr/bin/env zsh



#######
# zsh #
#######

# https://www.chenhuijing.com/blog/bash-to-zsh/

git clone --recursive git@github.com:sjsrey/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

# fuzzy finder
# https://github.com/junegunn/fzf

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc
