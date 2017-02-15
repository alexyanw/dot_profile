:: set solarized dark for windows cmd console
git clone https://github.com/neilpa/cmd-colors-solarized 
reg import cmd-colors-solarized/solarized-dark.reg
::rm -rf cmd-colors-solarized

:: putty
curl https://raw.githubusercontent.com/altercation/solarized/master/putty-colors-solarized/solarized_dark.reg > putty_solarized_dark.reg
curl https://raw.githubusercontent.com/altercation/solarized/master/putty-colors-solarized/solarized_light.reg > putty_solarized_light.reg
reg import putty_solarized_light.reg

:: console
::curl -O https://raw.githubusercontent.com/nihique/console2-colors-solarized/master/console_solarized_dark.xml
::echo please manually merge console_solarized_dark.xml to console.xml

:: setup vimrc
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%/vimfiles/bundle/Vundle.vim

sed "s/~\/\.vim/~\/vimfiles/g" ./vimrc > %USERPROFILE%/_vimrc
cd %USERPROFILE%
vim +PluginInstall +qall
