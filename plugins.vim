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

" master tpope
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rbenv'

" ultimate fuzzy finder
Bundle 'kien/ctrlp.vim'

" html
Bundle 'sorin-ionescu/vim-htmlvalidator'
Bundle 'http://github.com/mattn/emmet-vim/'

" arduino
Bundle 'tclem/vim-arduino'
Bundle 'sudar/vim-arduino-syntax'
Bundle "sophacles/vim-processing"

" javaScript
Bundle 'terryma/vim-multiple-cursors'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'digitaltoad/vim-jade'
Bundle 'godlygeek/tabular'
Bundle 'walm/jshint.vim'
Bundle 'jamescarr/snipmate-nodejs'
"Bundle 'ahayman/vim-nodejs-complete'
Bundle 'goatslacker/mango.vim'

" snipmate with snippets
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'snipmate-snippets'
"Bundle 'garbas/vim-snipmate'
"Bundle 'sudar/vim-arduino-snippets'
"Bundle 'matthewsimo/angular-vim-snippets'
" too many bundles just for one thing... try out neosnippet

" autocompletion
Bundle 'ervandew/supertab'
"fuzzy autocomplete needs --with-lua
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'

" pseudo ide
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'taglist-plus'
Bundle 'scrooloose/syntastic'
" look into these
"Bundle 'Raimondi/delimitMate'
"Bundle 'ide'
"Bundle 'DoxygenToolkit.vim'
""Bundle 'doxygen-support.vim'
"Bundle 'vim-scripts/Conque-GDB'
""Bundle 'skibyte/gdb-from-vim'
"Bundle 'Lokaltog/vim-easymotion'

" color / view
Bundle 'zhaocai/GoldenView.Vim'
Bundle 'marklar.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'qualiabyte/vim-colorstepper'
"Bundle 'altercation/vim-colors-solarized'

" nice statusbar
Bundle 'bling/vim-airline'

" tail files
Bundle 'TailMinusF'

" session management
" consider using tpope's
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'

" visual undo
Bundle 'sjl/gundo.vim.git'

" touch type coach
Bundle 'TTCoach'

filetype plugin indent on

" Plugins Config
if filereadable(expand("~/.vim/plugins_config.vim"))
    source ~/.vim/plugins_config.vim
endif
