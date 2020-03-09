""
"" General Mappings (Normal, Visual, Operator-pending)
""

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Some helpers to edit mode
" http://vimcasts.org/e/14
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" For quick recordings just type qq to start recording, then q to stop. You
" don't have to worry about the name this way (you just named the recording 'q').
" Now, to play back the recording you just type Q. This will redefine the
" standard meaning of 'Q', but all that does is enter "Ex" mode which I can live
" without.
nnoremap Q @q

" Map uppercase to be equivalent to lowercase
command! WQ wq
command! Wq wq
command! Q q
command! W w

" Enhance '<' '>' , do not need to reselect the block after shift it.
vnoremap < <gv
vnoremap > >gv

" enable the mapping of Control + Arrow Keys to window movement commands
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

unmap <Up>
unmap <Down>

" Easier split navigations
" http://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Allow paste to paste and replace line
" Use 'Vp' paste and replace ('V' is to select whole line, and 'p' is to paste)
" By mapping the following, you can paste and replace the second time
xnoremap <leader>p "_dP

if has("nvim")
  " Use ESC to exit terminal mode
  " tnoremap <Esc> <C-\><C-n>
endif

"===================================================================
" FOR THIS WHOLE SECTION TO WORK, YOU NEED TO SET THE iTerm2 SETTING
" GO TO Preferences > Profiles > Keys > Left Option Key > Esc+
"===================================================================
"
" Map Alt-[ and Alt-] to indenting or outdenting
" while keeping the original selection in visual mode
vmap <A-]> >gv
vmap <A-[> <gv

nmap <A-]> >>
nmap <A-[> <<

omap <A-]> >>
omap <A-[> <<

imap <A-]> <Esc>>>i
imap <A-[> <Esc><<i

" Move lines of text up or down.
" The mappings work in normal, insert and visual modes, allowing you to move
" the current line, or a selected block of lines.
nnoremap <D-Down> :m+<CR>==
nnoremap <D-Up> :m-2<CR>==
inoremap <D-Down> <Esc>:m+<CR>==gi
inoremap <D-Up> <Esc>:m-2<CR>==gi
vnoremap <D-Down> :m'>+<CR>gv=gv
vnoremap <D-Up> :m-2<CR>gv=gv

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Map C-6 to C-^ in case shift is pressed
noremap <C-6> <C-^>

" After whitespace, insert the current directory into a command-line path
cnoremap <expr> <C-P> getcmdline()[getcmdpos()-2] ==# ' ' ? expand('%:p:h') : "\<C-P>"
