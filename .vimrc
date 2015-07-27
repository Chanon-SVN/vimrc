set nocompatible              " be iMproved, required
set number
filetype off                  " required
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'Valloric/YoucompleteMe'
Plugin 'scrooloose/syntastic'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"*****Solarized color*****
syntax enable
set background=dark
color solarized

"*****NERDTree***** 
"Ctrl+e for toggle NERDTree
"***In NERDTree Mode***
"   s for split
"   o for open node
"   x for close node
"   ctrl+ww for move between windows
map <C-e> :NERDTreeToggle<CR> 

"RESTART VIMRC
":so %
":so $MYVIMRC

"VUNDLE USER GUDIE
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
