
 "              _             _                              __
 "        _ __ | |_   _  __ _(_)_ __  ___    ___ ___  _ __  / _|
 "       | '_ \| | | | |/ _` | | '_ \/ __|  / __/ _ \| '_ \| |_
 "       | |_) | | |_| | (_| | | | | \__ \ | (_| (_) | | | |  _|
 "       | .__/|_|\__,_|\__, |_|_| |_|___/  \___\___/|_| |_|_|
 "       |_|            |___/
 "
 "
let g:tmux_resizer_no_mappings = 1

"################
" Latex settings
"################
let g:livepreview_previewer = 'evince'
let g:Tex_CompileRule_pdf = 'latexmk -pdf'
let g:LatexBox_latexmk_options = "-pvc -pdfps"
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_latexmk_async = 1
" performance optimization
let g:vimtex_motion_matchparen = 0

"##################
" Airline settings
"##################
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#buffer_min_count =2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" performance optimization
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#whitespace#enabled = 0

"####################
" Tmux Line settings
"####################
let g:tmuxline_theme = 'zenburn'

"###################
" NerdTree settings
"###################
let g:NERDTreeMinimalUI = 0
let g:NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
let g:NERDTreeMouseMode = 3
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeWinSize = 40
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Add your own custom formats or override the defaults
let g:NERDTrimTrailingWhitespace = 1

"########################
" YouCompleteMe settings
"########################
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" let g:ycm_semantic_triggers = {'haskell' : ['.']}
" let g:necoghc_use_stack = 1
" let g:necoghc_enable_detailed_browse = 1

" let g:ycm_server_python_interpreter = '/usr/bin/python2'
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_semantic_triggers =  {
"   \   'c' : ['->', '.'],
"   \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
"   \             're!\[.*\]\s'],
"   \   'ocaml' : ['.', '#'],
"   \   'cpp,objcpp' : ['->', '.', '::'],
"   \   'perl' : ['->'],
"   \   'php' : ['->', '::'],
"   \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
"   \   'ruby' : ['.', '::'],
"   \   'lua' : ['.', ':'],
"   \   'erlang' : [':'],
"   \   'haskell' : ['.'],
"   \ }

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 1

"############################
" Async Lint Engine settings
"############################
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '--'

" let g:deoplete#enable_at_startup = 1

"#############################
" HardTime to break bad habits
"#############################
let g:hardtime_default_on = 1
let g:hardtime_timeout = 2000
let g:hardtime_showmsg = 0
let g:hardtime_allow_different_key = 1
let g:hardtime_maxcount = 4
let g:hardtime_ignore_buffer_patterns = [ "NERD.*" ]
let g:list_of_normal_keys = ["h", "j", "k", "l"]
let g:hardtime_ignore_quickfix = 1

let g:vim_json_syntax_conceal = 0

" custom tmux navigator key maps
let g:tmux_navigator_no_mappings = 1
let g:tmuxcomplete#trigger = 'omnifunc'

" write big choose win letters on screen
let g:choosewin_overlay_enable = 1

let g:vim_tags_auto_generate = 1

let g:formatprg_js = "js-beautify"
let g:formatprg_args_js = "-i %@"

" lilydjwg/colorizer is inefficient for large files
let g:colorizer_maxlines = 200

let php_sql_query = 1
let php_htmlInStrings = 1

let Tlist_Use_Right_Window = 1

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" add jsx syntax highlights for .js files
let g:jsx_ext_required = 0

" overcome limit imposed by max height
let g:ackprg = 'rg --vimgrep'
set grepprg=rg\ --vimgrep
let g:tmux_navigator_no_mappings = 1

let g:winresizer_horiz_resize = 1
let g:vim_markdown_preview_github=1

" let g:UltiSnipsExpandTrigger="<C-l>"

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
   \   <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)


autocmd BufRead,BufNewFile ~/.xmonad/* call s:add_xmonad_path()
function! s:add_xmonad_path()
  if !exists('b:ghcmod_ghc_options')
    let b:ghcmod_ghc_options = []
  endif
  call add(b:ghcmod_ghc_options, '-i' . expand('~/.xmonad/XMonad'))
endfunction

let g:haskell_indent_disable=1
let g:ale_linters = {
\   'haskell': ['hlint', 'ghc-mod', 'hdevtools', 'stack_build', 'stack_ghc'],
\}

" let g:completor_auto_trigger = 1
