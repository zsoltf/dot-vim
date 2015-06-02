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

" master tpope {{{
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rbenv'
Bundle 'tpope/vim-tbone'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-jdaddy'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
"}}}

" f with 2 chars
Bundle 'goldfeld/vim-seek'

" ultimate fuzzy finder
Bundle 'kien/ctrlp.vim'
Bundle 'fisadev/vim-ctrlp-cmdpalette'

" autocompletion {{{
Bundle 'ervandew/supertab'
"Bundle 'SearchComplete'
"fuzzy autocomplete needs --with-lua
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
"}}}

" unite {{{
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/unite-outline'
Bundle 'ujihisa/unite-colorscheme'
Bundle 'tacroe/unite-mark'
Bundle 'thinca/vim-unite-history'
Bundle 'ujihisa/unite-gem'
Bundle 'tungd/unite-session'
Bundle 'basyura/unite-rails'
"Bundle 'ujihisa/quicklearn'
Bundle 'mattn/unite-gist'
Bundle 'tex/vim-unite-id'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neomru.vim'
"}}}

" snipmate snippets
Bundle 'snipmate-snippets'
Bundle 'sudar/vim-arduino-snippets'
Bundle 'matthewsimo/angular-vim-snippets'

" ide {{{
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'taglist-plus'
Bundle 'scrooloose/syntastic'
Bundle 'matchit.zip'
" look into these
Bundle 'Raimondi/delimitMate'
"Bundle 'ide'
""Bundle 'skibyte/gdb-from-vim'
Bundle 'bruno-/vim-man'
"}}}

" sessions
"Bundle 'xolox/vim-session'
"Bundle 'xolox/vim-misc'

" align stuff
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'junegunn/vim-easy-align'
Bundle 'godlygeek/tabular'
Bundle 'sk1418/blockit'

" color / view {{{
Bundle 'zhaocai/GoldenView.Vim'
Bundle 'marklar.vim'
"Bundle 'flazz/vim-colorschemes'
Bundle 'tomasr/molokai'
Bundle 'romainl/Apprentice'
Bundle 'jnurmine/Zenburn'
Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'NLKNguyen/papercolor-theme'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Rykka/colorv.vim'
Bundle 'ap/vim-css-color'
"}}}

" tail files
Bundle 'TailMinusF'

" visual undo
Bundle 'sjl/gundo.vim.git'

" touch type coach
Bundle 'TTCoach'

" google cal
Bundle 'itchyny/calendar.vim'

" github gists
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" text objects
Bundle 'kana/vim-textobj-user'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'vim-scripts/camelcasemotion'

" languages

" html
Bundle 'sorin-ionescu/vim-htmlvalidator'
Bundle 'mattn/emmet-vim'
Bundle 'gcmt/breeze.vim'

" javaScript {{{
Bundle 'jaxbot/brolink.vim'
"Bundle 'terryma/vim-multiple-cursors'
Bundle 'othree/javascript-libraries-syntax.vim'
"Bundle 'jiangmiao/auto-pairs'
Bundle 'digitaltoad/vim-jade'
Bundle 'walm/jshint.vim'
Bundle 'jamescarr/snipmate-nodejs'
"Bundle 'ahayman/vim-nodejs-complete'
Bundle 'goatslacker/mango.vim'
"}}}

" arduino
"Bundle 'tclem/vim-arduino'
Bundle 'jplaut/vim-arduino-ino'
Bundle 'sudar/vim-arduino-syntax'
Bundle "sophacles/vim-processing"

" markdown
"Bundle 'plasticboy/vim-markdown'
Bundle 'zsoltf/vim-markdown-preview'

" math
Bundle 'Rykka/mathematic.vim'
Bundle 'math'
Bundle 'arecarn/crunch'

" db
Bundle 'vim-scripts/dbext.vim'

" ruby {{{
Bundle 'vim-ruby/vim-ruby'
Bundle 'danchoi/ri.vim'
Bundle 't9md/vim-ruby-xmpfilter'
"Bundle 'janx/vim-rubytest'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'rhysd/vim-textobj-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
"}}}

Bundle 'ashisha/image.vim'

filetype plugin indent on

" Plugins Config
if filereadable(expand("~/.vim/plugins/config.vim"))
    source ~/.vim/plugins/config.vim
endif

" vim: fdm=marker
