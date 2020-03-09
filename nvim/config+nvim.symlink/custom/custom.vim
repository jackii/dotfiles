" Personal customisation
"
" Customize the status line
if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r
  set statusline+=%=
  set statusline+=Ln:%l/%L[%p%%]\ Col:%v
endif

" traveling without moving, keep the cursor in middle of screen
let &scrolloff=9999-&scrolloff

" highlight current line
" Ref: http://stackoverflow.com/a/475904
set cul
hi CursorLine term=none cterm=none ctermbg=0

" Auto save files when focus is lost
" http://vim.wikia.com/wiki/Auto_save_files_when_focus_is_lost
:au FocusLost * silent! wa

" Automatically removing all trailing whitespace
" http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Strip trailing whitespaces when save
" NOT REQUIRED, SAME AS THE ONE ABOVE
"fun! <SID>StripTrailingWhitespaces()
"    let l = line(".")
"    let c = col(".")
"    %s/\s\+$//e
"    call cursor(l, c)
"endfun

"autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
