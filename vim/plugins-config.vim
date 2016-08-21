" below are all the vim plugins' extra settings and config


" UltiSnips - shortcut for listing snippets
" default one <c-tab> doesn't work with guake (and many other term emulators)
" as guake captures the <ctrl> key and doesn't send it to vim
let g:UltiSnipsListSnippets="<s-tab>"


" CtrlP Plugin config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|venv)|(\.(swp|ico|git|svn|hg|ropeproject))$'

" JSLint Plugin config
"let g:JSLintHighlightErrorLine = 0
"JSLintToggle

" VimOrganizer Plugin config
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()

" let g:org_capture_file = '~/org_files/mycaptures.org'
let g:org_command_for_emacsclient = 'emacsclient'

command! OrgCapture :call org#CaptureBuffer()
command! OrgCaptureFile :call org#OpenCaptureFile()

let g:org_todo_setup='TODO NEXT STARTED | DONE CANCELED'

let g:ft_ignore_pat = '\.org' " VimOrganizer setting.


" vim-airline config
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
"let g:airline_theme='luna'
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
"let g:tmuxline_powerline_separators = 0
"let g:tmuxline_preset = 'full'
let g:tmuxline_preset = {
  \'a': '#S',
  \'b': '#H',
  \'c': '',
  \'win': '#I #W',
  \'cwin': '#I #W',
  \'x': [
          \'#(~/dotfiles/tmux/segments/speed.sh wlp3s0)',
          \'#(~/dotfiles/tmux/segments/sysload.sh)'],
  \'y': '#(~/dotfiles/tmux/segments/weather.sh)',
  \'z': '%I:%M %p'}
"let g:airline_symbols.space = "\ua0"

" latex-box config;
let g:LatexBox_latexmk_options = "-pvc pdfps"

" Pymode configs
let g:pymode_folding = 0
let g:pymode_rope_complete_on_dot = 0

" NerdTree config
let NERDTreeIgnore = ['.pyc']
