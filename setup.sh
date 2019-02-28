#!/usr/bin/env bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
SCRIPTDIR=$( dirname "${BASH_SOURCE[0]}" )
ln -s $SCRIPTDIR/.cshrc.wenyan ~/.cshrc.wenyan 
ln -s $SCRIPTDIR/.bashrc.wenyan ~/.bashrc.wenyan 
ln -s $SCRIPTDIR/.inputrc ~/.inputrc 
ln -s $SCRIPTDIR/tmux.conf ~/.tmux.conf
ln -s $SCRIPTDIR/.gitconfig ~/.gitconfig 
ln -s $SCRIPTDIR/vimrc ~/.vimrc 
vim +PluginInstall +qall
