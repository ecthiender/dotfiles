" (/home/ecthiender/.vimrc) (Anon Ray) <rayanon004@gmail.com>
" This is a collection over time, from dotfiles from various sources


" enable all features
" This must be first, because it changes other options
" as a side effect.
set nocompatible

" init the runtime/package manager pathogen
call pathogen#infect()

"This seems to be common problem caused by the 'system' vimrc in
"some distributions setting filetype on before you set up pathogen.
"So turning it off and back on again forces plugins to load correctly
"http://blog.darevay.com/2010/10/a-brief-note-on-pathogen-for-vim/
filetype off
syntax on
filetype plugin indent on " Enable filetype detection

set wildmenu "Turn on Wild menu

set autoread "Set to auto read when a file is changed from the outside

set hlsearch "highlight pattern when searching
set incsearch "incremental search
set ruler "Always show current position

" Tab settings to insert spaces instead of tabs
" and each tab is 2 spaces
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
%retab
"set smarttab
"set autoindent
"set smartindent
set textwidth=79
"set foldmethod=indent

set magic "Set magic on for regex
set ignorecase "ignore case when searching
set smartcase "see :help smartcase

" dark solarized colorscheme
":syntax enable
set background=dark
colorscheme solarized
"let g:solarized_bold=0
let g:solarized_termtrans=1
syntax on

set encoding=utf8
"set cmdheight=2 "The commandbar height
"autocmd FileType php set omnifunc=phpcomplete "phpautocomplete

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Optimize for fast terminal connections
set ttyfast

" Show the filename in the window titlebar
set title

" UltiSnips - shortcut for listing snippets
" default one <c-tab> doesn't work with guake (and many other term emulators)
" as guake captures the <ctrl> key and doesn't send it to vim
let g:UltiSnipsListSnippets="<s-tab>"

" display a friendly ascii-art upon opening vim
"echo "   (>^.^<)"

" CtrlP Plugin config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" JSLint Plugin config
let g:JSLintHighlightErrorLine = 0
