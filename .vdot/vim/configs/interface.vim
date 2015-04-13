"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme solarized

if has('gui_running')
  set guifont=Monaco:h12       " set gui font
  set guioptions-=T            " remove the toolbar
  set guioptions-=L            " remove left scrollbar
  set guioptions-=r            " remove right scrollbar
else
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  set term=builtin_xterm       " Make terminal stuff works
  set t_Co=256
endif

set tabpagemax=15              " only show 15 tabs
set showmode                   " display the current mode

set cursorline                 " highlight current line

if has('cmdline_info')
  set ruler                    " show the ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
  set showcmd                    " show partial commands in status line and selected characters/lines in visual mode
endif

set laststatus=2
set backspace=indent,eol,start " Backspace for dummys
set linespace=0                " No extra spaces between rows
set nu                         " Line numbers on
set showmatch                  " Show matching brackets/parenthesis
set incsearch                  " Find as you type search
set hlsearch                   " Highlight search terms
set winminheight=0             " Windows can be 0 line high
set ignorecase                 " Case insensitive search
set smartcase                  " Case sensitive when uc present
set wildmenu                   " Show list instead of just completing
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]  " Backspace and cursor keys wrap to
set scrolljump=5               " Lines to scroll when cursor leaves screen
set scrolloff=3                " Minimum lines to keep above and below cursor
set nofoldenable               " Disable fold code
set gdefault                   " The /g flag on :s substitutions by default
set hidden                     " Change buffer - without saving
set magic                      " Set magic on, for regular expressions
set autoread                   " Auto reload file on change
set list
set listchars=tab:>\ ,trail:\ ,extends:#,nbsp:\  " Highlight problematic whitespace

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap          " wrap long lines
set lbr           " set linebreak
set tw=0          " sets the text width
set ai            " Auto indent
set si            " Smart indet
set expandtab     " tabs are spaces, not tabs
set shiftwidth=2  " use indents of 4 spaces
set tabstop=2     " an indentation every four columns
set softtabstop=2 " let backspace delete indent
" Remove trailing whitespaces and ^M chars
"autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
