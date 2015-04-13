"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype Detection
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python
autocmd FileType python set cc=80 shiftwidth=4 tabstop=4 softtabstop=4

" Json
autocmd BufRead,BufNewFile *.json,*.jshintrc set filetype=json

" Less
autocmd BufRead,BufNewFile *.less set filetype=less

" Thrift
autocmd BufRead,BufNewFile *.thrift set filetype=thrift

" Puppet
autocmd BufRead,BufNewFile *.pp set filetype=puppet

" Nginx
autocmd BufRead,BufNewFile /etc/nginx/*,/usr/local/etc/nginx/* set filetype=nginx

" SSH config
autocmd BufRead,BufNewFile $HOME/.vdot/ssh/config* set filetype=sshconfig

" HTML
autocmd BufRead,BufNewFile *.ejs set filetype=html

" Identation
autocmd FileType php,javascript,less,json set shiftwidth=2 tabstop=2 softtabstop=2
