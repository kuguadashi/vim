set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai'
let g:molokai_original = 1
let g:rehash256 = 1

Plugin 'jiangmiao/auto-pairs'

"Plugin 'Valloric/YouCompleteMe'

let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_autoclose_preview_window_after_insertion=1
"""关闭语法检测
let g:ycm_enable_diagnostic_signs=0

Plugin 'a.vim'

Plugin 'yonchu/accelerated-smooth-scroll'

Plugin 'vim-scripts/DoxygenToolkit.vim'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'bling/vim-airline'
let g:airline_theme='powerlineish'

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai
set background=dark
set term=screen
set t_Co=256


let mapleader=';'
set encoding=utf-8
syntax enable
syntax on
set cursorline
set ignorecase
set incsearch
set history=1000
set number 
set laststatus=2
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set cino=:0g0t0(sus
set tags +=./tags

nmap <leader>j <C-]>
nmap <leader>k <C-o>

nnoremap <F2> :set nonumber! number?<CR>

if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
    cs add cscope.out
    endif
    set csverb
endif

if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif
  
  "在插入模式下 光标显示 |
if has("autocmd")
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif
