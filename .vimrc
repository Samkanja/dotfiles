" --------------
" Basic Settings
" --------------
imap jj <esc>    " Quicky escape to normal mode
set noshowmode
set relativenumber
syntax on
colorscheme pablo
set cursorline " Highlight the line that cursor is on
set tabstop=4  " How many characters wide the tab character should be
set autoindent  " Copy indent level from previous line when starting a new line
set hlsearch 	" Highlight search matches
set ignorecase  " Case insensitive searches...
set smartcase    " ...unless specifically searching for something with uppercase characters
set incsearch    " Start searching while typing
set nocompatible " Required by various plugins to work
filetype plugin indent on    " required
set updatetime=100
set noswapfile
set clipboard=unamedplus
set foldmethod=indent
set encoding=utf-8
set foldlevel=99
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
set t_Co=256 " enable colors
set t_ut=

set laststatus=2   " always show the status bar


" python files setting
au BufNewFile, BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set expandtab
	\ set autoindent

" highlighting full syntax
let python_highlight_all=1

" omnicomplete
autocmd FileType python set omnifunc=python3complete#Complete

" -------
" Plugins
" -------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'  " let Vundle manage Vundle, required
Plugin 'joshdick/onedark.vim'  " Color theme
Plugin 'Raimondi/delimitMate'  " Closing parenthesis and Quotes
Plugin 'vim-airline/vim-airline'
Plugin 'othree/html5.vim'
Plugin 'preservim/nerdtree'    " File Explorer
Plugin 'Valloric/YouCompleteMe'
call vundle#end()



"---------------------
" Settings for Plugins
"---------------------

let mapleader=' '
colorscheme onedark " Setting colorscheme to onedark
