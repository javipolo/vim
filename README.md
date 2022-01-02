# javipolo's .vim && .vimrc

## Quick setup:
* git clone --recursive git://github.com/javipolo/vim.git ~/.vim && ln -s ~/.vim/vimrc ~/.vimrc && vim +BundleInstall +qall

OR

* git clone git://github.com/javipolo/vim.git ~/.vim && ln -s ~/.vim/vimrc ~/.vimrc && cd ~/.vim && git submodule update -i && vim +BundleInstall +qall


## NeoVim

* ln -s ~/.vim/nvim ~/.config/nvim

## Plugins (if list is outdated, just loot at vundle.vim file):
* **vundle**:          Plugin manager, this manages all other plugins in file vundles.vim
* **comentary**:       use \\\\\\ for commenting out code
* **fugitive**:        integrate vim with git
* **haproxy**:         syntax highlighting and folding for haproxy.cfg
* **puppet**:          syntax and more for .pp files
* **repeat**:          enables to use . in lots of places
* **surround**:        manage brackets, tags, quotes and everything that surrounds text
* **tabular**:         automagically tabulate in columns
* **unimpaired**:      easy navigation through quickfix list, among other things
* **vim-varnish**:     varnish syntax and folding rules
* **CtrlP**:           faster browsing through files
* **utilsnips**:       Fast insertion of text snippets
* **vim-eyaml**:       Encrypt inside yaml without exiting vim

Note: All of the plugins are managed with the vundle plugin. Vundle itself is a submodule
