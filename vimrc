set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')
	
	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'bling/vim-airline'
	"Plugin 'rdnetto/YCM-Generator'
	" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set nu
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set cindent
set cursorline
set tags+=./tags
set tags+=/home/hj/ikuai/ik_ap/tags
set tags+=/usr/include/c_tags
set laststatus=2
"airline settings
let mapleader = ";"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
autocmd InsertLeave * if pumvisible()== 0|pclose|endif
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0
"nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<C
nmap ;j <C-]>
nmap ;k <C-o>
