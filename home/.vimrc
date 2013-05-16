set nocompatible
filetype plugin indent on
syntax on

let mapleader=" "

" Allow unsaved changes when opening another file
set hidden

" Omni-completion
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" Search
set ignorecase
set smartcase
set incsearch

" Substitute all matches in the line
set gdefault

" History and undo sizes
set history=1000
set undolevels=1000

" Wildmenu
set wildmenu
set wildmode=longest:full,full
set wildcharm=<Tab>
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" Scrolling by blocks
set scrolloff=3
let &scrolljump=&lines / 2 - 1

" Terminal escape timeout
set ttimeout
set ttimeoutlen=100

" Extended backspace
set backspace=indent,eol,start

" Auto-indent
set autoindent

" Tab config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Disable swap files
set noswapfile

" Line length and wrapping
set textwidth=80
" set colorcolumn=81
highlight ColorColumn ctermbg=234

" Hide black line tildas
highlight NonText ctermfg=0

" Key bindings

" Escape
inoremap jk <Esc>
inoremap <C-q> <Esc>
noremap <C-q> <Esc>
vnoremap <C-q> <Esc>
cmap <C-q> <C-c>

" Enter the command-line mode
noremap <leader><Space> :

" Better command-line editing
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Home row beginning / end of line
noremap H ^
noremap L $

" Insert mode beginning / end of line
inoremap <C-a> <Home>
inoremap <C-e> <End>

" Insert mode delete a word forward
inoremap <C-d> <S-Right><C-w>

" Insert mode delete a character forward
inoremap <C-l> <Delete>

" Insert mode movement
inoremap <C-j> <S-Left>
inoremap <C-k> <S-Right>

" Save
noremap  <silent> <C-s> :update<CR>
vnoremap <silent> <C-s> <C-c>:update<CR>
inoremap <silent> <C-s> <C-o>:update<CR>

" Quit
noremap Q :quit<CR>

" Reflow a paragraph
vmap <leader>q gq
nmap <leader>q gqap

" Jump between windows
noremap <leader>w <C-w>w
noremap <Up> <C-w>k
noremap <Down> <C-w>j
noremap <Left> <C-w>h
noremap <Right> <C-w>l

" Jump between buffers
noremap <silent> <leader>j :bnext<CR>
noremap <silent> <leader>k :bprev<CR>
noremap <silent> <leader>l :b#<CR>

" Delete the current buffer
noremap <leader>d :bdelete<CR>

" Edit a file
noremap <leader>e :e <Tab>

" Scroll screen with the cursor
noremap <C-j> j<C-e>
noremap <C-k> k<C-y>

" Center the screen with search jumps
noremap n nzz
noremap N Nzz

" Sort in visual mode
vnoremap <leader>s :sort<CR>

" Moving blocks of text in visual mode
vnoremap < <gv
vnoremap > >gv

" Copy to the end of the line
map Y y$

" Up / down on wrapped lines
nnoremap j gj
nnoremap k gk

" Force saving that requires root permissions
cmap w!! %!sudo tee > /dev/null %

" Select all text
map <leader>a ggVG

" Easier increment / decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Duplicate a line and comment the first copy
nmap gcd yyPgcc

" Indent everything
noremap <leader>i gg=G<C-o><C-o>

" Switch capitalization of the first letter of the current word
nmap crf m`T<Space>~``

" Change current word - kill
noremap K ciw

