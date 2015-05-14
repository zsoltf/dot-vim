"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Aliases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader= '\'

set pastetoggle=<F10>

"nnoremap <space> z
nnoremap <tab> za

" Useful Control Key Shortcuts

" Easier saving
nnoremap <C-X> :w<CR>
nnoremap <C-S> <C-X>

" Q is for quickfix
nnoremap Q :copen<CR>

" <C-Q> is for close windows
nnoremap <C-Q> :close<CR>

" <C-S-l> turns into 
" jumps out of parans while in insert mode
" ( hello_ )
" ( hello )_
inoremap  <C-O>l<C-O>a
"<C-O>a works when there are no spaces

" Easier moving between buffers
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
