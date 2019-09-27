colorscheme railscasts "elflord murphy, pablo...
let g:airline_powerline_fonts=1
set guifont=Inconsolata\ for\ Powerline\ Medium\ 13

set formatoptions-=o

nnoremap <C-Up> :silent! let &guifont = substitute(&guifont, '.\zs\d\+',  '\=eval(submatch(0)+1)',  '')<CR>
nnoremap <C-Down> :silent! let &guifont = substitute(&guifont, '.\zs\d\+',  '\=eval(submatch(0)-1)',  '')<CR>
nnoremap <C-Left> :silent! let &guifont = "Inconsolata\ for\ Powerline\ Medium\ 13"<CR>
"
" Show hidden characters
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:#,eol:¶,precedes:«,extends:»
hi NonText ctermfg=16 guifg=#484040
hi SpecialKey ctermfg=16 guifg=#484040

" hi CursorLine guibg=NONE
hi CursorLine guifg=NONE
hi CursorLineNr gui=bold guifg=yellow
hi CursorLine guibg=#202224
