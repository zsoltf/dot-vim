" ctrl p
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
nnoremap <leader>o :CtrlPCmdPalette<CR>


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
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
nmap <leader>a, :Tabularize /,\zs<CR>
vmap <leader>a, :Tabularize /,\zs<CR>

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

" calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" colorscheme
colorscheme molokai

" mathematic
nmap <leader>k :KeyHelper<CR>
let g:mathematic_fuzzy_match = 1
