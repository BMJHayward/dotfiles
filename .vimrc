colorscheme elflord
set belloff=all
set number
syntax enable
filetype indent on
set wildmenu
set lazyredraw
set foldenable
set foldlevelstart=17
set foldnestmax=17
set foldmethod=indent

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" reload file if changed elsewhere
set autoread

" Security
set modelines=0

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set autoindent
set expandtab
set formatoptions=tcqrn1
set noshiftround
set nowrap
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=0

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
set sidescroll=1

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
" nnoremap / /\v
" vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark

" File browsing
set wildmode=list:longest
" set wildmode=longest:full
let g:netrw_liststyle=3
set autochdir

" Git commands
map <F5> :!git add %;git commit -m "commit" %<CR>
map <F4> :!git log --abbrev-commit % > %.gitlog<CR>:vsplit %.gitlog<CR>
map <F3> :!git blame % > %.gitblame<CR>:vsplit %.gitblame<CR>

