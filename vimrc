"=============================================
"Author:hominlinx
"Version:1.1
"Email:hominlinx@gmail.com
"=============================================

let mapleader = ";"

source ~/.vim/config/plugins.vim

source ~/.vim/config/settings.vim
source ~/.vim/config/snippets.vim
source ~/.vim/config/mappings.vim
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
