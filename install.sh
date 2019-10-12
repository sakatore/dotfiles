#!/bin/sh

DOT_FILES=( .vimrc .gitconfig .gitignore_global .tmux.conf .bashrc .bash_profile .zshrc )

for file in ${DOT_FILES[@]}
do
    ln -sfv $HOME/dotfiles/$file $HOME/$file
done
