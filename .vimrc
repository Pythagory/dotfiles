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

" Strip trailing whitespace, stolen from vimcasts.org
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Automatically strip trailing whitespace on "safe" files
autocmd BufWritePre *.php,*.lisp,*.py,*.js :call <SID>StripTrailingWhitespaces()
