# Vim configuration

first clone this repo
```bash git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim```

```bash
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
call vundle#end()            " required
filetype plugin indent on    " required
```

## for color scheme
download color scheme for below website to the ```.vim/colors/``` folder
```bash https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim```

```bash
colorscheme atom-dark-256 
```