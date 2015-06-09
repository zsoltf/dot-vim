```
__/\\\________/\\\_____________________________
 _\/\\\_______\/\\\_____________________________
  _\//\\\______/\\\____/\\\______________________
   __\//\\\____/\\\____\///______/\\\\\__/\\\\\___
    ___\//\\\__/\\\______/\\\___/\\\///\\\\\///\\\_
     ____\//\\\/\\\______\/\\\__\/\\\_\//\\\__\/\\\_
      _____\//\\\\\_______\/\\\__\/\\\__\/\\\__\/\\\_
       ______\//\\\________\/\\\__\/\\\__\/\\\__\/\\\_
        _______\///_________\///___\///___\///___\///__
```


#### settings

nocompatible and the likes

#### maps

shortcuts that don't belong to a plugin category

```
let mapleader= "\<Space>"

set pastetoggle=<F10>

" Easier saving
nnoremap <C-X> :w<CR>
nnoremap <C-S> <C-X>

" <C-Q> is for close windows
nnoremap <C-Q> :close<CR>

" Easier moving between buffers
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

" Dispatch
nnoremap <leader>d :Dispatch 

" Man
nnoremap <leader>M :Man 

" quickfix and location
nnoremap <leader>l :lopen<CR>
nnoremap <leader>q :copen<CR>
nnoremap <leader>Q :ccl<CR>
```

#### plugins

- ruby
- git

```
nnoremap <leader>gc :gcommit<cr><c-w>kc
nnoremap <leader>ga :git commit --amend<cr>
nnoremap <leader>gw :gwrite<cr>
nnoremap <leader>gs :gstatus<cr>
nnoremap <leader>gl :git! log<cr>
nnoremap <leader>gd :gvdiff<cr>
nnoremap <leader>gd1 :gvdiff head~1<cr>
nnoremap <leader>gd2 :gvdiff head~2<cr>
nnoremap <leader>g :git 
nnoremap <leader>g :git! 
nnoremap <leader>gg :gitv<cr>
nnoremap <leader>gf :gitv!<cr>
```

- javascript
- html
- arduino
- markdown
- math

- ide
- completion
- edit
- color / view
- web
- utils
- master tpope

#### functions
