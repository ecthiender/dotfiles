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
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on

let g:ft_ignore_pat = '\.org' " VimOrganizer setting.

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
"colorscheme solarized
colorscheme default
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
"JSLintToggle

" VimOrganizer Plugin config
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()
" let g:org_capture_file = '~/org_files/mycaptures.org'
command! OrgCapture :call org#CaptureBuffer()
command! OrgCaptureFile :call org#OpenCaptureFile()

let g:org_todo_setup='TODO NEXT STARTED | DONE CANCELED'


" tabline custom config
set tabline=%!MyTabLine()  " custom tab pages line
function MyTabLine()
  let s = '' " complete tabline goes here
  " loop through each tab page
  for t in range(tabpagenr('$'))
    " set highlight
    if t + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    " set the tab page number (for mouse clicks)
    let s .= '%' . (t + 1) . 'T'
    let s .= ' '
    " set page number string
    let s .= t + 1 . ' '
    " get buffer names and statuses
    let n = ''      "temp string for buffer names while we loop and check buftype
    let m = 0       " &modified counter
    let bc = len(tabpagebuflist(t + 1))     "counter to avoid last ' '
    " loop through each buffer in a tab
    for b in tabpagebuflist(t + 1)
      " buffer types: quickfix gets a [Q], help gets [H]{base fname}
      " others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
      if getbufvar( b, "&buftype" ) == 'help'
        let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
      elseif getbufvar( b, "&buftype" ) == 'quickfix'
        let n .= '[Q]'
      else
        let n .= pathshorten(bufname(b))
      endif
      " check and ++ tab's &modified count
      if getbufvar( b, "&modified" )
        let m += 1
      endif
      " no final ' ' added...formatting looks better done later
      if bc > 1
        let n .= ' '
      endif
      let bc -= 1
    endfor
    " add modified label [n+] where n pages in tab are modified
    if m > 0
      let s .= '[' . m . '+]'
    endif
    " select the highlighting for the buffer names
    " my default highlighting only underlines the active tab
    " buffer names.
    if t + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    " add buffer names
    if n == ''
      let s.= '[New]'
    else
      let s .= n
    endif
    " switch to no underlining and add final space to buffer list
    let s .= ' '
  endfor
  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'
  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s .= '%=%#TabLineFill#%999Xclose'
  endif
  return s
endfunction
