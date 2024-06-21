set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=/home/javipolo/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

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

" comment out stuff
Bundle 'tpope/vim-commentary'

" Manage sessions
Plugin 'tpope/vim-obsession'

" CtrlP to jump faster through files
Bundle 'kien/ctrlp.vim'

" new text object q for matching any quotes
Bundle 'kana/vim-textobj-user'
Bundle 'beloglazov/vim-textobj-quotes'

" Linting
" Bundle 'scrooloose/syntastic'
Plugin 'w0rp/ale'

" Nice vertical line to match indentation
Bundle 'Yggdroot/indentLine'

" Configure status line
Plugin 'itchyny/lightline.vim'

" Terraform integration
Plugin 'hashivim/vim-terraform'

" Golang support
Plugin 'fatih/vim-go'

" Glow Markdown Viewer
Plugin 'ellisonleao/glow.nvim'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" NeoVim specific
Plugin 'nvim-treesitter/nvim-treesitter'

call vundle#end()
