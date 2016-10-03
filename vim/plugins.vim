" this is the list of all the vim plugins I use

" plugins I'm familiar with and use regularly
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', {'on': 'NerdTreeToggle'}
Plug 'scrooloose/syntastic'
Plug 'klen/python-mode', {'for': 'python'}
Plug 'csexton/trailertrash.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'leshill/vim-json'
Plug 'ap/vim-css-color', {'for': ['css', 'less', 'scss']}

" Vim haskell
Plug 'dag/vim2hs', {'for': ['haskell']}
"Plug 'raichoo/haskell-vim', {'for': ['haskell']}
Plug 'bitc/vim-hdevtools'

" Smart buffer closing
Plug 'cespare/vim-sbd'

Plug 'ap/vim-css-color', {'for': ['css', 'less', 'scss']}

"
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


"Plug 'tpope/vim-rake'
"Plug 'tpope/vim-eunuch'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-endwise'
"Plug 'tpope/vim-sensible'
"Plug 'tpope/vim-obsession'
"Plug 'tpope/vim-scriptease'
"Plug 'tpope/vim-unimpaired'
"Plug 'tpope/vim-speeddating'
"Plug 'tpope/vim-characterize'

"PlugLazy 'tpope/vim-dispatch', {
"      \ 'autoload': {
"      \   'commands': ['Start', 'Dispatch']
"      \ }
"      \}
"

"Plug 'kana/vim-vspec'
"Plug 'gregsexton/gitv'
"Plug 'chrisbra/NrrwRgn'
"Plug 'garbas/vim-snipmate', {'depends': ['MarcWeber/vim-addon-mw-utils', 'tomtom/tlib_vim']}
"Plug 'honza/vim-snippets'
"Plug 'jistr/vim-nerdtree-tabs'

"Plug 'MarcWeber/ultisnips'
"Plug 'AndrewRadev/splitjoin.vim'
"Plug 'Keithbsmiley/investigate.vim'

"Plug 'Valloric/YouCompleteMe'
"Plug 'ryanss/vim-hackernews'
"Plug 'skammer/vim-css-color'

"PlugLazy 'dahu/vimple', {
"      \ 'autoload': {
"      \   'commands': ['View']
"      \ }
"      \}
"PlugLazy 'sjl/gundo.vim', {
"      \ 'autoload': {
"      \   'commands': ['GundoToggle']
"      \ }
"      \}
"PlugLazy 'mattn/gist-vim', {
"      \ 'depends': 'mattn/webapi-vim',
"      \ 'autoload': {
"      \   'commands': ['Gist']
"      \ }
"      \}
"PlugLazy 'godlygeek/tabular', {
"      \ 'autoload': {
"      \   'commands': ['Tabular']
"      \ }
"      \}
"PlugLazy 'wavded/vim-stylus', {
"      \ 'autoload': {
"      \   'filetypes': ['stylus']
"      \ }
"      \}
"PlugLazy 'groenewege/vim-less', {
"      \ 'autoload': {
"      \   'filetypes': ['less']
"      \ }
"      \}
"PlugLazy 'jnwhiteh/vim-golang', {
"      \ 'autoload': {
"      \   'filetypes': ['go']
"      \ }
"      \}
"PlugLazy 'thinca/vim-quickrun', {
"      \ 'autoload': {
"      \   'mappings': [['n', '<Plug>(quickrun)'], ['o', '<Plug>(quickrun-op)']]
"      \ }
"      \}
"PlugLazy 'tomtom/tcomment_vim', {
"      \ 'autoload': {
"      \   'mappings': [['nx', 'gc', 'gcc', 'gC']]
"      \ }
"      \}
"PlugLazy 'bkad/CamelCaseMotion', {
"      \ 'autoload': {
"      \   'mappings': ['<Plug>CamelCaseMotion_']
"      \ }
"      \}
"PlugLazy 'derekwyatt/vim-scala', {
"      \ 'autoload': {
"      \   'filetypes': ['scala']
"      \ }
"      \}

"PlugLazy 'pangloss/vim-javascript', {
"      \ 'autoload': {
"      \   'filetypes': ['javascript']
"      \ }
"      \}
"PlugLazy 'marijnh/tern_for_vim', {
"      \ 'build' : {
"      \   'unix': 'npm install'
"      \  },
"      \ 'autoload': {
"      \   'filetypes': ['javascript']
"      \ }
"      \}

"PlugLazy 'slim-template/vim-slim', {
"      \ 'autoload': {
"      \   'filetypes': ['slim']
"      \ }
"      \}

"PlugLazy 'kchmck/vim-coffee-script', {
"      \ 'autoload': {
"      \   'filetypes': ['coffee']
"      \ }
"      \}

"PlugLazy 'guns/xterm-color-table.vim', {
"      \ 'autoload': {
"      \   'commands': ['XtermColorTable']
"      \ }
"      \}

"PlugLazy 'PeterRincker/vim-argumentative', {
"      \ 'autoload': {
"      \   'mappings': [
"      \    ['nxo', '[,', '],', '<,', '>,'],
"      \    ['xo', 'i,', 'a,']
"      \   ]
"      \ }
"      \}

" My plugins
"PlugLocal ~/code/vim_plugins
