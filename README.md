# vim setup

### Install

`cp ~/.vimrc ~/.vimrc-orig`  
`git clone git@github.com:jamiemcconnell/vim.git vim`  
`cd vim`  
`ln -s ${pwd} ~/.vim`  
`ln -s $(pwd)/.vimrc ~/.vimrc`

### Globals (ESLint Typescript etc)
- Check NodeJS version (currently `11.0.0`)
- Run `yarn global add typescript eslint @typescript-eslint/parser`

### YouCompleteMe
- Run `./install.py` from `bundle/YouCompleteMe`

### Ack
- Run `brew install ack`

### Install Packages
- Run `:PackageInstall`

