let s:path = expand('<sfile>:p:h')

" Load vim-enabled plugins from plugins.vim file
call plug#begin(s:path . '/plugged')
exe 'source ' . s:path . '/plugins.vim'
call plug#end()

" Core Functions and Framework
exe 'source ' . s:path . '/custom/plugged.vim'

" Core customizations
exe 'source ' . s:path . '/custom/defaults.vim'
exe 'source ' . s:path . '/custom/mappings.vim'

" Disable netrw /
let g:loaded_netrw        = 1
let g:loaded_netrwPlugin  = 1

" Load plugin customizations
exe 'source ' . s:path . '/custom/plugins/nerdtree.vim'
exe 'source ' . s:path . '/custom/plugins/fzf.vim'
exe 'source ' . s:path . '/custom/plugins/ack.vim'
exe 'source ' . s:path . '/custom/plugins/neosolarized.vim'
exe 'source ' . s:path . '/custom/plugins/vim-jsx-improve.vim'

exe 'source ' . s:path . '/custom/plugins/coc.vim'

" Personal customizations
exe 'source ' . s:path . '/custom/custom.vim'
