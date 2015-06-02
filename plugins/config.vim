" ctrl p {{{
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
nnoremap <leader>o :CtrlPCmdPalette<CR>
"}}}

" neocomplete {{{
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#force_overwrite_completefunc = 1 " to work with rails.vim
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'"
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"}}}

" neosnippet {{{
imap <C-e>     <Plug>(neosnippet_expand_or_jump)
smap <C-e>     <Plug>(neosnippet_expand_or_jump)
xmap <C-e>     <Plug>(neosnippet_expand_target)
xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
" }}}

" unite {{{
" http://bling.github.io/blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/
let g:unite_source_history_yank_enable = 1
"nnoremap <space> :Unite -start-insert bookmark buffer file_mru file_rec/async<cr>
nnoremap <space>p :UniteWithCurrentDir -start-insert -auto-preview file_rec/async<cr>
nnoremap <space>f :UniteWithCurrentDir -buffer-name=files file_rec/async<CR>
nnoremap <space>c :Unite -buffer-name=commands command <CR>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>b :Unite -quick-match buffer<cr>
nnoremap <space>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <space>m :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <space>r :<C-u>Unite -no-split -buffer-name=registers     register<cr>
nnoremap <space>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <space>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <space>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
"call unite#custom#source('file_rec/async','sorters','sorter_rank', )
"" replacing unite with ctrl-p
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_source_history_yank_enable=1
let g:unite_prompt='» '
" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')

  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction
call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'quick-match': 1,
\   'winheight': 25,
\   'direction': 'botright',
\ })
"}}}

" sessions {{{
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
"}}}

"html validator {{{
au FileType html compiler html
au QuickFixCmdPost make cwindow
"}}}

" arduino {{{
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
"}}}

" ycm {{{
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_cache_omnifunc = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0
"}}}

" javascript {{{
let g:used_javascript_libs = "angularjs"
"}}}

" tabular {{{
"let mapleader="\\"
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
nmap <leader>a, :Tabularize /,\zs<CR>
vmap <leader>a, :Tabularize /,\zs<CR>
"}}}

" emmet key {{{
let g:user_emmet_leader_key='<C-e>'
let g:use_emmet_complete_tag = 1
"}}}

" airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'zenburn'
"}}}

" gundo {{{
nnoremap <F5> :GundoToggle<CR>
"}}}

" goldenview {{{
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
"nmap <silent> <C-J>  <Plug>GoldenViewNext
"nmap <silent> <C-K>  <Plug>GoldenViewPrevious
"}}}

" nerdtree {{{
map <F4> :NERDTreeToggle<CR>
"}}}

" tagbar {{{
map <F6> :TagbarToggle<CR>
map <F7> :TlistToggle<CR>
"}}}

" calendar {{{
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
"}}}

" colorscheme {{{
colorscheme molokai
let g:indent_guides_auto_colors = 0
" better highlight
highlight CursorLine ctermbg=236
highlight Visual ctermbg=236
highlight VertSplit ctermbg=233 ctermfg=67 cterm=none
highlight LineNr ctermbg=233 ctermfg=236
highlight StatusLineNC ctermfg=67 ctermbg=233
highlight StatusLine ctermfg=67 ctermbg=233
highlight IndentGuidesOdd ctermbg=233
highlight IndentGuidesEven ctermbg=0


"}}}


" mathematic {{{
nmap <leader>k :KeyHelper<CR>
let g:mathematic_fuzzy_match = 1
"}}}

" ruby {{{
autocmd FileType ruby nmap <buffer> <F2> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F2> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F2> <Plug>(xmpfilter-mark)

nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rcpc :RConvertPostConditional<cr>
nnoremap <leader>rel  :RExtractLet<cr>
vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>
"}}}

" ragtag {{{
let g:ragtag_global_maps = 1
"}}}

" ruby textobj {{{
let g:textobj_ruby_more_mappings = 1
"}}}

" vim: fdm=marker
