"let g:spacevim_default_indent = 2
"let g:spacevim_max_column     = 79

let mapleader = ","
let g:mapleader = ","

let g:spacevim_enable_guicolors = 0

let g:spacevim_colorscheme = 'onedark'

let g:vim_json_syntax_conceal = 0

let g:spacevim_custom_plugins = [
      \ ['csexton/trailertrash.vim'],
      \ ['nbouscal/vim-stylish-haskell']
      \ ]

call SpaceVim#layers#load('lang#haskell')

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|venv|build|output)|(\.(git|venv|stack-work|ropeproject))$|target',
  \ 'file': '\v\.(exe|so|ttf|png|jpg)$|\-rplugin\~',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:vimfiler_ignore_pattern = [
  \ '^\.init\.vim-rplugin\~$',
  \ '^\.netrwhist$',
  \ '\.class$',
  \ '^\.ropeproject$',
  \ '^\.stack-work$',
  \ '^\.venv$',
  \ '^venv$'
  \]

"let g:airline_theme = 'alduin'

" turn off highlight after a search
nnoremap <silent> <Leader>/ :nohlsearch <CR>

nnoremap <silent> <Leader>p :bn<CR>
nnoremap <silent> <Leader>o :bp<CR>
nnoremap <silent> <leader>bd :Sbd<CR>
nnoremap <silent> <leader>bdm :Sbdm<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.pyc

set autoread "Set to auto read when a file is changed from the outside

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

" text should break to new line after 79 char
set textwidth=79
set formatoptions+=t

"set foldmethod=indent

set magic "Set magic on for regex
