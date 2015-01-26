" unite
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/unite-outline'
Bundle 'ujihisa/unite-colorscheme'
Bundle 'tacroe/unite-mark'
Bundle 'thinca/vim-unite-history'
Bundle 'ujihisa/unite-gem'
Bundle 'tungd/unite-session'
Bundle 'basyura/unite-rails'
"Bundle 'ujihisa/quicklearn'
Bundle 'mattn/unite-gist'
Bundle 'tex/vim-unite-id'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neomru.vim'

" unite
" http://bling.github.io/blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/
let g:unite_source_history_yank_enable = 1
"nnoremap <space> :Unite -start-insert bookmark buffer file_mru file_rec/async<cr>
nnoremap <space>p :UniteWithCurrentDir -start-insert -auto-preview file_rec/async<cr>
nnoremap <space>f :UniteWithCurrentDir -buffer-name=files file_rec/async<CR>
nnoremap <space>c :Unite -buffer-name=commands command <CR>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>b :Unite -quick-match buffer<cr>
nnoremap <space>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <space>m :<C-u>Unite -no-split -buffer-name=mru     file_mru<cr>
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
\   'winheight': 50,
\   'direction': 'botright',
\ })
