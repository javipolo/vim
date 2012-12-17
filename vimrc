if has("syntax")
  syntax on
endif
set background=dark

" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set list
set listchars=tab:▸\ ,eol:¬

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" remap for list, normal, insert and command line mode
nnoremap <F10> :set list!<CR>
inoremap <F10> <C-o>::set list!<CR>
cnoremap <F10> <C-c>::set list!<CR>

set pastetoggle=<F12>
