" ctrl p
let g:ctrlp_map = '<leader>o'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
nnoremap <leader>p :CtrlPCmdPalette<CR>

" neocomplete
let g:neocomplete#enable_at_startup = 0
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#force_overwrite_completefunc = 1 " to work with rails.vim
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'"
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" neosnippet
"imap <C-e>     <Plug>(neosnippet_expand_or_jump)
smap <C-e>     <Plug>(neosnippet_expand_or_jump)
xmap <C-e>     <Plug>(neosnippet_expand_target)
xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1

" solarized
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
""call togglebg#map("<F5>")
"colorscheme solarized
" tired of solarized

"html validator
au FileType html compiler html
au QuickFixCmdPost make cwindow

" arduino
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" ycm"
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_cache_omnifunc = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0

" javascript  "
let g:used_javascript_libs = "angularjs"

" supertab
"let g:SuperTabLongestEnhanced=0
"let g:SuperTabDefaultCompletionType='<c-x><c-o><c-p>'
"let g:SuperTabContextDefaultCompletionType='<c-x><c-o><c-p>'

" tabular
let mapleader="\\"
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
nmap <leader>a, :Tabularize /,\zs<CR>
vmap <leader>a, :Tabularize /,\zs<CR>

" emmet key
let g:user_emmet_leader_key='<C-e>'
let g:use_emmet_complete_tag = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'
map <F2> :AirlineToggle<CR>

" gundo
nnoremap <F5> :GundoToggle<CR>

" goldenview
let g:goldenview__enable_default_mapping = 0
" 1. split to tiled windows
nmap <silent> <C-L>  <Plug>GoldenViewSplit
"
" " 2. quickly switch current window with the main pane
" " and toggle back
nmap <silent> <F8>   <Plug>GoldenViewSwitchMain
nmap <silent> <F9> <Plug>GoldenViewSwitchToggle
"
" " 3. jump to next and previous window
nmap <silent> <C-J>  <Plug>GoldenViewNext
nmap <silent> <C-K>  <Plug>GoldenViewPrevious

" nerdtree
map <F4> :NERDTreeToggle<CR>

" tagbar
map <F6> :TagbarToggle<CR>
map <F7> :TlistToggle<CR>

" calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" colorscheme
colorscheme molokai

" mathematic
nmap <leader>k :KeyHelper<CR>
let g:mathematic_fuzzy_match = 1

" ruby
autocmd FileType ruby nmap <buffer> <F2> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F2> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F2> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F3> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F3> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F3> <Plug>(xmpfilter-run)
