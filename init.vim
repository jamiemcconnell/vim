set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'kien/ctrlp.vim'
"Plugin 'mileszs/ack.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'terryma/vim-multiple-cursors'
"Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'majutsushi/tagbar'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'dhruvasagar/vim-table-mode'
Plug 'ntpeters/vim-better-whitespace'
"Plugin 'easymotion/vim-easymotion'
"Plugin 'scrooloose/nerdcommenter'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'airblade/vim-rooter'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#single_quote = 'true'

"Colorschemes
Plug 'joshdick/onedark.vim'

" """""""""""" Autocompletion """"""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" Disable just for .tsx
" au BufEnter *.tsx,*.ts,*.jsx,*.js,*.py :CocDisable
" :CocInstall coc-json coc-rls
" Remap for rename current word
" nmap <leader>rn <Plug>(coc-rename)
" " Remap keys for gotos
nmap <silent> td <Plug>(coc-definition)
nmap <silent> tt <Plug>(coc-type-definition)
nmap <silent> ti <Plug>(coc-implementation)
nmap <silent> tr <Plug>(coc-references)
" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')
"nnoremap <silent> H :call CocActionAsync('highlight')<CR>
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
"	\ pumvisible() ? "\<C-n>" :
"	\ <SID>check_back_space() ? "\<TAB>" :
"	\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"nmap <C-c> :CocEnable<CR>
"nmap <C-x> :CocDisable<CR>

"autocmd CmdwinEnter * inoremap <expr><buffer> <TAB>
"      \ pumvisible() ? "\<C-n>" : "\<TAB>"
"			\ coc#refresh()

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable, 'rls']},
        \ 'whitelist': ['rust'],
        \ 'blacklist': ['javascript', 'jsx', 'tsx', 'typescript']
        \ })
endif


" Completion - youcompleteme
Plug 'Valloric/YouCompleteMe', {
     \ 'build' : {
     \     'mac' : './install.py --ts-completer'
     \    }
     \ }

""" Python
Plug 'davidhalter/jedi-vim'

"" Docker
Plug 'ekalinin/Dockerfile.vim'

"" Go
Plug 'fatih/vim-go'
let g:go_fmt_autosave=0

"" Nginx
Plug 'chr4/nginx.vim'

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"""" CSS syntax highlight
Plug 'othree/csscomplete.vim'
" Add Support css3 properties
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
" highlight hex colors in color
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.sass set filetype=sass.css
" scss lint
Plug 'gcorne/vim-sass-lint'

""""""" Javascript
Plug 'maxmellon/vim-jsx-pretty'
" Syntax highlighting for .jsx (typescript)
"Plug 'peitalin/vim-jsx-typescript'
"" Typescript "
Plug 'leafgarland/typescript-vim'

""""""" Brackets & Parentheses highlighting
" Allow autoclose paired characters like [,] or (,),
Plug 'jiangmiao/auto-pairs'
" Highlights the matching HTML tag when the cursor is positioned on a tag.
Plug 'Valloric/MatchTagAlways'
" Valloric/MatchTagAlways"
nnoremap <leader>% :MtaJumpToOtherTag<cr>
let g:mta_filetypes = {
            \ 'html' : 1, 'xhtml' : 1, 'xml' : 1,
            \ 'javascript' : 1,
            \ 'javascript.jsx' : 1,
            \ 'javascript.tsx' : 1,
            \ 'typescript.tsx' : 1,
            \ 'typescript' : 1
            \}

call plug#end()

syntax on
filetype plugin indent on

set encoding=utf-8
set t_Co=256

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Clear search highlights
map <silent> <leader><cr> :nohlsearch<cr>

" Defaults
set hidden
set noerrorbells        " No beeps!
set novisualbell        " No visual bell beeps!
set belloff=all         " Really no bells
set showcmd             " Show (partial) command in status line.
set ruler               " Show the line and column numbers of the cursor.
"set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set softtabstop=2
set splitright          " Vertical split to right of current.
set nostartofline       " Do not jump to first character with page commands.
"set autochdir           " Automcatically Change Dir when opening file
set so=7                " Scroll n lines from the top/bottom
set mouse=a
set nonumber

" speed up syntax highlighting
set ignorecase					" Make searching case insensitive
set smartcase 					" ... unless the query has capital letters.
set hlsearch
set noshowmatch         " Do not show matching brackets by flickering
set noshowmode          " We show the mode with airline or lightline
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set synmaxcol=300
set re=1

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

" Copy/Paste
set clipboard=unnamed

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" nerd-tree
" map <leader>- :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=35
let g:NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\~$', '\.git$', '.DS_Store', '.tern-port']
"let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" CtrlP
let g:ctrlp_max_height = 18
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
nnoremap <Leader>r :CtrlPMRUFiles<CR>
nnoremap <Leader>t :CtrlPTag<CR>


""""""""""""" YCM YouCompleteMe """"""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1 " default = 2
let g:ycm_min_num_identifier_candidate_chars = 0 " default = 0
let g:ycm_auto_trigger = 1 " complete as you type, default = 1
" let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_python_binary_path = 'python3'
let g:ycm_key_invoke_completion = '<C-n>'
" Disable loading YCM
"let g:loaded_youcompleteme = 1
" Disable loading YCM linting
let g:ycm_show_diagnostics_ui = 0
""" Javascript YCM completion
let g:ycm_semantic_triggers =  {
            \   'javascript,typescript,python,haskell,go' : ['.'],
            \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
            \   'ruby,rust' : ['.', '::'],
            \ }
" let g:ycm_rust_src_path = '/Users/peitalin/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "javascript":1,
            \ "javascript.jsx":1,
            \ "typescript":1,
            \ "typescript.tsx":1,
            \ "python":1,
            \ "rust":0,
            \ }
let g:ycm_filetype_blacklist = { 'rust': 1 }
" nnoremap <silent> te :YcmCompleter GetDoc<CR>
" nnoremap <silent> tt :YcmCompleter GetType<CR>
" nnoremap <silent> td :YcmCompleter GoToDefinition<CR>
" nnoremap <silent> tr :YcmCompleter RefactorRename

" FZF Search files
nnoremap <Leader>f :GFiles<CR>
nnoremap <Leader>F :FZF<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Commits<CR>
"nnoremap <leader>F :call fzf#vim#ag('', fzf#vim#with_preview({'options': ['--query', expand('<cword>')]}))<cr>

" Ack
" Exclamation mark causes it to _not_ open the first result by default
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" ctags/tagbar
nmap <F8> :TagbarToggle<CR>

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline                  = {}

let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

"Escape is slow: https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0

"JSON
let g:vim_json_syntax_conceal = 0

" Supertab
let g:SuperTabDefaultCompletionType = "context"

"Ale
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
\  'javascript': ['eslint'],
\  'jsx': ['eslint'],
\  'javascript.jsx': ['eslint'],
\  '*': ['remove_trailing_lines', 'trim_whitespace']
\}

" Match vim theme to terminal base16 ones
"if filereadable(expand("~/.vimrc_background"))
"  let base16colorspace=256
"  source ~/.vimrc_background
"endif

let g:vimwiki_list = [{'path': '~/Source/vimwiki'}]

let g:tagbar_type_markdown = {
\ 'ctagstype': 'markdown',
\ 'kinds': ['h:Heading_L1', 'i:Heading_L2', 'k:Heading_L3']
\ }

" Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

" GOLANG
" use goimports for formatting
let g:go_fmt_command = "goimports"

" turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>


" map <leader>- :NERDTreeToggle<CR>
map <leader>- :Defx -toggle -resume -direction=topleft -split=vertical -winwidth=40 -columns=indent:git:icon:filename:size:time <CR>
autocmd FileType defx call s:defx_init()
function! s:defx_init()
  setl nonumber
  setl norelativenumber
  setl listchars=
  setl nofoldenable
  setl foldmethod=manual

call defx#custom#column('icon', {
        \ 'directory_icon': '▸',
        \ 'opened_icon': '▾',
        \ 'root_icon': ' ',
        \ })

  " disable this mappings
  nnoremap <silent><buffer> <3-LeftMouse> <Nop>
  nnoremap <silent><buffer> <4-LeftMouse> <Nop>
  nnoremap <silent><buffer> <LeftMouse> <LeftMouse><Home>

  silent! nunmap <buffer> <Space>
  silent! nunmap <buffer> <C-l>
  silent! nunmap <buffer> <C-j>
  silent! nunmap <buffer> E
  silent! nunmap <buffer> gr
  silent! nunmap <buffer> gf
  silent! nunmap <buffer> -
  silent! nunmap <buffer> s

  " nnoremap <silent><buffer><expr> st  vimfiler#do_action('tabswitch')
  " nnoremap <silent><buffer> yY  :<C-u>call <SID>copy_to_system_clipboard()<CR>
  nnoremap <silent><buffer><expr> '
        \ defx#do_action('toggle_select') . 'j'
  " TODO: we need an action to clear all selections
  nnoremap <silent><buffer><expr> V
        \ defx#do_action('toggle_select_all')
  " nmap <buffer> v       <Plug>(vimfiler_quick_look)
  " nmap <buffer> p       <Plug>(vimfiler_preview_file)
  " nmap <buffer> i       <Plug>(vimfiler_switch_to_history_directory)

  " Define mappings

	nnoremap <silent><buffer><expr> u defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')

  nnoremap <silent><buffer><expr> gx
        \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> c
        \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> q
        \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> m
        \ defx#do_action('move')
  nnoremap <silent><buffer><expr> P
        \ defx#do_action('paste')
  "nnoremap <silent><buffer><expr> h defx#do_action('call', 'DefxSmartH')
  "nnoremap <silent><buffer><expr> <Left> defx#do_action('call', 'DefxSmartH')
  "nnoremap <silent><buffer><expr> l defx#do_action('call', 'DefxSmartL')
  "nnoremap <silent><buffer><expr> <Right> defx#do_action('call', 'DefxSmartL')
  "nnoremap <silent><buffer><expr> o defx#do_action('call', 'DefxSmartL')
  "nnoremap <silent><buffer><expr> <Cr>
  "      \ defx#is_directory() ?
  "      \ defx#do_action('open_tree') : defx#do_action('drop')
  "nnoremap <silent><buffer><expr> <2-LeftMouse>
  nnoremap <silent><buffer><expr> <Cr>
        \ defx#is_directory() ?
        \     (
        \     defx#is_opened_tree() ?
        \     defx#do_action('close_tree') :
        \     defx#do_action('open_tree')
        \     )
        \ : defx#do_action('drop')

  nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:filename:type:size:time')
  nnoremap <silent><buffer><expr> o defx#do_action('open_directory')
  nnoremap <silent><buffer><expr> sg defx#do_action('drop', 'vsplit')
  nnoremap <silent><buffer><expr> sv defx#do_action('drop', 'split')
  nnoremap <silent><buffer><expr> st defx#do_action('drop', 'tabedit')
  nnoremap <silent><buffer><expr> p defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> N defx#do_action('new_file')
  nnoremap <silent><buffer><expr> d defx#do_action('remove')
  nnoremap <silent><buffer><expr> r defx#do_action('rename')
  "nnoremap <silent><buffer><expr> yy defx#do_action('call', 'DefxYarkPath')
  nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
  nnoremap <silent><buffer><expr> j
        \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
        \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-r>
        \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
        \ defx#do_action('print')
  nnoremap <silent><buffer> <Home> :call cursor(2, 1)<cr>
  nnoremap <silent><buffer> <End>  :call cursor(line('$'), 1)<cr>
endf

" vim-rainbow
" let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" defx_git
let g:defx_git#indicators = {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ }

" Vim Rooter
" let g:rooter_patterns = ['Rakefile', '.git/', 'package.json']

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

"let test#javascript#reactscripts#executable = 'docker-compose -f "~/src/elemez-docker/development/docker-compose.yml" exec cd src/ui/ && npm run unit'



"""""""" Vim lightline  """

let g:lightline = {
    \ 'colorscheme': 'oneNeon_lightline',
    \ 'mode_map': { 'c': 'NORMAL' },
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'filename' ] ]
    \ },
    \ 'component_function': {
    \   'modified': 'LightlineModified',
    \   'readonly': 'LightlineReadonly',
    \   'filename': 'LightlineFilename',
    \   'fileformat': 'LightlineFileformat',
    \   'filetype': 'LightlineFiletype',
    \   'fileencoding': 'LightlineFileencoding',
    \   'mode': 'LightlineMode',
    \ },
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
    \ }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '♤ ' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != expand('%:f') ? expand('%:f') : '[New File]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

" NORMAL / INSERT / VISUAL
function! LightlineMode()
  return winwidth(0) > 40 ? lightline#mode() : ''
endfunction

" javascript.jsx
function! LightlineFiletype()
  return winwidth(0) > 100 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

" utf-8
function! LightlineFileencoding()
  return winwidth(0) > 80 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

" unix
function! LightlineFileformat()
  return winwidth(0) > 120 ? &fileformat : ''
endfunction

let g:lightline.enable = {
\   'tabline': 1
\ }

function! ResizeCmdHeight()
  if &columns < 90
    set cmdheight=2
  else
    set cmdheight=1
  endif
endfunction

augroup ResizeCmdOnVimResized
    autocmd!
    autocmd VimResized * call ResizeCmdHeight()
augroup END



""""""""""""" Color Schemes """"""""""""""""
set termguicolors
colorscheme onedark
" colorscheme japanesque
" colorscheme srcery
" colorscheme materialtheme
" autocmd FileType rust colorscheme srcery
" autocmd FileType python colorscheme onedark

" Normal         xxx ctermfg=145 ctermbg=235 guifg=#ABB2BF guibg=#282C34
highlight Normal guibg=#202328
highlight MatchParen guifg=#C678DD guibg=#504066
highlight LineNr    guifg=#151822
highlight CursorLineNr guifg=#56B6C2
highlight Error guifg=#f57373 guibg=#804040
highlight vimError guifg=#f57373 guibg=#804040

hi IndentGuidesEven guibg=#2a2e30 guifg=#24282a
hi IndentGuidesOdd guibg=#262a2c guifg=#24282a
hi Comment cterm=italic guifg=#4a5158
hi String guifg=#98C379 guibg=#2a2e34

""" browns
" function params: numbers and constants
" hi Keyword guifg=#907161
" hi Statement guifg=#56B6C2
" hi Conditional guifg=#56B6C2

" Yellows
hi Number guifg=#E5C07B
hi Special guifg=#E5C07B
hi Boolean guifg=#E5C07B
hi Type guifg=#F0A15F
" #D19A66

" purple
hi CtrlPMatch guifg=#ba9ef7
hi Visual guibg=#364652
hi Keyword guifg=#ba9ef7
hi Function guifg=#5682A3

" dark grey, RUST preproc
hi Preproc guifg=#37505C

""" Pink
"""""" vim-jsx ONLY
hi Identifier guifg=#D96Ab2
" hi Identifier cterm=italic guifg=#D96Ab2
" hi Statement guifg=#D96AB2
hi Conditional guifg=#D96AB2

""" Go and Python
" Light blue
autocmd FileType python,go highlight Keyword guifg=#59ACE5
autocmd FileType python,go highlight goDeclaration guifg=#59ACE5
" Dark blue
autocmd FileType python,go highlight Function guifg=#2974a1
autocmd FileType python,go highlight goConditional guifg=#2974a1
" cyan
autocmd FileType python,go highlight goStatement guifg=#56B6C2
autocmd FileType python,go highlight goRepeat guifg=#56B6C2


" " dark red
" hi tsxTagName guifg=#E06C75
" " orange
" hi tsxCloseString guifg=#F99575
" hi tsxCloseTag guifg=#F99575
" hi tsxAttributeBraces guifg=#F99575
" hi tsxEqual guifg=#F99575
" " yellow
" hi tsxAttrib guifg=#F8BD7F cterm=italic

" light blue
hi tsxTagName guifg=#59ACE5
" dark blue
hi tsxCloseString guifg=#2974a1
hi tsxCloseTag guifg=#2974a1
hi tsxAttributeBraces guifg=#2974a1
hi tsxEqual guifg=#2974a1
" green
hi tsxAttrib guifg=#1BD1C1


" cyan
hi Constant guifg=#56B6C2
hi typescriptBraces guifg=#56B6C2
hi typescriptEndColons guifg=#56B6C2
hi typescriptRef guifg=#56B6C2
hi typescriptPropietaryMethods guifg=#56B6C2
hi typescriptEventListenerMethods guifg=#56B6C2
hi typescriptFunction guifg=#56B6C2
hi typescriptVars guifg=#56B6C2
hi typescriptParen guifg=#56B6C2
hi typescriptDotNotation guifg=#56B6C2
hi typescriptBracket guifg=#56B6C2
hi typescriptBlock guifg=#56B6C2
hi typescriptJFunctions guifg=#56B6C2
hi typescriptSFunctions guifg=#56B6C2
hi typescriptInterpolationDelimiter guifg=#56B6C2
hi typescriptExceptions guifg=#DDA671
" hi typescriptIdentifier guifg=#907161
" hi typescriptStorageClass guifg=#907161
hi typescriptIdentifier guifg=#65809D
hi typescriptStorageClass guifg=#65809D
" JSON
hi jsonCommentError cterm=italic guifg=#4a5158

" javascript
hi jsParens guifg=#56B6C2
hi jsObjectBraces guifg=#C678DD
hi jsFuncBraces guifg=#56B6C2
hi jsObjectFuncName guifg=#D19A66
hi jsObjectKey guifg=#56B6C2

" vim-jsx-typescript
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66


" JSX Dark Blue and Neon Green highlights
hi xmlEndTag guifg=#2974a1
" hi tsxCloseString guifg=#2974a1
hi tsxCloseString guifg=#15608f
hi htmlTag guifg=#2974a1
hi htmlEndTag guifg=#2974a1
hi htmlTagName guifg=#59ACE5
hi tsxAttrib guifg=#1BD1C1

hi tsxTypeBraces guifg=#BDA7CC
hi tsxTypes guifg=#8D779C
hi tsxIfOperator guifg=#56B6C2
hi tsxElseOperator guifg=#56B6C2


" rust cyan
hi rustModPath guifg=#DF997A
hi rustFuncCall guifg=#60A0D0
hi rustFuncName guifg=#60A0D0
hi rustTrait guifg=#C898C8

hi rustFoldBraces guifg=#FFEAD0
hi rustBoxPlacementBalance guifg=#C898C8

hi ALEError      guibg=#612E2D cterm=italic
hi ALEWarning    guibg=#523D30 cterm=italic
" Coc linting colors
hi CocErrorHighlight   guibg=#612E2D cterm=italic
hi CocWarningHighlight guibg=#523D30 cterm=italic
hi CocHighlightText    guibg=#40334A

hi CocInfoHighlight    guibg=#4c4c4c cterm=italic
hi CocHintHighlight    guibg=#4c4c4c cterm=italic

hi CocErrorSign   guifg=#CD584F
hi CocWarningSign guifg=#D3785D



" Identify the syntax highlighting group used at the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"let g:python_host_prog = '/usr/bin/python2'
"let g:python3_host_prog = '/usr/bin/python3'


" replace tabs with 4 whitespace
" nmap <F4> :%s/\t/    /g<CR>
nmap <Leader>s :%s/\t/    /g<CR>
autocmd FileType typescript.tsx,javascript.tsx,javascript,typescript nmap <Leader>s :%s/\t/  /g<CR>
" au BufNewFile,BufRead *.js *.html nmap <Leader>s :%s/\t/  /g<CR>
autocmd FileType python,rust,haskell,markdown setlocal shiftwidth=4 tabstop=4
autocmd FileType typescript.tsx,javascript.tsx,javascript,typescript setlocal shiftwidth=2 tabstop=2 softtabstop=4 noexpandtab
set softtabstop=4 noexpandtab
" au BufNewFile,BufRead *.hbs setlocal ft=d
autocmd BufNewFile,BufRead *.ts,*.js set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.vue set filetype=vue.typescript
autocmd FileType vue.typescript setlocal commentstring=//\ %s
autocmd FileType typescript setlocal commentstring=//\ %s
autocmd FileType json setlocal commentstring=//\ %s
" autocmd FileType *.jsx,*.tsx setlocal commentstring=//\ %s
autocmd FileType json syntax match Comment +\/\/.\+$+
