#!/bin/bash
# This should be run after pulls from the repository
# Script heavily based (or should) on examples showed in:
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# https://github.com/holman/dotfiles

dir=~/git/dotfiles

# Getting rid of old links
# TODO conditional rm
rm ~/.vimrc
rm ~/.zshrc

# Creating symlinks
ln -s $dir/vim/vimrc ~/.vimrc
ln -s $dir/system/zshrc ~/.zshrc
