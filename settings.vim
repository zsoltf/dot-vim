"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showmode                    "Show current mode down the bottom
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hidden
set timeoutlen=200               "Timeout is annoying
set ttimeoutlen=200

set encoding=utf-8 " Necessary to show Unicode glyphs

" Color
set t_Co=256
set background=dark
colorscheme desert
syntax on
filetype plugin indent on

" Search Settings
set incsearch
"set hlsearch toggle this with coh (unimpaired)
set viminfo='100,f1

" Backup Files
set noswapfile
set nobackup
set nowb
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
set fillchars+=vert:│

set shortmess+=filmnrxoOtT
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set wildignore+=*/tmp/*,*.so,*.swp
set whichwrap=b,s,h,l,<,>,[,]
set scrolljump=2
set scrolloff=2
set foldenable
set foldmethod=syntax
set foldcolumn=0
set foldlevelstart=99 " open all folds
set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
set cursorline
set winminheight=1
set number
set laststatus=2
