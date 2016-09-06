set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-rails'   " github
Plugin 'scrooloose/nerdtree'    " github
"Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'taglist.vim'
Plugin 'scrooloose/syntastic'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" nerdtree setting
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


set encoding=utf-8
let python_highlight_all=1
syntax on

set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set background=dark
colorscheme desert 

" display related
set history=50		" keep 50 lines of command line history
set number
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set showmatch
set hlsearch        " highlight search
set incsearch       " do incremental searching

set wildignore=*.o,*.obj
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 et
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2 et
retab

set noerrorbells " disable warning bells

" folding
set foldmethod=syntax
set foldlevel=99
set foldlevelstart=1
nnoremap <Space> za
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

" Don't use Ex mode, use Q for formatting
map Q gq

" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a

" layout setting
"set splitbelow
"set splitright
"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-S-J> <C-W><C-J><C-W>_
nnoremap <C-S-K> <C-W><C-K><C-W>_

" ctags, taglist
set tags=tags;  " last ; together with autochdir allows tags to recursively search parent dirs
set autochdir
nnoremap <silent> <F8> :TlistToggle<CR>
"let Tlist_Auto_Open=0 " Let the tag list open automatically
"let Tlist_Auto_Update=1 " Update the tag list automatically
"let Tlist_Compact_Format=1 " Show small menu
"let Tlist_Enable_Fold_Column=0 "do show folding tree
"let Tlist_Process_File_Always=1 " Always process the source file
"let Tlist_Ctags_Cmd="/usr/bin/ctags" " location of ctags
"let Tlist_Show_One_File=1 " Only show the tag list of current file
"let Tlist_Exist_OnlyWindow=1 " If you are the last, kill yourself
"let Tlist_File_Fold_Auto_Close=1 " Fold closed other trees
"let Tlist_Sort_Type="name" " Order by name
"let Tlist_WinWidth=25 " Set the window 40 cols wide.
"let Tlist_Close_On_Select=1 " Close the list when a item is selected
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_Use_Right_Window = 1

