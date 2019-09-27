set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" THE PLUGINS "
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'tpope/vim-commentary'
Plugin 'sheerun/vim-polyglot'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
" Track the snippets engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'szw/vim-tags'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" Tabular.vim
Plugin 'godlygeek/tabular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" CUSTOM OPTIONS "

" Snippets options
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Airline options
let g:airline_powerline_fonts=1
set t_Co=256

" Conque-GDB options
let g:ConqueTerm_Color=2
let g:ConqueTerm_CloseOnEnd=1
let g:ConqueTerm_StartMessages=0

" General options
syntax on
set number
set relativenumber
set ruler
set cursorline
set incsearch " highlight first result while searching
set hlsearch " highlight search results
" remove highlights when enter key is pressed
nnoremap <CR> :noh<CR>

set softtabstop=1
set shiftwidth=4
set tabstop=4
set expandtab smarttab
colorscheme railscasts "elflord murphy, pablo...
set wildmenu

" remove trailing whitspaces on save
"autocmd BufWritePre * %s/\s\+$//e

" avoid having comments on new line
set formatoptions-=o

" avoid autogenerating tags (until I find out how to include tags from
" libraries...
let g:vim_tags_auto_generate=0

set tags=./tags,tags,/home/cristian/opt/rti_connext_dds-5.3.1/resource/idl/tags,/home/cristian/opt/rti_connext_dds-5.3.1/include/tags;

" Open DDS xml structure when opening a xml file
autocmd BufNewFile,BufRead *.xml XMLns dds

" Search for text under cursor in visual mode (regex not allowed)
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

"Tabularize commonly used symbols
let mapleader=','
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Show hidden characters
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
hi NonText ctermfg=16 guifg=#484040
hi SpecialKey ctermfg=16 guifg=#484040

hi CursorLine guifg=NONE
hi CursorLineNr guifg=yellow
" hi CursorLine guibg=#505050

" Syntax for ifc files
autocmd BufNewFile,BufRead *.ifc set syntax=c
