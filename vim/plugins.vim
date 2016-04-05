" this is the list of all the vim plugins I use

" plugins I'm familiar with and use regularly
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'klen/python-mode'
NeoBundle 'csexton/trailertrash.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'edkolev/tmuxline.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'leshill/vim-json'
NeoBundle 'ap/vim-css-color'
" Vim haskell
NeoBundle 'dag/vim2hs'
" Smart buffer closing
NeoBundle 'cespare/vim-sbd'


" Lazy load these plugins

" VimOrganizer - org mode for vim
NeoBundle 'hsitz/VimOrganizer', {
      \     'depends': [
      \       'gregsexton/VimCalc',
      \       'mattn/calendar-vim',
      \       'vim-scripts/utl.vim',
      \       'jean/NrrwRgn'
      \     ]}

" jade plugin
NeoBundleLazy 'digitaltoad/vim-pug', {
      \ 'autoload': {
      \   'filetypes': ['jade', 'pug']
      \ }
      \}

" Yaml support
NeoBundleLazy 'chase/vim-ansible-yaml', {
      \ 'autoload': {
      \   'filetypes': ['yaml', 'yml']
      \ }
      \}

" LaTeX support
NeoBundleLazy 'LaTeX-Box-Team/LaTeX-Box', {
      \ 'autoload': {
      \   'filetypes': ['tex']
      \ }
      \}


" don't use much - should explore
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'SirVer/ultisnips'
" Fast and Easy Find and Replace Across Multiple Files
NeoBundle 'vim-scripts/EasyGrep'


"NeoBundle 'tpope/vim-rake'
"NeoBundle 'tpope/vim-eunuch'
"NeoBundle 'tpope/vim-repeat'
"NeoBundle 'tpope/vim-abolish'
"NeoBundle 'tpope/vim-endwise'
"NeoBundle 'tpope/vim-sensible'
"NeoBundle 'tpope/vim-obsession'
"NeoBundle 'tpope/vim-scriptease'
"NeoBundle 'tpope/vim-unimpaired'
"NeoBundle 'tpope/vim-speeddating'
"NeoBundle 'tpope/vim-characterize'

"NeoBundleLazy 'tpope/vim-dispatch', {
"      \ 'autoload': {
"      \   'commands': ['Start', 'Dispatch']
"      \ }
"      \}
"

"NeoBundle 'kana/vim-vspec'
"NeoBundle 'gregsexton/gitv'
"NeoBundle 'chrisbra/NrrwRgn'
"NeoBundle 'garbas/vim-snipmate', {'depends': ['MarcWeber/vim-addon-mw-utils', 'tomtom/tlib_vim']}
"NeoBundle 'honza/vim-snippets'
"NeoBundle 'jistr/vim-nerdtree-tabs'

"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'MarcWeber/ultisnips'
"NeoBundle 'AndrewRadev/splitjoin.vim'
"NeoBundle 'Keithbsmiley/investigate.vim'

"NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'ryanss/vim-hackernews'
"NeoBundle 'skammer/vim-css-color'

"NeoBundleLazy 'dahu/vimple', {
"      \ 'autoload': {
"      \   'commands': ['View']
"      \ }
"      \}
"NeoBundleLazy 'sjl/gundo.vim', {
"      \ 'autoload': {
"      \   'commands': ['GundoToggle']
"      \ }
"      \}
"NeoBundleLazy 'mattn/gist-vim', {
"      \ 'depends': 'mattn/webapi-vim',
"      \ 'autoload': {
"      \   'commands': ['Gist']
"      \ }
"      \}
"NeoBundleLazy 'godlygeek/tabular', {
"      \ 'autoload': {
"      \   'commands': ['Tabular']
"      \ }
"      \}
"NeoBundleLazy 'wavded/vim-stylus', {
"      \ 'autoload': {
"      \   'filetypes': ['stylus']
"      \ }
"      \}
"NeoBundleLazy 'groenewege/vim-less', {
"      \ 'autoload': {
"      \   'filetypes': ['less']
"      \ }
"      \}
"NeoBundleLazy 'jnwhiteh/vim-golang', {
"      \ 'autoload': {
"      \   'filetypes': ['go']
"      \ }
"      \}
"NeoBundleLazy 'thinca/vim-quickrun', {
"      \ 'autoload': {
"      \   'mappings': [['n', '<Plug>(quickrun)'], ['o', '<Plug>(quickrun-op)']]
"      \ }
"      \}
"NeoBundleLazy 'tomtom/tcomment_vim', {
"      \ 'autoload': {
"      \   'mappings': [['nx', 'gc', 'gcc', 'gC']]
"      \ }
"      \}
"NeoBundleLazy 'bkad/CamelCaseMotion', {
"      \ 'autoload': {
"      \   'mappings': ['<Plug>CamelCaseMotion_']
"      \ }
"      \}
"NeoBundleLazy 'derekwyatt/vim-scala', {
"      \ 'autoload': {
"      \   'filetypes': ['scala']
"      \ }
"      \}

"NeoBundleLazy 'pangloss/vim-javascript', {
"      \ 'autoload': {
"      \   'filetypes': ['javascript']
"      \ }
"      \}
"NeoBundleLazy 'marijnh/tern_for_vim', {
"      \ 'build' : {
"      \   'unix': 'npm install'
"      \  },
"      \ 'autoload': {
"      \   'filetypes': ['javascript']
"      \ }
"      \}

"NeoBundleLazy 'slim-template/vim-slim', {
"      \ 'autoload': {
"      \   'filetypes': ['slim']
"      \ }
"      \}

"NeoBundleLazy 'kchmck/vim-coffee-script', {
"      \ 'autoload': {
"      \   'filetypes': ['coffee']
"      \ }
"      \}

"NeoBundleLazy 'guns/xterm-color-table.vim', {
"      \ 'autoload': {
"      \   'commands': ['XtermColorTable']
"      \ }
"      \}

"NeoBundleLazy 'PeterRincker/vim-argumentative', {
"      \ 'autoload': {
"      \   'mappings': [
"      \    ['nxo', '[,', '],', '<,', '>,'],
"      \    ['xo', 'i,', 'a,']
"      \   ]
"      \ }
"      \}

" My plugins
"NeoBundleLocal ~/code/vim_plugins
