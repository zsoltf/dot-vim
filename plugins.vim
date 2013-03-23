"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vimrc Plugins
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
let g:vundle_default_git_proto = 'git'

Bundle 'gmarik/vundle'

" Essential Bundles
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/Colour-Sampler-Pack'
Bundle 'Lokaltog/vim-powerline'

Bundle 'kien/ctrlp.vim'

Bundle 'vim-scripts/sessionman.vim'
Bundle 'majutsushi/tagbar'
Bundle 'taglist.vim'

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'

"Bundle 'ivanov/vim-ipython'
"Bundle 'davidhalter/jedi-vim'
Bundle 'klen/python-mode'
Bundle 'scrooloose/syntastic.git'
Bundle 'ervandew/supertab'
" Python
filetype plugin indent on

" Plugins Config
if filereadable(expand("~/.vim/plugins.config"))
    source ~/.vim/plugins.config
endif
