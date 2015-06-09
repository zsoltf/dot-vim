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
nnoremap <leader>gc :Gcommit<CR><C-W>kC
nnoremap <leader>ga :Git commit --amend<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gl :Git! log<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gd1 :Gvdiff HEAD~1<CR>
nnoremap <leader>gd2 :Gvdiff HEAD~2<CR>
nnoremap <leader>g :Git 
nnoremap <leader>G :Git! 
nnoremap <leader>gg :Gitv<CR>
nnoremap <leader>gf :Gitv!<CR>
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
