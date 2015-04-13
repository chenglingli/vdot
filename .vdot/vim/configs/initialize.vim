""""""""""""""""""""""""""""""""""""""""""
" Initialization
""""""""""""""""""""""""""""""""""""""""""

" Fix runtimepath(rtp)
let s:rtps = split(&runtimepath, ',')
let s:rtps[0] = g:VIMPATH_RUNTIME
execute 'set runtimepath='.join(s:rtps, ',')

" Create cache directory
if !isdirectory(g:VIMPATH_CACHE)
  call mkdir(g:VIMPATH_CACHE, 'p')
endif

" Create & set swap file directory
let s:cache_swap = g:VIMPATH_CACHE.'/swap'
if !isdirectory(s:cache_swap)
  call mkdir(s:cache_swap, 'p')
endif
let s:swaps = split(&directory, ',')
let s:swaps[0] = s:cache_swap
execute 'set directory='.join(s:swaps, ',')

" Create & set backup file directory
let s:cache_backup = g:VIMPATH_CACHE.'/backup'
if !isdirectory(s:cache_backup)
  call mkdir(s:cache_backup, 'p')
endif
execute 'set backupdir='.s:cache_backup

" Create & set undo file directory
let s:cache_undo = g:VIMPATH_CACHE.'/undo'
if !isdirectory(s:cache_undo)
  call mkdir(s:cache_undo, 'p')
endif
execute 'set undodir='.s:cache_undo

" Create & set view file directory
let s:cache_view = g:VIMPATH_CACHE.'/view'
if !isdirectory(s:cache_view)
  call mkdir(s:cache_view, 'p')
endif
execute 'set viewdir='.s:cache_view

" Set viminfo location
let s:cache_info = g:VIMPATH_CACHE.'/info'
execute 'set viminfo+=n'.s:cache_info
