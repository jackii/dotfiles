let s:path = expand('<sfile>:p:h')

" Load vim-enabled plugins from plugins.vim file
call plug#begin(s:path . '/plugged')
exe 'source ' . s:path . '/plugins.vim'
call plug#end()

" Disable netrw /
let g:loaded_netrw        = 1
let g:loaded_netrwPlugin  = 1
