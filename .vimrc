set shell=bash
set nocompatible              " be iMproved, required
set syntax=on
set ruler
set number
filetype off                  " required
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set t_Co=256

"I move cursor to the first of line and enter insert mode
"A move cursor to the end of line and enter insert mode
nnoremap <CR> :noh<CR>
"Disable Arrow
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'Shougo/vimproc.vim'
Plugin 'https://github.com/Quramy/tsuquyomi.git'
Plugin 'gmarik/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/vim-scripts/oceandeep'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'elzr/vim-json'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'kana/vim-arpeggio'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'maxmellon/vim-jsx-pretty'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"*****emmet-vim*****
" type html:5
" type <c-y>,

"*****Solarized color*****
syntax enable
"set background=light
if has('gui_running')
    set background=dark
else
    set background=light
endif
let g:solarized_termcolors=256
color solarized
"color oceandeep

"*****NERDTree***** 
"Ctrl+e for toggle NERDTree
"***In NERDTree Mode***
"   s for split
"   o for open node
"   x for close node
"   ctrl+ww for move between windows
map <C-e> :NERDTreeToggle<CR> 

"Smart Airline
"use :tabnew to create new tab
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"Easy Motion
"Use \\f follow by character under cusor
map <Leader> <Plug>(easymotion-prefix)
let mapleader = " " 

"Arpeggio config
"n : normal , i:insert , x:visual
  "InsertMode
call arpeggio#map('i', '', 0, 'jk', '<Esc>')
  "VisualMode
call arpeggio#map('x', '', 0, 'jk', '<Esc>')
"Default Arpeggio
call arpeggio#map('i', '', 0, 'fu', 'function')
call arpeggio#map('i', '', 0, 'pr', 'print')
call arpeggio#map('i', '', 0, 're', 'return ;<Left>')
"Vimrc Arpeggio
call arpeggio#map('i', '', 0, 'pl', 'Plugin')
"JavaScript arpeggio
call arpeggio#map('i', '', 0, 'co', 'console.log();<Left><Left>')
"Python arpeggio
call arpeggio#map('i', '', 0, 'se', 'self.')
"GO arpeggio
call arpeggio#map('i', '', 0, 'fm', 'fmt.Println()<Left>')
call arpeggio#map('i', '', 0, 'fg', 'func')
"HTML arpeggio
call arpeggio#map('i', '', 0, 'div', '<div class=""></div><Left><Left><Left><Left><Left><Left><Left><Left>')


"Natural Split
set splitbelow
set splitright

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""" RESIZING SPLIT """"
"Max out the height of the current split
"ctrl + w _

"Max out the width of the current split
"ctrl + w |

"Normalize all split sizes, which is very handy when resizing terminal
"ctrl + w =
"
"
"""MORE SPLIT MANIPULATION"""
"
"Swap top/bottom or left/right split
"Ctrl+W R

"Break out current window into a new tabview
"Ctrl+W T

"Close every window in the current tabview but the current one
"Ctrl+W o




"Supertab
"use tab to autocomplete.

"Ctrl+p 
"Use Ctrl+p to open file.


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

