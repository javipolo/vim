" enable pathogen (autoloading of bundles)
call pathogen#infect()

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

" Faster scroll throug windows
map <C-t> <C-w>w
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-o> <C-w><
map <C-i> <C-w>>
map <C-u> <C-w>+
map <C-y> <C-w>-
map <C-p> <C-w>=

" remap for list, normal, insert and command line mode
nnoremap <F10> :set list!<CR>
inoremap <F10> <C-o>::set list!<CR>
cnoremap <F10> <C-c>::set list!<CR>

set pastetoggle=<F12>

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Always show the status line
set laststatus=2
" statusline (with git support from Fugitive.vim)
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ %{fugitive#statusline()}\ Line:\ %l

" keymappings for tabularize
let mapleader=','
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a) :Tabularize /=><CR>
vmap <Leader>a) :Tabularize /=><CR>
