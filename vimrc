" load vundle
source ~/.vim/vundles.vim

" Disable nasty splash screen
set shortmess+=I

" Enable 256 colors! :)
set t_Co=256
" This is for ansii escapechars ... not needed in xfce4-terminal at least
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
colorscheme javipolo

if has("syntax")
  syntax on
endif
set background=dark

" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set hidden

set hlsearch
map <Leader>h :noh<CR>

" My custom leader key
" let mapleader='ç'
let mapleader=' '

" show hidden characters for tab and end of line
set list
set listchars=tab:▸\ ,trail:←,extends:❯,precedes:❮
"set showbreak=↪

" spacing options
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

" remap [ and ] to + and - for faster motion in spanish keyboad
nnoremap + ]
nnoremap - [
" Uncomment to Open new split panes to right and bottom
"set splitbelow
set splitright

" Enable mouse even within screen. Disabled because it fucks up with X cut and paste
"set ttymouse=xterm2
"set mouse=a

" Show line numbers by default
set number
" remap for toggling paste mode (list, number and paste), normal, insert and command line mode
nnoremap <F12> :set list! number! paste!<CR>
inoremap <F12> <C-O>:set list! number! paste!<CR>

" paste to clipboard
nnoremap <Leader>p gg"+yG<C-o>

" Map ultisnippets C-tab to C-^
let g:UltiSnipsListSnippets = "<C-^>"

" My custom pastetoggle
function! CustomPasteToggle()
    set list! paste! number!
endfunc

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
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ %{fugitive#statusline()}\ Line:\ %l

" keymappings for tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <leader>a0 :Tabularize /=><CR>
vmap <leader>a0 :Tabularize /=><CR>

" Set filetype for haproxy.cfg
augroup haproxy
    autocmd!
    autocmd BufRead,BufNewFile haproxy.cfg set filetype=haproxy
augroup END
" enable indentation based on filetype by default
filetype plugin indent on

augroup shellscripts
    autocmd!
    autocmd BufNewFile *.sh norm ggO#!/bin/bash
augroup END

" Set filetype for glusterfs
augroup glusterfs
    autocmd!
    autocmd BufRead,BufNewFile *.vol set filetype=glusterfs
augroup END
" Only autoclose folds below this folding level
set foldlevel=20

" Fold and unfold using leader-space
nnoremap <Leader><Space> za

" Manage .vimrc easily
nnoremap <Leader>ve :vsplit $MYVIMRC<cr>
nnoremap <Leader>vs :source $MYVIMRC<cr>

" Easy opening of NerdTree
nnoremap <Leader>N :NERDTree

" Strip spaces in current line
nnoremap <Leader>ss 0v^hy0:.s/^\s\+//g<CR>:.s/\s\+/ /g<CR>:.s/\s$//g<cr>0P

" Unimpaired with better spanish keyboard support ;)

nmap ¡a [a
nmap +a ]a
nmap ¡A [A
nmap +A ]A
nmap ¡b [b
nmap +b ]b
nmap ¡B [B
nmap +B ]B
nmap ¡l [l
nmap +l ]l
nmap ¡L [L
nmap +L ]L
nmap ¡<C-L> [<C-L>
nmap +<C-L> ]<C-L>
nmap ¡q [q
nmap +q ]q
nmap ¡Q [Q
nmap +Q ]Q
nmap ¡<C-Q> [<C-Q>
nmap +<C-Q> ]<C-Q>
" nmap ¡t [t
" nmap +t ]t
nmap ¡T [T
nmap +T ]T

" Move through tabs
nnoremap +t :tabnext<CR>
nnoremap ¡t :tabnext<CR>

" git status
nnoremap <Leader>gs :Gstatus<cr>
" git diff
nnoremap <Leader>gd :Gdiff<cr>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

" Better comand-line editing
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
 
nnoremap n nzz

" Open last/alternate buffer
noremap <Leader><Leader> <C-^>

" Automatically reload vimrc when it's saved
au BufWritePost .vimrc so /home/javipolo/.vimrc

" File to store local customizations
if filereadable(glob("/home/javipolo/.vim/vimrc.local"))
    source /home/javipolo/.vim/vimrc.local
endif

" switch to previous buffer
nmap <C-Tab> :b#<cr>
nmap <C-m> :bn<cr>
nmap <C-n> :bp<cr>

" disable mouse
set mouse=

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_yaml_checkers = ['yamllint']

" Move through location list
nmap <Leader>n :lnext<cr>zz
nmap <Leader>p :lprevious<cr>zz

" puppet-lint arguments
let g:syntastic_puppet_puppetlint_args = "--no-80chars-check --no-arrow_alignment-check --no-documentation-check"

let g:fugitive_blame_arguments = '-w'

" Disable pipe character on window splitting separator
set fillchars=""
"source /home/javipolo/.vim/colors/javipolo.vim

set diffopt+=vertical

" diffput/get one line
nnoremap <silent> <leader>dp V:diffput<cr>
nnoremap <silent> <leader>dg V:diffget<cr>
" diff toggle
nnoremap <silent> <leader>df :call DiffToggle()<CR>
" undo in the other window
nmap <silent> <leader>du :wincmd w<cr>:normal u<cr>:wincmd w<cr>

" enable all Python syntax highlighting features
let python_highlight_all = 1

nnoremap <silent> <Leader>R :w<cr>:!clear;python %<cr>

" Clear spaces
vnoremap <Leader>cs :s/ //g<cr>/poiasdpoiqwepoasd<cr>

" Clear search
nnoremap <Leader>ss /poqieasopdipoeiwq<cr>

" Vertical indentation character
let g:indentLine_char = '┆'

let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }
" delete current file and buffer
"nmap <Leader>Dd :call delete(expand('%')) | bdelete!
"
"au FileType terraform setlocal sw=2 sts=2 et
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
