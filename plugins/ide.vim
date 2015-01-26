" autocompletion
Bundle 'ervandew/supertab'
Bundle 'SearchComplete'
"fuzzy autocomplete needs --with-lua
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'

" snipmate snippets
Bundle 'snipmate-snippets'
Bundle 'matthewsimo/angular-vim-snippets'

" ide
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'taglist-plus'
Bundle 'scrooloose/syntastic'
Bundle 'matchit.zip'
" look into these
"Bundle 'Raimondi/delimitMate'
"Bundle 'ide'
"Bundle 'DoxygenToolkit.vim'
""Bundle 'doxygen-support.vim'
"Bundle 'vim-scripts/Conque-GDB'
""Bundle 'skibyte/gdb-from-vim'
"Bundle 'xolox/vim-colorscheme-switcher'

" sessions
"Bundle 'xolox/vim-session'
"Bundle 'xolox/vim-misc'

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#force_overwrite_completefunc = 1 " to work with rails.vim
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'"
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" neosnippet
imap <C-q>     <Plug>(neosnippet_expand_or_jump)
smap <C-q>     <Plug>(neosnippet_expand_or_jump)
xmap <C-q>     <Plug>(neosnippet_expand_target)
xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" nerdtree
map <F4> :NERDTreeToggle<CR>

" tagbar
map <F6> :TagbarToggle<CR>
map <F7> :TlistToggle<CR>

