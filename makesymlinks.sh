#!/bin/bash
# This should be run after pulls from the repository
# Script heavily based (or should) on examples showed in:
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# https://github.com/holman/dotfiles

dir=~/git/dotfiles

# Getting rid of old links
# TODO conditional rm
rm ~/.vim/vimrc
rm ~/.config/helix/config.toml
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.config/i3/config
rm ~/.config/zathura/zathurarc
rm ~/.pdbrc

rm ~/.config/ranger/commands.py
rm ~/.config/ranger/commands_full.py
rm ~/.config/ranger/rc.conf
rm ~/.config/ranger/rifle.conf
rm ~/.config/ranger/scope.sh

# Creating symlinks
ln -s $dir/vim/vimrc ~/.vim/vimrc
ln -s $dir/helix/config.toml ~/.config/helix
ln -s $dir/nvim/init.lua ~/.config/nvim/init.lua
ln -s $dir/nvim/filetype.lua ~/.config/nvim/filetype.lua
ln -s $dir/zsh/zshrc ~/.zshrc
ln -s $dir/tmux/tmux.conf ~/.tmux.conf
ln -s $dir/i3/config ~/.config/i3/config
ln -s $dir/zathura/zathurarc ~/.config/zathura/zathurarc
ln -s $dir/python/pdbrc ~/.pdbrc

ln -s $dir/ranger/commands.py ~/.config/ranger/commands.py
ln -s $dir/ranger/commands_full.py ~/.config/ranger/commands_full.py
ln -s $dir/ranger/rc.conf ~/.config/ranger/rc.conf
ln -s $dir/ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -s $dir/ranger/scope.sh ~/.config/ranger/scope.sh
