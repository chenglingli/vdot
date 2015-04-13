"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
if ($TERM_PROGRAM == "iTerm.app")
  let g:airline_powerline_fonts = 1
endif

" indentLine
let g:indentLine_char = '|'
let g:indentLine_color_term = 234

" nerdtree
map <C-n> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.DS_Store']
let NERDTreeShowHidden=1

" ctrlp
let g:ctrlp_working_path_mode = 'rc'
nnoremap <C-o> :CtrlPBuffer<CR>
nnoremap <C-m> :CtrlPMRU<CR>
nnoremap <C-e> :CtrlPClearCache<CR>
let g:ctrlp_custom_ignore = {
  \   'dir':  '\.git$\|\.hg$\|\.svn$\|build$',
  \   'file': '\.exe$\|\.so$\|\.dll$\|\.DS_Store$\|\.pyc$'
  \ }

" vim-expand-region
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" syntastic
let g:syntastic_check_on_open=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_jump=1
let g:syntastic_cpp_check_header = 1
let g:syntastic_mode_map={
  \   'mode': 'active',
  \   'active_filetypes': [],
  \   'passive_filetypes': ['c', 'cpp']
  \ }
nmap <leader>j :lnext<CR>
nmap <leader>k :lprev<CR>

" YouCompleteMe
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" vim-javascript-syntax
execute 'hi! link javaScriptSource Statement'
execute 'hi! link javaScriptParens Normal'
execute 'hi! link javaScriptMessage Normal'
execute 'hi! link javaScriptFuncArg Type'
execute 'hi! link javaScriptBrowserObjects Special'
execute 'hi! link javaScriptDOMObjects Special'
execute 'hi! link javaScriptDOMMethods Normal'
execute 'hi! link javaScriptDOMProperties Normal'
execute 'hi! link javaScriptAjaxProperties Normal'
execute 'hi! link javaScriptAjaxMethods Normal'
execute 'hi! link javaScriptHtmlElemProperties Normal'

" vim-json
let g:indentLine_noConcealCursor=""

" neocomplete
set completeopt-=preview
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
