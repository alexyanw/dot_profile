" turn off compatibility with old vi
set nocompatible
" turn filetype detection off, even it's not strictly necessary
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc('~/.vim')
" alternatively, pass a path where Vundle should install plugins
"call vundle#rc('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
call vundle#begin('~/.vim/bundle')

Plugin 'tpope/vim-abolish'
" crc: camel, crs: snake, cru: uppercase

Plugin 'wincent/command-t'
Plugin 'altercation/vim-colors-solarized'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
call vundle#end()

" display related
" keep current color setting
" syntax enable
" override with default color setting
syntax on

set background=dark
"colorscheme desert
colorscheme solarized
" change colorscheme in diff mode
if &diff
    " colorscheme desert
    " highlight Normal term=none cterm=none ctermfg=White ctermbg=Black gui=none guifg=White guibg=Black
    highlight DiffAdd cterm=none ctermfg=none ctermbg=White gui=none guifg=none guibg=none
    highlight DiffDelete cterm=none ctermfg=none ctermbg=White gui=none guifg=none guibg=none
    highlight DiffChange cterm=none ctermfg=none ctermbg=White gui=none guifg=none guibg=none
    highlight DiffText cterm=none ctermfg=Red ctermbg=none gui=none guifg=bg guibg=none
endif
"Bundle 'vim-airline/vim-airline'
"Bundle 'vim-airline/vim-airline-themes'
"let g:airline_powerline_fonts = 1
"set t_Co=256   " WAR by TERM=xterm-256color in cshrc
set laststatus=2
"let g:airline_theme='bubblegum'
let g:airline_theme='solarized'
"let g:airline_theme='luna'

"Bundle 'tpope/vim-rails'   " too slow

"Bundle 'Valloric/YouCompleteMe'

" code syntax check
" Bundle 'scrooloose/syntastic'
let python_highlight_all=1

filetype plugin indent on    " required

" nerdtree setting
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"" ctags, taglist
"Bundle 'taglist.vim'
"set tags=tags;  " last ; together with autochdir allows tags to recursively search parent dirs
"set autochdir
"nnoremap <silent> <F8> :TlistToggle<CR>
""let Tlist_Auto_Open=0 " Let the tag list open automatically
""let Tlist_Auto_Update=1 " Update the tag list automatically
""let Tlist_Compact_Format=1 " Show small menu
""let Tlist_Enable_Fold_Column=0 "do show folding tree
""let Tlist_Process_File_Always=1 " Always process the source file
"let Tlist_Ctags_Cmd="/usr/bin/ctags"    " location of ctags
"let Tlist_Show_One_File=1               " Only show the tag list of current file
"let Tlist_Exist_OnlyWindow=1            " If you are the last, kill yourself
"let Tlist_File_Fold_Auto_Close=1        " Fold closed other trees
""let Tlist_Sort_Type="name"             " Order by name
"let Tlist_WinWidth=28                   " Set the window 28 cols wide.
""let Tlist_Close_On_Select=1 " Close the list when a item is selected
""let Tlist_Exit_OnlyWindow = 1
""let Tlist_Use_Right_Window = 1

" ############################ non-plugin settings ###############################
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

" code folding
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
let g:markdown_folding=1      " md

set encoding=utf-8

set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set number
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set showmatch
set hlsearch        " highlight search
set incsearch       " do incremental searching

set colorcolumn=81  " absolute columns to highlight, multicolumns like 81,101
" highlight on tab
syn match tab display "\t"
hi link tab Error

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 et
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2 et
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 et
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 et
retab

set noerrorbells " disable warning bells
set noswapfile " disable swp dump

" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a


"""""""""""""""""""""""""""""""""" ALE """"""""""""""""""""""""""""""""""""""
" version >= 800
autocmd BufNewFile,BufRead TARGETS :setlocal filetype=bzl
autocmd BufNewFile,BufRead BUCK :setlocal filetype=bzl

let g:ale_completion_enabled = 1
nnoremap <silent> K :ALEHover<CR>
nnoremap <silent> gd :ALEGoToDefinition<CR>
nnoremap <C-]> gd
nnoremap <silent> gs :ALEGoToDefinition -split<CR>
nnoremap <silent> gv :ALEGoToDefinition -vsplit<CR>
nnoremap <silent> gtt :ALEGoToDefinition -tab<CR>
nnoremap <M-LeftMouse> <LeftMouse> :ALEGoToDefinition<CR>
nnoremap <silent> <C-d> :ALEDetail<CR>
nnoremap <silent> <leader>a :ALEStopAllLSPs<CR>

let g:ale_echo_msg_format = "[%linter%][ code]% %s"
" Format when we save
let g:ale_fix_on_save = 1
" Not run ale_fixers for \w
"nnoremap <silent> <leader>w :let g:ale_fix_on_save=0<CR>:w<CR>:let g:ale_fix_on_save=1<CR>
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_linters = {
    \ 'python': ['pylint', 'pyright', 'pydocstring'] }
let g:ale_fixers = {
    \ 'python': ['black']
    \}

let g:ale_python_executable='python3'
let g:ale_python_pylint_use_global=1

" auto open preview-window when cursor moves to problematic lines
let g:ale_cursor_detail = 1
let g:ale_close_preview_on_insert = 1
" make preview window split on bottom
set splitbelow

