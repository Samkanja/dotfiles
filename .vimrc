set nocompatible " required
filetype off " required


set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()
" plugin that manages other plugin
Plugin 'gmarik/Vundle.vim'

" colortheme plugin
Plugin 'Joshdick/onedark.vim'

" file explorer
Plugin 'scrooloose/nerdtree'	

" Plugin to manage tabs 
Plugin 'jistr/vim-nerdtree-tabs'

" Plugin to show bar status
Plugin 'itchyny/lightline.vim'

" Plugin show git status
Plugin 'airblade/vim-gitgutter'

" Plugin to show git changes of files and directories
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Plugin for tabs
Plugin 'ap/vim-buftabline'

" plugin for different windows
Plugin 'KKPMW/vim-sendtowindow'

" Plugin to complete word
Plugin 'ncm2/ncm2-bufword'

" plugin for completion
Plugin 'ncm2/ncm2-path'

" adding autopair such bracket, parens, quotes
Plugin 'jiangmiao/auto-pairs'

" highlighting errors
Plugin 'dense-analysis/ale'

" Python auto completions
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'

" Plugin for python syntax
Plugin 'nvie/vim-flake8'
Plugin 'vim-syntastic/syntastic'

" Python indent plugin
Plugin 'vim-scripts/indentpython.vim'

" ipython plugin
Plugin 'ivanov/vim-ipython'

" jinja plugins
Plugin 'lepture/vim-jinja'

" Plugin for javascript 
Plugin 'pangloss/vim-javascript'

" Plugin for html closetags
Plugin 'alvan/vim-closetag'

"plugin for react
Plugin 'maxmellon/vim-jsx-pretty'

cal vundle#end()
" color scheme
syntax on
colorscheme onedark
filetype on
filetype plugin indent on

" status bar custom
set noshowmode
let g:lightline = {'colorscheme':'onedark'}

" always show the status bar
set laststatus=2

" quick save commands
nmap <C-s> :w<CR>
imap <C-s> <Esc>w<CR>a

" file to ingore
let NERDTreeIngore = ['\.pyc$','__pycache__','\~$']

" navigate nerdtree
nnoremap <leader> n : NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" window split
set splitbelow splitright

" switching between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" resing window sizes
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>

" starting terminal
nnoremap <space> :terminal<CR>

" general setting
set number
set relativenumber
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

" custom keys
let mapleader=";"
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoTODefinationElseDeclaration<CR>


" Python setting 

" highlighting full syntax
let python_highlight_all=1

" omnicomplete
autocmd FileType python set omnifunc=python3complete#Complete

" python files setting
au BufNewFile, BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set expandtab
	\ set autoindent
	

" highlight error when displaying whitespaces
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" ale linting
"
let g:ale_sign_column_always=1
let g:ale_lint_on_enter=1
let g:ale_lint_on_text_changed='always'
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format='[%linter%] %s [%severity%]: [%...code...%]'
let g:ale_linters={'python': ['flake8']}

" Mouse settng
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
	if g:is_mouse_enabled = 1
		echo "Mouse OFF"
		set mouse=
		let g:is_mouse_enabled = 0
	else
		echo "Mouse ON"
		set mouse=a
		let g:is_mouse_enabled = 1

	endif
endfunction
