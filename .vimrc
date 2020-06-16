" Config largely copied from https://github.com/anishathalye/dotfiles/ and https://github.com/JJGO/dotfiles/

set nocompatible " Not vi compatible

"----------------------
" Plugins with vim-plug
"----------------------

call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'crusoexia/vim-monokai'
Plug 'rust-lang/rust.vim'
call plug#end()


"------------------
" Syntax and indent
"------------------

filetype plugin indent on " Enable file type detection
syntax on " Turn on syntax highlighting
colorscheme monokai
set expandtab " Use spaces instead of tabs
set shiftwidth=4 " 1 tab == 4 spaces
set tabstop=4
set softtabstop=4
set autoindent


"------
"Search
"------

set ignorecase " Ignore case in searches by default
set smartcase " Make searches case sensitive if an uppercase is entered
set incsearch " Incremental search, as string is being typed
set hlsearch " Highlight search matches


"---
" UI
"---

set number " Show line numbers
set relativenumber " Show relative line numbers
nnoremap <C-n> :set rnu!<CR> " Toggle relative numbering
set linebreak " Have lines wrap instead of continue off-screen
set laststatus=2 " Show the status line at the bottom
set scrolloff=5 " Show lines above and below cursor (when possible)
set showcmd " Show command in bottom bar
set showmatch " Show matching braces when text indicator is over them
set shortmess+=I " Disable startup message
set noshowmode " Hide mode (unnecessary because of lightline)


"--------
" Edition
"--------

set nojoinspaces " Don't insert space when joining two lines
set backspace=indent,eol,start " Allow backspacing over everything
set wildmode=longest,list " Tab completion for files/bufferss
set wildmenu
set history=8192 " More history
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
set hidden " Allow having hidden buffers
set lazyredraw " Don't redraw while executing macros
set noerrorbells visualbell t_vb= " Disable audible bell


"-----------
" Navigation
"-----------

set mouse+=a " Enable mouse mode (scrolling, selection, etc)

" Disable arrow navigation in normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Disable arrow navigation in insert mode
inoremap <Left>  :echoe "Use h"<CR>
inoremap <Right> :echoe "Use l"<CR>
inoremap <Up>    :echoe "Use k"<CR>
inoremap <Down>  :echoe "Use j"<CR>

" Disable arrow navigation in visual mode
vnoremap <Left>  :echoe "Use h"<CR>
vnoremap <Right> :echoe "Use l"<CR>
vnoremap <Up>    :echoe "Use k"<CR>
vnoremap <Down>  :echoe "Use j"<CR>


"------------------
" Window navigation
"------------------

" Open new split panes to right and bottom
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END


"-------
" Unbind
"-------

nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
map <C-a> <Nop> " Unbind for tmux
map <C-x> <Nop>
