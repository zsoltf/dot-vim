"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vimrc essentials
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set t_vb=
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
set foldcolumn=3
"set foldlevelstart=1
set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
set cursorline
set winminheight=1

function! NeatFoldText()
  "let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let line = substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart(repeat(' ', v:foldlevel) . line, 0, (winwidth(0)*2)/3)
  "let foldtextstart = strpart(line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('cmdline_info')
    set ruler                   " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd                 " Show partial commands in status line and
                                " Selected characters/lines in visual mode
endif

if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    " spiiph's
   " set statusline=
   " set statusline+=%<\                       " cut at start
   " set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
   " set statusline+=%-40f\                    " path
   " set statusline+=%=%1*%y%*%*\              " file type
   " set statusline+=%10((%l,%c)%)\            " line and column
   " set statusline+=%P                        " percentage of file

    " jamessan's
    set statusline=   " clear the statusline for when vimrc is reloaded
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r\ \              " Options
    set statusline+=%-3.3n\                  " buffer number
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
    set statusline+=%b,0x%-8B\               " current char
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Aliases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader= '\'

set pastetoggle=<F10>

nnoremap <space> z
nnoremap <tab> za

" Easier moving in tabs and windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" Easier saving
map <C-X> :w<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocmd and Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set completeopt=menu,longest
"set omnifunc=syntaxcomplete#Complete

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby let g:rubycomplete_classes_in_global=1

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab

" Remove trailing whitespaces and ^M chars
"autocmd FileType * autocmd BufWritePre <buffer> call StripTrailingWhitespace()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Strip whitespace
function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Additional Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins
if filereadable(expand("~/.vim/plugins.vim"))
    source ~/.vim/plugins.vim
endif
