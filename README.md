# javipolo's .vim && .vimrc

## Quick setup:
* git clone --recursive git://github.com/javipolo/vim.git ~/.vim && ln -s ~/.vim/vimrc ~/.vimrc && vim +BundleInstall +qall

OR

* git clone git://github.com/javipolo/vim.git ~/.vim && ln -s ~/.vim/vimrc ~/.vimrc && cd ~/.vim && git submodule update -i && vim +BundleInstall +qall

## Plugins:
* **vundle**:          Plugin manager, this manages all other plugins in file load\_vundle.vim
* **comentary**:       use \\\\\\ for commenting out code
* **fugitive**:        integrate vim with git
* **golden-ratio**:    resize windows applying golden ratio
* **haproxy**:         syntax highlighting and folding for haproxy.cfg
* **nerdcommenter**:   use \<Leader\>cc for commenting out code
* **nerdtree**:        nice file explorer
* **puppet**:          syntax and more for .pp files
* **repeat**:          enables to use . in lots of places
* **surround**:        manage brackets, tags, quotes and everything that surrounds text
* **tabular**:         automagically tabulate in columns
* **unimpaired**:      easy navigation through quickfix list, among other things
* **vim-autochmod**:   set permissions of shellscripts automatically
* **vim-varnish**:     varnish syntax and folding rules

Note: most of the plugins are git submodules pulled out from github. See .gitmodules to get to the repos :)
