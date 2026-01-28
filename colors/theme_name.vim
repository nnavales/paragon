" Vim colorscheme file
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'theme_name'

" Load the Lua colorscheme
lua require('theme_name').load()