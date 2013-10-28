" ctrl p
let g:ctrlp_map = '<leader>p'

"" neocomplcache
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_max_list = 5
"let g:neocomplcache_auto_completion_start_length = 3
"let g:neocomplcache_force_overwrite_completefunc = 1
"if !exists('g:neocomplcache_keyword_patterns')
"  let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
call togglebg#map("<F5>")
colorscheme solarized

" powerline
let g:Powerline_theme='solarized256'

"html validator
au FileType html compiler html
au QuickFixCmdPost make cwindow

" arduino
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" ycm"
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
