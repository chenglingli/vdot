"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Environment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" General
set encoding=utf-8             " Sets the default encoding
set background=dark            " Assume a dark background
filetype plugin indent on      " Automatically detect file types.
set autochdir                  " always switch to the current file directory.

set nospell                    " spell checking off
set shortmess+=filmnrxoOtT     " abbrev. of messages (avoids 'hit enter')
set virtualedit=onemore        " allow for cursor beyond last character
set history=1000               " Store a ton of history (default is 20)

set swapfile                   " swapfile
set backup                     " backups are nice ...
set undofile                   " persistent undo
set undolevels=1000            " maximum number of changes that can be undone
set undoreload=10000           " maximum number lines to save for undo on a buffer reload

syntax on                      " syntax highlighting
au syntax * syntax sync fromstart
set synmaxcol=150
