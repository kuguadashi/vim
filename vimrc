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

"输入:DoxAuthor将插入文件头注释骨架
"运行:Dox，将生成数据结构或函数的注释骨架
Plugin 'vim-scripts/DoxygenToolkit.vim'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'bling/vim-airline'
let g:airline_theme='powerlineish'

"set ttimeoutlen=50
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_z=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai
set background=dark
"set term=screen
set t_Co=256


let mapleader=';'
set encoding=utf-8
syntax enable
syntax on
set cursorline
set backspace=indent,eol,start " More powerful backspacing
set showmode  " set showmode
set showcmd " show typed command in status bar
set matchtime=2 " show matching bracket for 0.2 seconds
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
set tags +=~/.vim/ctags/ctag
set tags +=~/.vim/ctags/cptag

nmap <leader>j <C-]>
nmap <leader>k <C-o>

nnoremap <F2> :set nonumber! number?<CR>
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>

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
  
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest"
