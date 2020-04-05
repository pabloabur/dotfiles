#!/bin/sh

# Script used to be used only once for basic machine setup
# This was not tested and certainly needs a lot of improvements

# Programs installation
sudo pacman -S wget
sudo pacman -S git
sudo pacman -S neovim
sudo pacman -S zsh zsh-completions
sudo pacman -S tmux, terminator
sudo pacman -S i3-gaps, lightdm-gtk-greeter, xorg-server, xorg-xbacklight, dmenu
sudo pacman -S fzf
sudo pacman -S libreoffice
sudo pacman -S xrandr
sudo pacman -S tk
sudo pacman -S nm-connection-editor

# Programs from AUR
yay -S termite

# Installations with git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
