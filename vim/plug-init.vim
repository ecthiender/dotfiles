let g:bundles_path = '~/.vim/plugs/'

if !filereadable(expand('~/.vim/autoload/plug.vim'))
  echo "Installing Vim-Plug\n"
  execute "!" . 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin(g:bundles_path)

" load my list of plugins
source ~/.vim/plugins.vim

call plug#end()

