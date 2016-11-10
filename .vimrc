set nocompatible
set backspace=indent,eol,start
set clipboard=unnamed
execute pathogen#infect()
let mapleader = "\<Space>"
nmap QQ :q!<CR>
nmap WW :w<CR>
nmap <c-p> :FZF<CR>
set mouse=a
filetype plugin indent on
syntax on
colo desert
set runtimepath^=~/.vim/bundle/ctrlp.vim
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set autoindent
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set visualbell
set number
set relativenumber
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set laststatus=2
vnoremap . :norm.<CR>
noremap / /\v
au FocusLost * :wa

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======

"execute 
""set listchars=trail:⋅,nbsp:⨆,tab:|."
set listchars=trail:⋅,nbsp:⨆,tab:⤍\ ,eol:⨼,
set nolist

runtime plugin/dragvisuals.vim                                  

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...     
let g:DVB_TrimWS = 1                                            

"====[ make SnipMate treat sass files as css ]=====
autocmd BufNewFile,BufRead *.css    set ft=scss.css

"====[ NERDTree settings ]====
let NERDTreeShowHidden=1
nmap NN :NERDTreeToggle<CR>

"====[ Tmux pane navigation ]====
nnoremap <silent> <c-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <c-j> :TmuxNavigateDown<CR>
nnoremap <silent> <c-k> :TmuxNavigateUp<CR>
nnoremap <silent> <c-l> :TmuxNavigateRight<CR>
nnoremap <silent> <c-;> :TmuxNavigatePrevious<CR>

let g:tmux_navigator_save_on_switch=2

"====[ OS X Terminal cursor key fix ]====
map OA <up>
map OB <down>
map OC <right>
map OD <left>

set autochdir

call plug#begin('~/.vim/bundle/vim-fzf')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
set rtp+=/usr/local/bin/fzf
