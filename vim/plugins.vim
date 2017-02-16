" this is the list of all the vim plugins I use

" essentials
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'csexton/trailertrash.vim'
Plug 'scrooloose/nerdcommenter'

" look and feel
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'flazz/vim-colorschemes'

" Syntax highlighting
Plug 'leshill/vim-json', {'for': ['json']}
Plug 'ap/vim-css-color', {'for': ['css', 'less', 'scss']}


" Development goodies..
" Python
Plug 'klen/python-mode', {'for': 'python'}
" Haskell
Plug 'dag/vim2hs', {'for': ['haskell']}
"Plug 'raichoo/haskell-vim', {'for': ['haskell']}
Plug 'bitc/vim-hdevtools'


" Smart buffer closing - leader bd
Plug 'cespare/vim-sbd'

"Plug 'rking/ag.vim'

" VimOrganizer - org mode for vim
Plug 'hsitz/VimOrganizer'
", {
"      \     'depends': [
"      \       'gregsexton/VimCalc',
"      \       'mattn/calendar-vim',
"      \       'vim-scripts/utl.vim',
"      \       'jean/NrrwRgn'
"      \     ]}
"

" jade plugin
Plug 'digitaltoad/vim-pug', {'for': ['jade', 'pug']}

" Yaml support
"Plug 'chase/vim-ansible-yaml', {'for': ['yaml', 'yml']}

" LaTeX support
Plug 'LaTeX-Box-Team/LaTeX-Box', {'for': ['tex']}

" don't use much - should explore
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
" Fast and Easy Find and Replace Across Multiple Files
Plug 'vim-scripts/EasyGrep'


" My plugins
"PlugLocal ~/code/vim_plugins
