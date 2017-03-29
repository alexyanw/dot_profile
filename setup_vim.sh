git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#cp ./vimrc ~/.vim/vimrc
ln -s ~/.vim/vimrc ~/.vimrc 
ln -s ~/.vim/.cshrc.wenyan ~/.cshrc.wenyan 
ln -s ~/.vim/.bashrc.wenyan ~/.bashrc.wenyan 
ln -s ~/.vim/tmux.conf ~/.tmux.conf
vim +PluginInstall +qall
