" below are all the vim plugins' extra settings and config


" UltiSnips - shortcut for listing snippets
" default one <c-tab> doesn't work with guake (and many other term emulators)
" as guake captures the <ctrl> key and doesn't send it to vim
let g:UltiSnipsListSnippets="<s-tab>"


" CtrlP Plugin config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" JSLint Plugin config
"let g:JSLintHighlightErrorLine = 0
"JSLintToggle

" VimOrganizer Plugin config
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()
" let g:org_capture_file = '~/org_files/mycaptures.org'
command! OrgCapture :call org#CaptureBuffer()
command! OrgCaptureFile :call org#OpenCaptureFile()

let g:org_todo_setup='TODO NEXT STARTED | DONE CANCELED'

let g:ft_ignore_pat = '\.org' " VimOrganizer setting.


" vim-airline config
let g:airline#extensions#tabline#enabled=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
"let g:airline_symbols.space = "\ua0"

" latex-box config;
let g:LatexBox_latexmk_options = "-pvc pdfps"
