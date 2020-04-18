" Use this file to load any vim-plug enabled extension
" Make sure you use single quotes


" Plugins
"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'ddollar/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion'
Plug 'camspiers/lens.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Intellisense and more
" Coc.vim related plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Langusges support
"
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'tpope/vim-cucumber', { 'for': 'cucumber' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim', { 'for': 'slim' }

" RSpec, Test::Unit/MiniTest, Konacha, and Cucumber
Plug 'brodock/vim-vroom', { 'branch': 'neovim-terminal' }
Plug 'thoughtbot/vim-rspec'

" Javascript, Typescript, React
Plug 'neoclide/vim-jsx-improve'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Themes
"
" Solarized theme
Plug 'iCyMind/NeoSolarized'
