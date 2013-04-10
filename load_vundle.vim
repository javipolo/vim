set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" syntax and more for .pp files
Bundle 'rodjek/vim-puppet'
" automagically tabulate in columns
Bundle 'godlygeek/tabular'
" integrate vim with git
Bundle 'tpope/vim-fugitive'
" manage brackets, tags, quotes and everything that surrounds text
Bundle 'tpope/vim-surround'
" use \\\\\\ for commenting out code
Bundle 'tpope/vim-commentary'
" enables to use . in lots of places
Bundle 'tpope/vim-repeat'
" easy navigation through quickfix list, among other things
Bundle 'tpope/vim-unimpaired'
" syntax highlighting and folding for haproxy.cfg
Bundle 'javipolo/vim-haproxy'
" varnish syntax and folding rules
Bundle 'javipolo/vim-varnish'
" use \<Leader\>cc for commenting out code
Bundle 'scrooloose/nerdcommenter'
" set permissions of shellscripts automatically
Bundle 'javipolo/vim-autochmod'
" nice file explorer
Bundle 'scrooloose/nerdtree'
" resize windows applying golden ratio
Bundle 'roman/golden-ratio'
