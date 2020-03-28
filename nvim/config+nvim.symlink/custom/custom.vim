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

" Rescan entire buffer when highlighting large jsx and tsx files
" Enable this when I enter a JavaScript or TypeScript buffer, and disable it when I leave:
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#highlighting-for-large-files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
