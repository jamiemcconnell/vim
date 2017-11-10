# vim setup

### Install

`cp ~/.vimrc ~/.vimrc-orig`  
`git clone git@github.com:jamiemcconnell/vim.git vim`
`cd vim`
`ln -s ${pwd} ~/.vim`  
`ln -s $(pwd)/.vimrc ~/.vimrc`

### Tern Setup

- run `npm install` from the `bundle/term_for_vim`directory

### YouCompleteMe

- Run `git submodule update --init —recursive` inside vim repo folder
- Run `./install.py --tern-completer` from `bundle/YouCompleteMe`

### Ack

- Run `brew install ack`

### A.L.E

- Run `cd ~ && yarn global add eslint`
- Follow the instrutions - use Airbnb base, select to use it for Linting
- Install dotfiles from your dotfiles project


### ESLint

globally install `eslint babel-eslint eslint-plugin-flowtype`

run `npm install eslint babel-eslint eslint-plugin-flowtype --save-dev` in the projects


### Packages

* [github.com:Valloric/YouCompleteMe.git](git@github.com:Valloric/YouCompleteMe.git)
* [github.com:mileszs/ack.vim.git](git@github.com:mileszs/ack.vim.git)
* [github.com/kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)
* [github.com:Raimondi/delimitMate.git](git@github.com:Raimondi/delimitMate.git)
* [github.com:junegunn/fzf.git](git@github.com:junegunn/fzf.git)
* [github.com:junegunn/fzf.vim.git](git@github.com:junegunn/fzf.vim.git)
* [github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree.git)
* [github.com:ternjs/tern_for_vim.git](git@github.com:ternjs/tern_for_vim.git)
* [github.com/bling/vim-airline](https://github.com/bling/vim-airline)
* [github.com/vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [github.com/airblade/vimgutter](https://github.com/airblade/vim-gitgutter)
* [github.com/pangloss/vim-javascript](https://github.com/pangloss/vim-javascript.git)
* [github.com:elzr/vim-json.git](git@github.com:elzr/vim-json.git)
* [github.com:mxw/vim-jsx.git](git@github.com:mxw/vim-jsx.git)
* [github.com:terryma/vim-multiple-cursors.git](git@github.com:terryma/vim-multiple-cursors.git)
* [github.com/tpope/vim-surround](git://github.com/tpope/vim-surround.git)
* [github.com:christoomey/vim-tmux-navigator.git](git@github.com:christoomey/vim-tmux-navigator.git)
