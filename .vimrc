"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Aiden's Vimrc
" Last updated 11/22/2016
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

"Flazz/vim-colorshcemes
Plugin 'flazz/vim-colorschemes'

"Python module
Plugin 'klen/python-mode'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" Nerdtree Install
Plugin 'scrooloose/nerdtree'

" Flake8
Plugin 'nvie/vim-flake8'

" Vim sensible
Plugin 'tpope/vim-sensible'

" Folding
Plugin 'tmhedberg/SimpylFold'

" Fix Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'

" Python auto complete
Plugin 'Valloric/YouCompleteMe'

" PowerLine Install
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Rebind <Leader> Key
let mapleader = ","

" Change the switch screens default
nnoremap <Leader>j <c-w>j
nnoremap <Leader>k <c-w>k
nnoremap <Leader>h <c-w>h
nnoremap <Leader>l <c-w>l

" Misc settings
set number
set t_Co=256
colorscheme badwolf
set noswapfile
syntax on 
set laststatus=2
set backspace=indent,eol,start

" Nerdtree setup
nmap <Leader>n :NERDTree<cr>

" tab set for python
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" See docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Flag unnecessary white space
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
