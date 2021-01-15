" Set undo files
set undofile
set undodir=~/.config/nvim/undodir
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

set colorcolumn=72
set textwidth=72

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
