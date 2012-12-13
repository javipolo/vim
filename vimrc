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
