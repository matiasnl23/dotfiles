#!/bin/bash

CURRENT_DIR=$(pwd)
NVIM_DIR=$HOME/.config/nvim

# Install ZSH and TMUX config
rm $HOME/{.zshrc,.zsh_aliases,.tmux.conf}
ln -s $CURRENT_DIR/zsh/zshrc $HOME/.zshrc
ln -s $CURRENT_DIR/zsh/zsh_aliases $HOME/.zsh_aliases
ln -s $CURRENT_DIR/tmux/tmux.conf $HOME/.tmux.conf

# Install NVIM config
rm -rf $HOME/.config/nvim/
mkdir -p $NVIM_DIR/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git \
    $NVIM_DIR/bundle/Vundle.vim
ln -s $CURRENT_DIR/nvim/*.vim $NVIM_DIR
nvim +PluginInstall +qall
cd $NVIM_DIR/bundle/coc.nvim; git checkout release
