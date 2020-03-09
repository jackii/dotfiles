" <leader>n to toggle NERDTree
map <leader>n, :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" Close vim if NERDtree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Ignore these file extentions
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']


" If the parameter is a directory, cd into it
augroup AuNERDTreeCmd
autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))

function! s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
      exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
      return
  endif

  if directory
      NERDTree
      wincmd p
      bd
  endif

  if explicitDirectory
      wincmd p
  endi
endfunction

" NERDTree utility function
" Deprecated, used to check and update NERDTree, but it's too slow
function! s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
      let stay = a:1
  end

  if exists("t:NERDTreeBufName")
      let nr = bufwinnr(t:NERDTreeBufName)
      if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
          wincmd p
      end
      endif
  endif
endfunction

" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" center NERDtree window when the cursor move
let NERDTreeAutoCenter=0

" single click on NERDtree will open the files
let NERDTreeMouseMode=3
