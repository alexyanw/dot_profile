cp .gitconfig  %USERPROFILE%/.gitconfig 
:: set solarized dark for windows cmd console
git clone https://github.com/neilpa/cmd-colors-solarized 
reg import cmd-colors-solarized/solarized-dark.reg
::rm -rf cmd-colors-solarized

:: putty
reg import putty_solarized_dark.reg
reg import putty_solarized_light.reg

:: console
::curl -O https://raw.githubusercontent.com/nihique/console2-colors-solarized/master/console_solarized_dark.xml
::curl https://raw.githubusercontent.com/stevenharman/console2-solarized/master/console.light.xml > console_solarized_light.xml 

:: setup vimrc
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%/vimfiles/bundle/Vundle.vim

sed "s/~\/\.vim/~\/vimfiles/g" ./vimrc > %USERPROFILE%/_vimrc
cd %USERPROFILE%
vim +PluginInstall +qall
