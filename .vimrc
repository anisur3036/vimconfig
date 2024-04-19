set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
	" Plugin 'ctrlpvim/ctrlp.vim'
	" Plugin 'tpope/vim-vinegar'
	" Plugin 'tpope/vim-surround'
	" Plugin 'preservim/nerdtree'
    " Plugin 'mattn/emmet-vim'
    
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set number
set relativenumber
let mapleader = ','
set backspace=indent,eol,start
nmap ,ev :tabedit ~/.vimrc<cr>
autocmd BufWritePost .vimrc source %
colorscheme atom-dark-256
set autoindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set smarttab
set encoding=UTF-8
set linespace=15
set hidden                               "for buffer change without save

imap jj <Esc>
set clipboard=unnamed

imap ,w <Esc>:w<cr>
nmap ,w <Esc>:w<cr>

nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>


"-------------------Split Manager-----------

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Cursor Mode---------------

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"--------------------Setup Nerdtree Config----------------
imap <c-b> <Esc>:NERDTreeToggle<CR>
nmap <c-b> :NERDTreeToggle<CR>
let NERDTreeHijackNetrw = 0

nmap <c-R> :CtrlPBufTag<cr>
"imap <c-R> <Esc>:CtrlPBufTag<cr>
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"--------------------Opening Closing-------------------:;::::::

"--------------------Opening Closing--------------------
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

"---------------------Emmet-vim-Plugin--------------------
let g:user_emmet_leader_key=','
let g:user_emmet_install_global=0
autocmd FileType html,css,php,vue EmmetInstall

