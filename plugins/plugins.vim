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

" f with 2 chars
Bundle 'goldfeld/vim-seek'

" ultimate fuzzy finder
Bundle 'kien/ctrlp.vim'
Bundle 'fisadev/vim-ctrlp-cmdpalette'

" align stuff
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'junegunn/vim-easy-align'
Bundle 'godlygeek/tabular'
Bundle 'sk1418/blockit'

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

" markdown
"Bundle 'plasticboy/vim-markdown'
Bundle 'zsoltf/vim-markdown-preview'

" math
Bundle 'Rykka/mathematic.vim'
Bundle 'math'
Bundle 'arecarn/crunch'

Bundle 'vim-scripts/dbext.vim'

source ~/.vim/plugins/arduino.vim
source ~/.vim/plugins/html.vim
source ~/.vim/plugins/javascript.vim
source ~/.vim/plugins/ruby.vim

source ~/.vim/plugins/color.vim
source ~/.vim/plugins/unite.vim
source ~/.vim/plugins/tpope.vim

source ~/.vim/plugins/plugins_config.vim


filetype plugin indent on
