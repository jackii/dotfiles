" Must set termguicolors
set termguicolors

" Theme activation
colorscheme NeoSolarized

" default value is "normal", Setting this option to "high" or "low" does use the 
" same Solarized palette but simply shifts some values up or down in order to 
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "normal"

" Special characters such as trailing whitespace, tabs, newlines, when displayed 
" using ":set list" can be set to one of three levels depending on your needs. 
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"

" I make vertSplitBar a transparent background color. If you like the origin solarized vertSplitBar
" style more, set this value to 0. Default is 1.
" let g:neosolarized_vertSplitBgTrans = 0

" If you wish to enable/disable NeoSolarized from displaying bold, underlined or italicized 
" typefaces, simply assign 1 or 0 to the appropriate variable. Default values are bold = 1, 
" underline = 1 and italic = 0
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
