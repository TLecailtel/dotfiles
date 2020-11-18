" Config largely copied from https://github.com/anishathalye/dotfiles/ and https://github.com/JJGO/dotfiles/

set nocompatible " Not vi compatible
let mapleader=" " " Leader key is space

"----------------------
" Plugins with vim-plug
"----------------------

call plug#begin()

" Search
Plug 'haya14busa/incsearch.vim' " Better incremental search
Plug 'haya14busa/incsearch-easymotion.vim' " Integration between incsearch and easymotion plugins, using <Leader>/
Plug 'romainl/vim-cool' " Disable highlight when search is done

" Filetype support
Plug 'editorconfig/editorconfig-vim' " Editorconfig support
Plug 'mechatroner/rainbow_csv' " CSV color coding
Plug 'rust-lang/rust.vim' " Rust support

" GUI
Plug 'yggdroot/indentline' " Show indentation levels
Plug 'itchyny/lightline.vim' " Better status line
Plug 'luochen1990/rainbow' " Colorize parenthesis & html tag pairs
Plug 'machakann/vim-highlightedyank' " Highlight yanks
Plug 'andymass/vim-matchup' " Highlight corresponding blocks e.g. if - fi in bash
Plug 'crusoexia/vim-monokai' " Monokai colorscheme

" Editor
Plug 'jiangmiao/auto-pairs' " Automatically append closing brackets, parentheses, quotes, ...
Plug 'preservim/nerdcommenter' " Comment/uncomment lines using <Leader>c<Space>
Plug 'matze/vim-move' " Move line/selection using <A-j> and <A-k>
Plug 'terryma/vim-multiple-cursors' " Multiple cursors like Sublime Text, using <C-n>
Plug 'tpope/vim-surround' " Operations on surroundings (parentheses, quotes, ...), using s

" Navigation
Plug 'preservim/nerdtree' " File explorer
Plug 'easymotion/vim-easymotion' " Faster navigation with dynamic keybindings, using <Leader><Leader> as a prefix

call plug#end()


"------------------
" Syntax and indent
"------------------

set encoding=utf8
filetype plugin indent on " Enable file type detection
syntax on " Turn on syntax highlighting
colorscheme monokai
set expandtab " Use spaces instead of tabs
set shiftwidth=4 " 1 tab == 4 spaces
set tabstop=4
set softtabstop=4
set autoindent


"-------
" Search
"-------

set ignorecase " Ignore case in searches by default
set smartcase " Make searches case sensitive if an uppercase is entered
let g:EasyMotion_smartcase = 1 " For EasyMotion plugin, make searches case sensitive if an uppercase is entered
set incsearch " Incremental search, as string is being typed
set hlsearch " Highlight search matches

" incsearch plugin
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" incsearch-easymotion plugin
map <Leader>/ <Plug>(incsearch-easymotion-/)
map <Leader>? <Plug>(incsearch-easymotion-?)
map <Leader>g/ <Plug>(incsearch-easymotion-stay)


"----
" GUI
"----

set number " Show line numbers
set relativenumber " Show relative line numbers
set listchars=nbsp:¬,extends:»,precedes:«,trail:• " Show hidden characters
set linebreak " Have lines wrap instead of continue off-screen
set laststatus=2 " Show the status line at the bottom
set scrolloff=5 " Show lines above and below cursor (when possible)
set showcmd " Show command in bottom bar
set showmatch " Show matching braces when text indicator is over them
set shortmess+=I " Disable startup message
set noshowmode " Hide mode (unnecessary because of lightline)
let g:vim_json_conceal = 0 " Disable quote concealing in JSON files

" Toggle relative numbering
nnoremap <Leader>n :set rnu!<CR>


"--------
" Edition
"--------

set autoread " Set to auto read when a file is changed from the outside
au FocusGained,BufEnter * checktime
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
let g:NERDSpaceDelims = 1 " Add space after comment delimiters

" Quick save/quit
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>


"-----------------------
" Navigation and windows
"-----------------------

set mouse+=a " Enable mouse mode (scrolling, selection, etc)

" NERDtree plugin
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

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


"-----------
" Unbindings
"-----------

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

" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

" Unbind for tmux
map <C-a> <Nop>
map <C-x> <Nop>

