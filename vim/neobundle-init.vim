" NeoBundle Setup {{{1
" Script taken from https://github.com/dhruvasagar/dotfiles/tree/master/vim
" Adapted by ecthiender

let g:bundles_path = '~/.vim/bundle/'

if has('vim_starting')
  execute 'set runtimepath+=' . g:bundles_path . 'neobundle.vim/'
  if !isdirectory(expand(g:bundles_path . 'neobundle.vim'))
    echo "Installing NeoBundle\n"
    silent execute '!mkdir -p ' . g:bundles_path
    silent execute '!git clone https://github.com/Shougo/neobundle.vim ' . g:bundles_path . 'neobundle.vim'
  endif
endif

" NeoBundles {{{1

" begin {{{2
call neobundle#begin(expand(g:bundles_path))

" Settings {{{3
let g:neobundle#types#git#default_protocol='ssh'

" Shougo Plugins {{{3
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundleLazy 'Shougo/vimshell.vim', {
      \ 'depends': [['Shougo/vimproc.vim', {
      \   'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak'
      \   }
      \ }]],
      \ 'autoload' : {
      \   'commands': [
      \     'VimShell',
      \     'VimShellExecute',
      \     'VimShellInteractive',
      \     'VimShellTerminal',
      \     'VimShellPop'
      \   ],
      \   'functions': ['vimshel#interactive#send']
      \ }
      \}



" load my list of plugins
source ~/.vim/plugins.vim


" end {{{2
call neobundle#end()

" NeoBundleCheck {{{2
NeoBundleCheck

