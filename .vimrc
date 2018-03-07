execute pathogen#infect()
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

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" nerd-tree
map <leader>- :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\~$', '\.git$', '.DS_Store', '.tern-port']
"let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" CtrlP
let g:ctrlp_max_height = 18
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>r :CtrlPMRUFiles<CR>

" Autocompletion
let g:ycm_autoclose_preview_window_after_completion=1
let g:tern#is_show_argument_hints_enabled=1
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

" FZF Search files
nnoremap <Leader>f :FZF<CR>

" Ack
" Exclamation mark causes it to _not_ open the first result by default
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

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

"Javascript
let g:javascript_plugin_flow = 1

" Supertab
let g:SuperTabDefaultCompletionType = "context"

"Ale
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
\  'javascript': ['eslint'],
\  'jsx': ['eslint'],
\  'javascript.jsx': ['eslint']
\}

" Match vim theme to terminal base16 ones
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
