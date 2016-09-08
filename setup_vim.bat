:: set solarized dark for windows cmd console
git clone https://github.com/neilpa/cmd-colors-solarized 
reg import cmd-colors-solarized/solarized-dark.reg
rm -rf cmd-colors-solarized

:: setup vimrc
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%/vimfiles/bundle/Vundle.vim

sed "s/~\/\.vim/%%HOME%%\/vimfiles/g" ./vimrc > %USERPROFILE%/_vimrc
cd %USERPROFILE%
vim +PluginInstall +qall
