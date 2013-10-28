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
Bundle 'Lokaltog/vim-powerline'

Bundle 'kien/ctrlp.vim'

Bundle 'vim-scripts/sessionman.vim'
Bundle 'majutsushi/tagbar'

"Bundle 'Shougo/neocomplcache'

Bundle 'Shougo/neosnippet'

Bundle 'lambdalisue/vim-django-support'
Bundle 'klen/python-mode'

Bundle 'sorin-ionescu/vim-htmlvalidator'

Bundle 'tclem/vim-arduino'
Bundle "sophacles/vim-processing"

" Install snipmate dependencies:
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "snipmate-snippets"

Bundle "garbas/vim-snipmate"
Bundle "sudar/vim-arduino-snippets"

Bundle 'vim-scripts/Conque-GDB'
Bundle 'skibyte/gdb-from-vim'

"Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'ide'
Bundle 'DoxygenToolkit.vim'
Bundle 'doxygen-support.vim'
Bundle 'taglist-plus'

filetype plugin indent on

" Plugins Config
if filereadable(expand("~/.vim/plugins_config.vim"))
    source ~/.vim/plugins_config.vim
endif
