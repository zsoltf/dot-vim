"
" Vimrc
"
" Settings {{{
"
set shell=/bin/bash
set nocompatible
set timeoutlen=300
set ttimeoutlen=4
" view {{{
syntax on
set t_Co=256
set background=dark
set visualbell
set autoread
set hidden
set lazyredraw
set encoding=utf-8
set list listchars=tab:۰\ ,trail:∙,extends:→,precedes:←
set fillchars=fold:\ ,vert:┃,stl:\ ,stlnc:_,diff:─
set shortmess+=filmnrxoOtT
set scrolljump=2
set scrolloff=2
set foldenable
set foldmethod=syntax
set foldcolumn=0
set foldlevelstart=99
set comments=sl:/*,mb:*,elx:*/
set cursorline
set winminheight=1
set number
set laststatus=2
set nowrap
set noshowmode
set whichwrap=b,s,h,l,<,>,[,]
set equalalways
if has('termtruecolor')
  let &t_8f="\e[38;2;%ld;%ld;%ldm"
  let &t_8b="\e[48;2;%ld;%ld;%ldm"
  set guicolors
  set mouse=a
endif
" mintty mode-dependent cursor
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
" }}}
" complete/search {{{
set backspace=indent,eol,start
set incsearch
set viminfo='100,f1
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set wildignore+=*/tmp/*,*.so,*.swp
set completeopt=menu,longest
set omnifunc=syntaxcomplete#Complete
" }}}
" backup {{{
set history=1000
set noswapfile
set nobackup
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
" }}}
" indentation {{{
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=8
set expandtab
" }}}
" }}}
" Maps {{{
"
let mapleader= "\<Space>"

set pastetoggle=<F10>

" Easier saving
nnoremap <C-X> :w<CR>
nnoremap <C-S> <C-X>

" <C-Q> is for close windows
nnoremap <silent> <C-Q> :close<CR>

" Easier moving between buffers
nnoremap <silent> <C-n> :bn<CR>
nnoremap <silent> <C-p> :bp<CR>

" Dispatch
nnoremap <leader>d :Dispatch 

" Man
nnoremap <leader>M :Man 

" quickfix and location
nnoremap <silent> <leader>l :lopen<CR>
nnoremap <silent> <leader>q :Copen<CR>
nnoremap <silent> <leader>Q :ccl<CR>

" command line window
nnoremap <leader>; q:

" focus fold (opens current fold and closes folds around it)
nnoremap <silent> <leader>z :silent! normal! zMzozozozozozozozozz<CR>

" open all folds under current fold
nnoremap <silent> <leader>Z zazAzt

nnoremap <silent> <leader>n :Tmux select-pane -t .+<CR>

nnoremap <silent> <C-W>s Hmx`` \|:split<CR>`xzt``

nnoremap <silent> <C-c> <Esc>

nnoremap <silent> <C-k> :bd!<CR>

nnoremap <silent> <Leader>a :Ack 

nnoremap <Leader>sr :SyntasticCheck rubocop<CR>

" write file, switch to firefox, refresh page, switch back to vim
nnoremap <silent> <Leader>x :write \| silent !xdotool search --name Firefox windowactivate key F5 search --name vim windowactivate<CR><C-L>

" }}}
" Plugins {{{
"
filetype off

" fuzzy finder
set rtp+=~/.fzf

" vundle plugin manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
let g:vundle_default_git_proto = 'git'

Bundle 'gmarik/vundle'

" ruby {{{
" plugins {{{
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rbenv'
Bundle 'tpope/vim-endwise'
Bundle 'vim-ruby/vim-ruby'
Bundle 'danchoi/ri.vim'
nnoremap <LocalLeader>r :call ri#OpenSearchPrompt(1)<CR>
nnoremap <LocalLeader>k :call ri#LookupNameUnderCursor()<CR>
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'janx/vim-rubytest'
"Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'rhysd/vim-textobj-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
nnoremap <localleader>t  <Plug>RubyTestRun
nnoremap <localleader>T  <Plug>RubyFileRun
nnoremap <localleader>\  <Plug>RubyLastRun
nnoremap <localleader>p  :RAddParameter<cr>
nnoremap <localleader>c :RConvertPostConditional<cr>
nnoremap <localleader>rel  :RExtractLet<cr>
vnoremap <localleader>ec  :RExtractConstant<cr>
vnoremap <localleader>el :RExtractLocalVariable<cr>
nnoremap <localleader>i  :RInlineTemp<cr>
vnoremap <localleader>rl :RRenameLocalVariable<cr>
vnoremap <localleader>rv :RRenameInstanceVariable<cr>
vnoremap <localleader>e  :RExtractMethod<cr>
"}}}
" autocmds {{{
autocmd FileType ruby nmap <buffer> <F2> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F2> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F2> <Plug>(xmpfilter-mark)
autocmd FileType ruby,eruby set formatoptions-=o
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
"}}}
"}}}
" git {{{
" fugitive {{{
nnoremap <leader>gc :Gcommit<CR><C-W>kC
nnoremap <leader>ga :Git commit --amend<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gl :Git! log<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gd1 :Gvdiff HEAD~1<CR>
nnoremap <leader>gd2 :Gvdiff HEAD~2<CR>
nnoremap <leader>g :Git! 
nnoremap <leader>G :Git 
" }}}
" gitgutter {{{
let g:gitgutter_max_signs=1000
" }}}
" gitv {{{
nnoremap <leader>gg :Gitv<CR>
nnoremap <leader>gf :Gitv!<CR>
" }}}
Bundle 'junegunn/vim-github-dashboard'
" }}}
" javascript {{{
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'vim-scripts/JavaScript-Indent'
"Bundle 'jaxbot/brolink.vim'
"Bundle 'terryma/vim-multiple-cursors'
"Bundle 'othree/javascript-libraries-syntax.vim'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'digitaltoad/vim-jade'
"Bundle 'walm/jshint.vim'
Bundle 'jamescarr/snipmate-nodejs'
"Bundle 'ahayman/vim-nodejs-complete'
"Bundle 'goatslacker/mango.vim'
Bundle 'marijnh/tern_for_vim'

"let g:used_javascript_libs = "angularjs"
let b:javascript_fold = 1
let javascript_enable_domhtmlcss = 1
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "∅"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "←"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "∬"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab nolist omnifunc=tern#Complete
"}}}
" html {{{
Bundle 'sorin-ionescu/vim-htmlvalidator'
Bundle 'mattn/emmet-vim'
Bundle 'gcmt/breeze.vim'
" ragtag {{{
let g:ragtag_global_maps = 1
"}}}
" emmet key {{{
let g:user_emmet_leader_key='<C-t>'
let g:use_emmet_complete_tag = 1
"}}}
"html validator {{{
au FileType html compiler html
au QuickFixCmdPost make cwindow
"}}}

autocmd Filetype html setlocal ts=2 sw=2 expandtab
" }}}
" arduino {{{
"Bundle 'tclem/vim-arduino'
Bundle 'jplaut/vim-arduino-ino'
Bundle 'sudar/vim-arduino-syntax'
Bundle "sophacles/vim-processing"

au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
" }}}
" markdown {{{
"Bundle 'plasticboy/vim-markdown'
Bundle 'zsoltf/vim-markdown-preview'
" }}}
" math {{{
Bundle 'Rykka/mathematic.vim'
Bundle 'math'
Bundle 'arecarn/crunch'
" mathematic {{{
nmap <leader>v :KeyHelper<CR>
let g:mathematic_fuzzy_match = 1
"}}}
" }}}
" tmux {{{
Bundle 'pearance/vim-tmux'
" }}}
" go {{{
Bundle 'fatih/vim-go'
" }}}
" salt {{{
Bundle 'stephpy/vim-yaml'
Bundle 'saltstack/salt-vim'
" }}}
" splunk {{{
Bundle 'splunk.vim'
Bundle 'yorokobi/vim-splunk'
" }}}
"
" ide {{{
" file {{{
Bundle 'TailMinusF'
Plugin 'vtreeexplorer'
Plugin 'Shougo/neossh.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'joedicastro/DirDiff.vim'
Plugin 'lpenz/vimcommander'
noremap <silent> <F11> :cal VimCommanderToggle()<CR>
"}}}
" gundo {{{
Bundle 'sjl/gundo.vim.git'
nnoremap <leader>u :GundoToggle<CR>
"}}}
" tagbar {{{
Bundle "wesleyche/SrcExpl"
Bundle 'majutsushi/tagbar'
map <F6> :TagbarToggle<CR>
map <F7> :TlistToggle<CR>
"}}}
" startify {{{
let g:startify_change_to_vcs_root = 0
let g:startify_custom_indices = ['a', 'd', 'f', 'g', 'h', 'l']
let g:startify_custom_header =
      \ map(split(system('fortune | cowthink -f `ls /usr/share/cowsay/cows/ | shuf -n 1`'), '\n'), '"   ". v:val') + ['']
hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=67
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240
let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ fnamemodify($VIMRUNTIME, ':p') .'/doc',
            \ 'bundle/.*/doc',
            \ '\.vimgolf',
            \ '\.git/*',
            \ ]
" }}}
" syntastic {{{
Bundle 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 3
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = "ε"
let g:syntastic_warning_symbol = "ω"
let g:syntastic_style_error_symbol = "ε"
let g:syntastic_style_warning_symbol = "ψ"
let g:syntastic_aggregate_errors = 1
let g:syntastic_ruby_checkers = ["mri"]
" }}}
Bundle 'taglist-plus'
Bundle 'matchit.zip'
Bundle 'Raimondi/delimitMate'
"Bundle 'ide'
""Bundle 'skibyte/gdb-from-vim'
Bundle 'yuratomo/dbg.vim'
Bundle 'bruno-/vim-man'
"Bundle 'chrisbra/changesPlugin'
Plugin 'chrisbra/csv.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
"Plugin 'zweifisch/pipe2eval'
Plugin 'Shougo/vimshell.vim'
Plugin 'mhinz/vim-startify'
Plugin 'joonty/vdebug'
Bundle 'vim-scripts/dbext.vim'
Bundle 'utl.vim'
Bundle 'mileszs/ack.vim'
"}}}
" completion {{{
" ctrlp {{{
Bundle 'kien/ctrlp.vim'
Bundle 'fisadev/vim-ctrlp-cmdpalette'
" }}}
" autocompletion {{{
Plugin 'wellle/tmux-complete.vim'
Bundle 'ervandew/supertab'
"Bundle 'SearchComplete'
"fuzzy autocomplete needs --with-lua
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'Shougo/echodoc.vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'Konfekt/FastFold'
"}}}
" unite {{{
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
Bundle 'tsukkee/unite-tag'
Bundle 'tsukkee/unite-help'
Bundle 'osyo-manga/unite-quickfix'
Bundle 'osyo-manga/unite-fold'
"}}}
" snipmate snippets {{{
Bundle 'snipmate-snippets'
Bundle 'sudar/vim-arduino-snippets'
Bundle 'matthewsimo/angular-vim-snippets'
" }}}
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
imap <C-l>     <Plug>(neosnippet_expand_or_jump)
smap <C-l>     <Plug>(neosnippet_expand_or_jump)
xmap <C-l>     <Plug>(neosnippet_expand_target)
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
"nnoremap <leader> :Unite -start-insert bookmark buffer file_mru file_rec/async<cr>
nnoremap <leader><CR> :Unite<CR>
nnoremap <leader><leader>p :UniteWithCurrentDir -start-insert -auto-preview file_rec/async<cr>
nnoremap <leader>F :UniteWithBufferDir -buffer-name=files file_rec/async<CR>
nnoremap <leader>c :Unite -buffer-name=commands command <CR>
nnoremap <leader>/ :Unite grep:.<cr>
nnoremap <leader>b :Unite -quick-match buffer<cr>
nnoremap <leader>t :<C-u>Unite -buffer-name=tags   -start-insert tag<cr>
nnoremap <leader>T :<C-u>Unite -buffer-name=included -start-insert tag/include<cr>
nnoremap <leader>m :Unite -buffer-name=mru -start-insert file_mru<cr>
nnoremap <leader>r :<C-u>Unite -buffer-name=registers     register<cr>
nnoremap <leader>o :<C-u>Unite -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -buffer-name=yank    history/yank<cr>
nnoremap <leader><leader>g :Unite -buffer-name=git    file_rec/git<cr>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
"call unite#custom#source('file_rec/async','sorters','sorter_rank', )
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
  nmap <buffer> <C-C> <Plug>(unite_exit)
endfunction
call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'quick-match': 1,
\   'winheight': 25,
\   'direction': 'botright',
\ })
"}}}
" ycm {{{
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_cache_omnifunc = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0
"}}}
"autocmds {{{
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global=1
autocmd FileType ruby,eruby let g:rubycomplete_include_object=1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" }}}
" fzf {{{
nnoremap <leader>f :FZF<CR>
"}}}
" }}}
" edit {{{
" align
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'junegunn/vim-easy-align'
Bundle 'godlygeek/tabular'
Bundle 'sk1418/blockit'
" text objects
Bundle 'kana/vim-textobj-user'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'vim-scripts/text-object-left-and-right'
Bundle 'goldfeld/vim-seek'
" tabular {{{
"let mapleader="\\"
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
nmap <leader>a, :Tabularize /,\zs<CR>
vmap <leader>a, :Tabularize /,\zs<CR>
"}}}
Bundle 'mtth/scratch.vim'
" }}}
" color / view {{{
"Bundle 'zhaocai/GoldenView.Vim'
Bundle 'marklar.vim'
"Bundle 'flazz/vim-colorschemes'
Bundle 'tomasr/molokai'
Bundle 'romainl/Apprentice'
Bundle 'jnurmine/Zenburn'
"Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'NLKNguyen/papercolor-theme'
Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'Rykka/colorv.vim'
"Bundle 'ap/vim-css-color'
Bundle 'guns/xterm-color-table.vim'
Bundle 'powerman/vim-plugin-AnsiEsc'
Bundle 'gerw/vim-HiLinkTrace'
Bundle 'vim-scripts/HiColors'
Bundle 'zsoltf/vim-maui'
Bundle 'zsoltf/vim-maui-airline'
Bundle 'zsoltf/dwm.vim'
"Bundle 'ashisha/image.vim'
Bundle 'kshenoy/vim-signature'

colorscheme maui

" indent guides {{{
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify', 'man']
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 3
" }}}
" dwm.vim {{{
let g:dwm_map_keys=0
let g:dwm_master_pane_width="66%"
" }}}
" airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#whitespace#trailing_format = '←@%s'
let g:airline#extensions#whitespace#mixed_indent_format = '→@%s'
"}}}
"}}}
" web {{{
" calendar {{{
Bundle 'itchyny/calendar.vim'
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
nnoremap <leader>C :Calendar<CR>
"}}}
" github gists
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'diepm/vim-rest-console'
Bundle 'aquach/vim-http-client'
" }}}
" utils {{{
" touch type coach
Bundle 'TTCoach'
Bundle 'thanthese/Tortoise-Typing'
" }}}
" master tpope {{{
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-tbone'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-jdaddy'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-scriptease'
"}}}

filetype plugin indent on

" }}}
" Functions {{{
"

" Strip whitespace {{{
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

"autocmd FileType * autocmd BufWritePre <buffer> call StripTrailingWhitespace()
"}}}

" Fold Text {{{
function! NeatFoldText()
  "let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let line = substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '├ ' . printf("%10s", lines_count . ' lines') . ' ┤'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart(repeat(' ', v:foldlevel) . line, 0, (winwidth(0)*2)/3)
  "let foldtextstart = strpart(line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
"set foldtext=NeatFoldText()
" }}}

" HTML Preview {{{
" inspired by http://vim.wikia.com/wiki/Preview_current_HTML_file
function! ViewHtmlText(url, view)
  if !empty(a:url)
    if a:view ==# 'view'
      silent! execute 'Dispatch elinks ' . a:url
      silent! execute 'Tmux select-layout even-horizontal'
    else
      silent! new
      silent! wincmd o
      silent! IndentGuidesDisable
      setlocal buftype=nofile bufhidden=hide noswapfile nolist nonumber
      nnoremap <buffer> <silent> q :bd!<CR>
      silent! execute 'Read elinks -dump-width ' . winwidth(0) . ' -dump ' . a:url
    endif
  endif
endfunction
" Save and view text for current html file.
"nnoremap <Leader>H :update<Bar>call ViewHtmlText(expand('%:p'))<CR>
" View text for visually selected url.
vnoremap <Leader>H y:call ViewHtmlText(@@, "read")<CR>
" Open elinks for the selected url in a tmux pane
vnoremap <Leader>h y:call ViewHtmlText(@@, "view")<CR>
" }}}

" }}}
" vim: fdm=marker
