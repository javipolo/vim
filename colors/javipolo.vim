" Vim color file:  javipolo.vim
" Last Change: 03 Oct, 2007
" License: public domain
" Maintainer:: Javi Polo <javipolo@drslump.org>
"
" Just changed few things from: colorful256.vim
"
" for a 256 color capable terminal
" "{{{
" You must set t_Co=256 before calling this colorscheme 
"
" Color numbers (0-255) see:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
" 
" Added gui colors
"

if &t_Co != 256 && ! has("gui_running")
    echomsg ""
    echomsg "colors not loaded first please set t_Co=256 in your .vimrc"
    echomsg ""
    finish
endif

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "javipolo"

 highlight Normal       cterm=none    ctermfg=249 ctermbg=16  gui=none    guifg=#b2b2b2 guibg=#000000
 highlight Special      cterm=none    ctermfg=105 ctermbg=16  gui=none    guifg=#8787ff guibg=#000000
 highlight Comment      cterm=none    ctermfg=3   ctermbg=16  gui=none    guifg=#808000 guibg=#000000
 highlight Constant     cterm=none    ctermfg=9   ctermbg=16  gui=none    guifg=#ff0000 guibg=#000000
 highlight LineNr       cterm=none    ctermfg=48  ctermbg=16  gui=none    guifg=#00ff87 guibg=#000000
 highlight Number       cterm=none    ctermfg=209 ctermbg=16  gui=none    guifg=#ff875f guibg=#000000
 highlight PreProc      cterm=none    ctermfg=10  ctermbg=16  gui=none    guifg=#ff00ff guibg=#000000
 highlight Statement    cterm=none    ctermfg=51  ctermbg=16  gui=none    guifg=#00ffff guibg=#000000
 highlight Type         cterm=none    ctermfg=39  ctermbg=16  gui=none    guifg=#00afff guibg=#000000
 highlight Error        cterm=none    ctermfg=9   ctermbg=16  gui=none    guifg=#ff0000 guibg=#000000
 highlight Identifier   cterm=none    ctermfg=207 ctermbg=16  gui=none    guifg=#ff5fff guibg=#000000
 highlight SpecialKey   cterm=none    ctermfg=36  ctermbg=16  gui=none    guifg=#00af87 guibg=#000000
 highlight NonText      cterm=none    ctermfg=164 ctermbg=16  gui=none    guifg=#df00df guibg=#000000
 highlight Directory    cterm=none    ctermfg=34  ctermbg=16  gui=none    guifg=#00af00 guibg=#000000
 highlight ErrorMsg     cterm=none    ctermfg=9   ctermbg=16  gui=none    guifg=#ff0000 guibg=#000000
 highlight MoreMsg      cterm=none    ctermfg=34  ctermbg=16  gui=none    guifg=#00af00 guibg=#000000
 highlight Title        cterm=none    ctermfg=199 ctermbg=16  gui=none    guifg=#ff00af guibg=#000000
 highlight WarningMsg   cterm=none    ctermfg=9   ctermbg=16  gui=none    guifg=#ff0000 guibg=#000000
 highlight Search       cterm=none    ctermfg=15  ctermbg=160 gui=none    guifg=#ffffff guibg=#df0000
 highlight Visual       cterm=none    ctermfg=16  ctermbg=50  gui=none    guifg=#000000 guibg=#00ffdf
 highlight Cursor       cterm=none    ctermfg=16  ctermbg=33  gui=none    guifg=#000000 guibg=#0087ff
 " highlight StatusLine   cterm=reverse ctermfg=58  ctermbg=15  gui=reverse guifg=#5f5f00 guibg=#ffffff
 highlight StatusLine   cterm=none    ctermfg=253  ctermbg=234  gui=reverse guifg=#5f5f00 guibg=#ffffff
 highlight Question     cterm=none    ctermfg=16  ctermbg=226 gui=none    guifg=#000000 guibg=#ffff00
 highlight Todo         cterm=none    ctermfg=160 ctermbg=184 gui=none    guifg=#df0000 guibg=#dfdf00
" highlight Folded       cterm=none    ctermfg=15  ctermbg=58  gui=none    guifg=#ffffff guibg=#5f5f00
 highlight Folded       cterm=none    ctermfg=253 ctermbg=234 gui=none    guifg=#ffffff guibg=#5f5f00
 highlight ModeMsg      cterm=none    ctermfg=16  ctermbg=46  gui=none    guifg=#000000 guibg=#00ff00
 highlight VisualNOS    cterm=none    ctermfg=16  ctermbg=28  gui=none    guifg=#000000 guibg=#008700
 highlight WildMenu     cterm=none    ctermfg=16  ctermbg=226 gui=none    guifg=#000000 guibg=#ffff00
 highlight FoldColumn   cterm=none    ctermfg=15  ctermbg=58  gui=none    guifg=#ffffff guibg=#5f5f00
 highlight SignColumn   cterm=none    ctermfg=16  ctermbg=28  gui=none    guifg=#000000 guibg=#008700
 highlight DiffDelete   cterm=none    ctermfg=207 ctermbg=16  gui=none    guifg=#ff5fff guibg=#000000
 highlight DiffText     cterm=none    ctermfg=16  ctermbg=77  gui=none    guifg=#000000 guibg=#00af00
 highlight DiffAdd      cterm=none    ctermfg=16  ctermbg=44  gui=none    guifg=#000000 guibg=#00af00
 highlight DiffChange   cterm=none    ctermfg=16  ctermbg=185 gui=none    guifg=#000000 guibg=#00af00
 highlight StatusLineNC cterm=reverse ctermfg=131 ctermbg=15  gui=reverse guifg=#af5f5f guibg=#ffffff
 "highlight VertSplit    cterm=reverse ctermfg=172 ctermbg=15  gui=reverse guifg=#df8700 guibg=#ffffff
 highlight VertSplit    cterm=reverse ctermfg=10 ctermbg=15  gui=reverse guifg=#df8700 guibg=#ffffff
 highlight MatchParen   cterm=bold    ctermfg=green  ctermbg=blue  gui=bold    guifg=#00ff00 guibg=#0000ff
 highlight User1        cterm=none    ctermbg=20  ctermfg=15  gui=none    guibg=#0000df guifg=#ffffff
 highlight User2        cterm=none    ctermbg=20  ctermfg=46  gui=none    guibg=#0000df guifg=#00ff00
 highlight User3        cterm=none    ctermbg=20  ctermfg=46  gui=none    guibg=#0000df guifg=#00ff00
 highlight User4        cterm=none    ctermbg=20  ctermfg=50  gui=none    guibg=#0000df guifg=#00ffdf
 highlight User5        cterm=none    ctermbg=20  ctermfg=46  gui=none    guibg=#0000df guifg=#00ff00

" for groups introduced in version 7
if v:version >= 700
   highlight PMenuSbar guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=white ctermbg=NONE cterm=NONE
   highlight PMenuSel guifg=#000000 guibg=#ffdf00 guisp=#ffdf00 gui=NONE ctermfg=white ctermbg=blue cterm=NONE
   highlight PMenu guifg=#ffffff guibg=#282329 guisp=#282329 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
   highlight PMenuThumb guifg=NONE guibg=#00ff87 guisp=#00ff87 gui=NONE ctermfg=white ctermbg=48 cterm=NONE
   highlight tablinesel  cterm=none ctermfg=15 ctermbg=58  gui=none guifg=#ffffff guibg=#5f5f00
   highlight tabline     cterm=none ctermfg=7  ctermbg=58  gui=none guifg=#c0c0c0 guibg=#5f5f00
   highlight tablinefill cterm=none ctermfg=58 ctermbg=58  gui=none guifg=#5f5f00 guibg=#5f5f00
endif

"for taglist plugin
"
if exists('loaded_taglist')
   highlight TagListTagName  cterm=none ctermfg=16  ctermbg=28 gui=none guifg=#000000 guibg=#008700
   highlight TagListTagScope cterm=none ctermfg=16  ctermbg=28 gui=none guifg=#000000 guibg=#008700
   highlight TagListTitle    cterm=none ctermfg=199 ctermbg=16 gui=none guifg=#ff00af guibg=#000000
   highlight TagListComment  cterm=none ctermfg=16  ctermbg=28 gui=none guifg=#000000 guibg=#008700
   highlight TagListFileName cterm=none ctermfg=15  ctermbg=90 gui=none guifg=#ffffff guibg=#870087
endif

" highlight  ColorColumn   cterm=none  ctermfg=green  ctermbg=green
" highlight  Conceal       cterm=none  ctermfg=green  ctermbg=green
" highlight  CursorColumn  cterm=none  ctermfg=green  ctermbg=green
" highlight  CursorIM      cterm=none  ctermfg=green  ctermbg=green
" highlight  CursorLine    cterm=none  ctermfg=green  ctermbg=green
" highlight  IncSearch     cterm=none  ctermfg=green  ctermbg=green
 highlight  SpellBad      cterm=none  ctermfg=yellow  ctermbg=red
" highlight  SpellBad      cterm=none  ctermfg=green  ctermbg=green
" highlight  SpellCap      cterm=none  ctermfg=green  ctermbg=green
" highlight  SpellLocal    cterm=none  ctermfg=green  ctermbg=green
" highlight  SpellRare     cterm=none  ctermfg=green  ctermbg=green
" highlight  TabLine       cterm=none  ctermfg=green  ctermbg=green
" highlight  TabLineFill   cterm=none  ctermfg=green  ctermbg=green
" highlight  TabLineSel    cterm=none  ctermfg=green  ctermbg=green

