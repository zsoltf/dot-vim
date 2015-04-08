"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vimrc
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Aliases
if filereadable(expand("~/.vim/settings.vim"))
    source ~/.vim/settings.vim
endif

" Aliases
if filereadable(expand("~/.vim/functions.vim"))
    source ~/.vim/functions.vim
endif

" Aliases
if filereadable(expand("~/.vim/aliases.vim"))
    source ~/.vim/aliases.vim
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocmd and Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set completeopt=menu,longest
set omnifunc=syntaxcomplete#Complete

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

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab

" Plugins
if filereadable(expand("~/.vim/plugins/plugins.vim"))
    source ~/.vim/plugins/plugins.vim
endif
