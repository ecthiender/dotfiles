" turn off highlight after a search
nnoremap <silent> <Leader>/ :nohlsearch <CR>

" NERDTree mapping
nnoremap <F5> :NERDTree <CR>

nnoremap <silent> <Leader>p :bn<CR>
nnoremap <silent> <Leader>o :bp<CR>
nnoremap <silent> <Leader>bd :bd<CR>

if has("gui_running")
  set guifont=Fantasque\ Sans\ Mono\ Regular\ 12
  set background=dark
  colorscheme jellybeans
endif
