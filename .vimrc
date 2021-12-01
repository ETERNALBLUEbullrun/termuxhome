set nomodeline
set bs=indent,eol,start
set whichwrap=<,>,h,l,[,],b
set hlsearch
runtime TabComplete "Import ~/.vim/TabComplete
inoremap <expr> <silent> <tab> TabComplete("forward")
inoremap <expr> <silent> <c-tab> TabComplete("backward") "TODO: <c-tab> support
inoremap <expr> <silent> <s-tab> TabComplete("tab")

