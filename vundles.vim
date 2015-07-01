set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" syntax and more for .pp files
"Bundle 'rodjek/vim-puppet'
Bundle 'netdata/vim-puppet'
" automagically tabulate in columns
Bundle 'godlygeek/tabular'
" integrate vim with git
Bundle 'tpope/vim-fugitive'
" manage brackets, tags, quotes and everything that surrounds text
Bundle 'tpope/vim-surround'
" enables to use . in lots of places
Bundle 'tpope/vim-repeat'
" easy navigation through quickfix list, among other things
Bundle 'tpope/vim-unimpaired'
" syntax highlighting and folding for haproxy.cfg
Bundle 'javipolo/vim-haproxy'
" varnish syntax and folding rules
Bundle 'javipolo/vim-varnish'
" use gcc for commenting out code
"Bundle 'scrooloose/nerdcommenter'
" set permissions of shellscripts automatically
"Bundle 'javipolo/vim-autochmod'
" nice file explorer
Bundle 'scrooloose/nerdtree'
" resize windows applying golden ratio
"Bundle 'roman/golden-ratio'
" CtrlP to jump faster through files
Bundle 'kien/ctrlp.vim'
" utilsnips, for inserting snippets of code
" disabled for compatibility in all servers
"Bundle 'SirVer/ultisnips'
" Visual vertical line for indentation
"Bundle 'Yggdroot/indentLine'
" Commenting out code
Bundle 'tomtom/tcomment_vim'
" Buffer explorer
"Bundle 'fholgado/minibufexpl.vim'
" Neat statusline
Bundle 'maciakl/vim-neatstatus'
" Rainbow parenthesis plugin
"Bundle 'amdt/vim-niji'
" ArgDo for directories
Bundle 'vim-scripts/DirDo.vim'
" new text object q for matching any quotes
Bundle 'kana/vim-textobj-user'
Bundle 'beloglazov/vim-textobj-quotes'
