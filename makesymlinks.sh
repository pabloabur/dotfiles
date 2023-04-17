#!/bin/bash
# This should be run after pulls from the repository
# Script heavily based (or should) on examples showed in:
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# https://github.com/holman/dotfiles

dir=~/git/dotfiles

# Getting rid of old links
# TODO conditional rm
rm ~/.vim/vimrc
rm ~/.config/nvim/init.lua
rm ~/.config/nvim/lua/configs/remap.lua
rm ~/.config/nvim/lua/configs/packer.lua
rm ~/.config/nvim/lua/configs/set.lua
rm ~/.config/nvim/after/plugin/telescope.lua
rm ~/.config/nvim/after/plugin/treesitter.lua
rm ~/.config/nvim/after/plugin/comment.lua
rm ~/.config/nvim/after/plugin/lsp.lua
rm ~/.config/nvim/after/plugin/vimslime.lua
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
ln -s $dir/nvim/init.lua ~/.config/nvim/init.lua
ln -s $dir/nvim/remap.lua ~/.config/nvim/lua/configs/remap.lua
ln -s $dir/nvim/set.lua ~/.config/nvim/lua/configs/set.lua
ln -s $dir/nvim/packer.lua ~/.config/nvim/lua/configs/packer.lua
ln -s $dir/nvim/telescope.lua ~/.config/nvim/after/plugin/telescope.lua
ln -s $dir/nvim/treesitter.lua ~/.config/nvim/after/plugin/treesitter.lua
ln -s $dir/nvim/comment.lua ~/.config/nvim/after/plugin/comment.lua
ln -s $dir/nvim/lsp.lua ~/.config/nvim/after/plugin/lsp.lua
ln -s $dir/nvim/vimslime.lua ~/.config/nvim/after/plugin/vimslime.lua
echo 'require("configs.remap")' > ~/.config/nvim/lua/configs/init.lua
echo 'require("configs.packer")' >> ~/.config/nvim/lua/configs/init.lua
echo 'require("configs.set")' >> ~/.config/nvim/lua/configs/init.lua
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
