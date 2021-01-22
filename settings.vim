"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HOW TO LIVE WITH VIM
"
" Check setting's current status: set <option>?
" Example: set hlsearch?
" Check where a setting was set the way it is: verbose set <option>?
" Example: verbose set hlsearch?
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" formatoptions=jcroql
" /usr/local/Cellar/neovim/0.4.4/share/nvim/runtime/ftplugin/

" Set undo files
set undofile
set undodir=$HOME/.config/nvim/undodir
" Set swap
set swapfile
set directory^=$HOME/.config/nvim/swap//
" Number lines in hybrid mode. Absolute + relative.
set number relativenumber
" Show matching brackets.
set showmatch
" Case insensitive matching.
set ignorecase
" When typing an upper case letter consider it seriously.
set smartcase
" Highlight search results.
set hlsearch
" Dynamically display pattern match while searching.
set incsearch
" Define characters to display when 'list' is set to show eol, tabs and
" spaces. Use ':set list' to toggle hidden characters.
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:$,precedes:«,extends:»

" COLORS
"
" 'syntax enable' keeps your custom highlighting. 'syntax on' forces
" VIM's default highlighting.
syntax enable
highlight ColorColumn ctermbg=2

set colorcolumn=72

" SOFT WRAPPING 
"
" Text wraps at the rigth side of the terminal to look nicer.
set wrap
" Don't wrap inside a word, use word boundary to wrap.
set linebreak

" HARD WRAPPING (VIM inserts eol)
"
" 'help fo'
" 'help fo-table'
set textwidth=72
set fo=tcroq
set fo-=l
set fo-=j

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event
" handler (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
