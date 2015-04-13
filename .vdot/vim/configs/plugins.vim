""""""""""""""""""""""""""""""""""""""""""
" Neobundle Configurations
""""""""""""""""""""""""""""""""""""""""""

" Set bundle directory
let s:dir_bundles = g:VIMPATH_RUNTIME.'/bundles'
execute 'set runtimepath+='.s:dir_bundles.'/neobundle.vim/'

" Required
call neobundle#begin(expand(s:dir_bundles))

" Let NekoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Vimproc - asynchronous update/install
NeoBundle 'Shougo/vimproc.vim', {
  \   'build' : {
  \     'windows' : 'tools\\update-dll-mingw',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \   }
  \ }

" Interface
NeoBundle 'bling/vim-airline'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/nerdtree'

" Functions
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'terryma/vim-expand-region'

" Syntax highlight
NeoBundle 'scrooloose/syntastic'
NeoBundle 'veiirlee/vim-javascript-syntax'
NeoBundle 'elzr/vim-json'
NeoBundle 'vim-scripts/nginx.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'sprsquish/thrift.vim'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'kchmck/vim-coffee-script'

" Syntax autocomplete & check
if g:VIMENV == 'coding'
  NeoBundle 'Valloric/YouCompleteMe'
  NeoBundle 'marijnh/tern_for_vim'
end

call neobundle#end()

" Required
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
