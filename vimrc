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
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Faster scroll throug windows
map <C-t> <C-w>w
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Faster window maximize and minimize
nnoremap <Leader>M <C-w>\| <C-w>_
nnoremap <Leader>m <C-w>=

" Uncomment to Open new split panes to right and bottom
"set splitbelow
set splitright

" Show line numbers by default
set number
" remap for toggling paste mode (list, number and paste), normal, insert and command line mode
nnoremap <F12> :set list! number! paste!<CR>
inoremap <F12> <C-O>:set list! number! paste!<CR>

" paste to clipboard
nnoremap <Leader>p gg"+yG<C-o>

" Always show the status line
set laststatus=2

" enable indentation based on filetype by default
filetype plugin indent on

" Only autoclose folds below this folding level
set foldlevel=20

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

" Better comand-line editing
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

nnoremap n nzz

" File to store local customizations
if filereadable(glob("$HOME/.vim/vimrc.local"))
    source $HOME/.vim/vimrc.local
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

let g:fugitive_blame_arguments = '-w'

" Disable pipe character on window splitting separator
set fillchars=""

set diffopt+=vertical

" enable all Python syntax highlighting features
let python_highlight_all = 1

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
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType sh setlocal ts=4 sts=4 sw=4
autocmd FileType go set listchars+=tab:\ \ 

" Make vim-go and ale happy
" from https://vi.stackexchange.com/questions/14166/quickfix-window-and-location-list-open-at-the-same-time-causes-weird-resize
" No gofmt on save. We use ALE.
let g:go_fmt_autosave = 0

augroup my_go_settings
    autocmd!
    " Because I use ALE these commands are useless to me.
    autocmd FileType go
                \  delc GoErrCheck | delc GoLint | delc GoVet
                \| delc GoFmt | delc GoImports | delc GoFmtAutoSaveToggle
                \| delc GoMetaLinter
augroup end

" Format code for me on :w
let g:ale_fix_on_save = 1

" goimports on save.
let g:ale_fixers = {}
let g:ale_fixers.go = ['goimports']
let g:ale_fixers.python = ['black']

" Linters
let g:ale_linters = {'go': ['gometalinter']}
let g:ale_linters_ignore = {
  \   'markdown': ['vale'],
  \}
let g:ale_go_gometalinter_options = '--disable-all'
            \ . ' --enable=vet'
            \ . ' --enable=golint'
            \ . ' --enable=errcheck'
            \ . ' --enable=ineffassign'
            \ . ' --enable=goconst'
            \ . ' --enable=goimports'
            \ . ' --enable=lll --line-length=120'
            " These are slow (>2s)
            " \ . ' --enable=varcheck'
            " \ . ' --enable=interfacer'
            " \ . ' --enable=unconvert'
            " \ . ' --enable=structcheck'
            " \ . ' --enable=megacheck'
let g:ale_python_flake8_options = '--max-line-length=160 --ignore=N806,E111,E114,W503'
let g:ale_sh_shellcheck_options = '-e SC1090,SC2086,SC2063,SC2125'
let g:ale_sh_bashate_options = '-i E006'

" Toggle linters
nnoremap <F10> :ALEToggle<CR>
inoremap <F10> <C-O>:ALEToggle<CR>
nnoremap <Leader>l :ALEToggle<CR>
inoremap <Leader>l <C-O>:ALEToggle<CR>


" glow
let g:glow_style = "dark"

" use # as default commentary
set commentstring=#\ %s
" use # to comment conf files
autocmd FileType conf setlocal commentstring=#\ %s

" Do not pop up help with F1
map <F1> <Esc>
imap <F1> <Esc>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" fzf search current word with Ag
nmap <Leader>* :Ag <C-r><C-w><CR>

" remove trailing spaces
nmap <Leader>ts :%s/\s\+$//g<CR>
