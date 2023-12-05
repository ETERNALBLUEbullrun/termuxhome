set nomodeline
set hlsearch
set shiftwidth=2
set tabstop=2
set softtabstop=0 noexpandtab
set bs=indent,eol,start
set whichwrap=<,>,h,l,[,],b
runtime TabComplete "Import ~/.vim/TabComplete
inoremap <expr> <silent> <tab> TabComplete("forward")
inoremap <expr> <silent> <c-tab> TabComplete("backward") "TODO: <c-tab> support
inoremap <expr> <silent> <s-tab> TabComplete("tab")

