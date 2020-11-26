set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Vundle - https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" tender.vim - https://github.com/jacoborus/tender.vim
Plugin 'jacoborus/tender.vim'

" The NERDTree - https://github.com/preservim/nerdtree
Plugin 'preservim/nerdtree'

" Tagbar - https://github.com/preservim/tagbar
Plugin 'majutsushi/tagbar'

" lightline - https://github.com/itchyny/lightline.vim
Plugin 'itchyny/lightline.vim'

" surround.vim - https://github.com/tpope/vim-surround
Plugin 'tpope/vim-surround'

" YouCompleteMe - https://github.com/ycm-core/YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'

" FixedTaskList - https://github.com/fisadev/FixedTaskList.vim
Plugin 'fisadev/FixedTaskList.vim'

" commentary.vim - https://github.com/tpope/vim-commentary
Plugin 'tpope/vim-commentary'

" fugitive.vim - https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" Rainbow Parentheses Improved - https://github.com/luochen1990/rainbow
Plugin 'luochen1990/rainbow'

" SimpylFold - https://github.com/tmhedberg/SimpylFold
Plugin 'tmhedberg/SimpylFold'

" Syntastic - https://github.com/vim-syntastic/syntastic
Plugin 'vim-syntastic/syntastic'

" Flake8 - https://github.com/nvie/vim-flake8
Plugin 'nvie/vim-flake8'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" vim | settings
set nofoldenable
" set nu
set clipboard=unnamed
set ruler
set ruler
set tabstop=4
set shiftwidth=4
set autoindent
set showmatch
set enc=utf-8
set nobackup
set noswapfile
set backspace=indent,eol,start
set scrolloff=10
set incsearch
set hlsearch
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" tender.vim | settings
if (has("termguicolors"))
 set termguicolors
endif

" The NERDTree | settings
autocmd VimEnter * if !argc() | NERDTree | endif        " start pluggin by default on a plain 'vim' call
let NERDTreeWinSize=40                                  " set window size to '40'
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$'] " ignore files with 'pyc$', 'pyo$', '__pycache__$' extensions
nmap <F2> :NERDTreeToggle<CR>

" Tagbar | settings
nmap <F8> :TagbarToggle<CR>

" lightline | settings
set laststatus=2
set noshowmode

" YouCompleteMe | settings
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0

" FixedTaskList | settings
nmap <F9> :TaskList<CR>
let g:tlTokenList = ['FIXME', 'TODO', 'ToDo', 'FixMe']
let g:tlWindowPosition = 1
let g:tlRememberPosition = 1

" Rainbow Parentheses Improved | settings
let g:rainbow_active = 1

" SimplyFold | settings
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0
let g:SimpylFold_fold_blank = 0
let b:SimpylFold_fold_docstring = 0
let b:SimpylFold_fold_import = 0
let b:SimpylFold_fold_blank = 0
nnoremap <space> za 

" Syntastic | settings
let python_highlight_all=1
syntax on

