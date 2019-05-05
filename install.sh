#!/bin/sh

# Script used to be used only once for basic machine setup
# This was not tested and certainly needs a lot of improvements

# Programs installation
sudo pacman -S wget
sudo pacman -S git
sudo pacman -S neovim
sudo pacman -S zsh
sudo pacman -S zsh-completions
sudo pacman -S tmux

# Installations with git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
