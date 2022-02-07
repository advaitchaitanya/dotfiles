" Set utf8 as standard encoding
set encoding=utf8

set nocompatible
filetype off

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sgur/vim-editorconfig'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

" All plugins must be added before the following line
call vundle#end()

" Load matchit.vim, but only if the user hasn't installed a newer version
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
	runtime! macros/matchit.vim
endif

filetype plugin indent on

" Use ag in CtrlP for listing files
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0

" Change mapleader
let mapleader = "\<Space>"

" Open configuration 
nmap <leader>rc :tabedit $MYVIMRC<cr>

" Reload configuration 
nmap <leader>src :source $MYVIMRC<cr>

" Go to start of word
nmap 0 ^

" Allow backspace in insert mode
set backspace=indent,eol,start

" Set tab size
set shiftwidth=2
set tabstop=2

" Always show status line
set laststatus=2

" Ignore case of search
set ignorecase

" Don't wrap lines
set nowrap

" Keep at least 4 lines below cursor
set scrolloff=4

" Auto indent
set autoindent

" Show line numbers
set number

" Show character limit
" set colorcolumn=80

" Turn off backup files
set nobackup
set noswapfile
set nowritebackup
