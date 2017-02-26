git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#cp ./vimrc ~/.vim/vimrc
ln ~/.vim/vimrc ~/.vimrc 
ln ~/.vim/.cshrc.wenyan ~/.cshrc.wenyan 
ln ~/.vim/.bashrc.wenyan ~/.bashrc.wenyan 
vim +PluginInstall +qall
