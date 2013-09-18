" ctrl p
let g:ctrlp_map = '<leader>t'

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_max_list = 5
let g:neocomplcache_auto_completion_start_length = 3
let g:neocomplcache_force_overwrite_completefunc = 1
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=0
call togglebg#map("<F5>")

colorscheme solarized
