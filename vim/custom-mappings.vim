" turn off highlight after a search
nnoremap <silent> <Leader>/ :nohlsearch <CR>

nnoremap <silent> <Leader>p :bn<CR>
nnoremap <silent> <Leader>o :bp<CR>
nnoremap <silent> <leader>bd :Sbd<CR>
nnoremap <silent> <leader>bdm :Sbdm<CR>

if has("gui_running")
  set guifont=Hack\ 13
  set background=dark
  colorscheme jellybeans
endif
