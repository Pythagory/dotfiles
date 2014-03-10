set nocompatible

execute pathogen#infect()

"play nice with the terminal emulator
set t_Co=256

"Colors and stuff
colorscheme molokai
set background=light

"syntax highlighting
syntax on
filetype on

"line numbers are good
set number

"code formatting
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

"get vim to recognize drupal-specific file extensions
autocmd BufRead,BufNewFile *.module,*.install,*.test,*.inc,*.profile,*.view set filetype=php 
