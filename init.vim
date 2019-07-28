set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'elzr/vim-json'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'mxw/vim-jsx'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'w0rp/ale'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'junegunn/gv.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'majutsushi/tagbar'
Plugin 'ianks/vim-tsx'
Plugin 'vimwiki/vimwiki'
Plugin 'kristijanhusak/vim-carbon-now-sh'
Plugin 'junegunn/vim-easy-align'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/defx.nvim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'kristijanhusak/defx-git'
Plugin 'airblade/vim-rooter'
call vundle#end()

syntax on
filetype plugin indent on

set encoding=utf-8
set t_Co=256
"let base16colorspace=256
"set background=dark
"set termguicolors

"color base16-dracula

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Clear search highlights
map <silent> <leader><cr> :nohlsearch<cr>

" Defaults
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
set nowb
set noswapfile

" Copy/Paste
set clipboard=unnamed

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

" Autocompletion
let g:ycm_autoclose_preview_window_after_completion=1
let g:tern#is_show_argument_hints_enabled=1
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

" FZF Search files
nnoremap <Leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Commits<CR>
nnoremap <leader>F :call fzf#vim#ag('', fzf#vim#with_preview({'options': ['--query', expand('<cword>')]}))<cr>

" Ack
" Exclamation mark causes it to _not_ open the first result by default
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" ctags/tagbar
nmap <F8> :TagbarToggle<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:Airline_theme='dark'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

nmap <leader>. :bnext<CR>
nmap <leader>, :bprevious<CR>
nmap <silent>1 <Plug>AirlineSelectTab1
nmap <silent>2 <Plug>AirlineSelectTab2
nmap <silent>3 <Plug>AirlineSelectTab3
nmap <silent>4 <Plug>AirlineSelectTab4
nmap <silent>5 <Plug>AirlineSelectTab5
nmap <silent>6 <Plug>AirlineSelectTab6
nmap <silent>7 <Plug>AirlineSelectTab7
nmap <silent>8 <Plug>AirlineSelectTab8
nmap <silent>9 <Plug>AirlineSelectTab9

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
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

let g:vimwiki_list = [{'path': '~/Source/vimwiki'}]

let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }

" Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

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
