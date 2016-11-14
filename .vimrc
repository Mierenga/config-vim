"Vundle package manager
set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Add vundle plugins here
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'

"End vundle plugins
call vundle#end()


filetype plugin indent on
filetype indent on

autocmd FileType js setlocal shiftwidth=2 tabstop=2 softtabstop=2

"Open NERDTree when opening vim with no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"""Close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ignore files in nerd tree (add to the array for more)
let NERDTreeIgnore = ['\.pyc$']


"""REMAPS"""
" nerd tree toggle
map <C-\> :NERDTreeToggle<CR>
" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set mouse=nicr  "allow mouse scroll
set cursorline
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nu
"set rnu
set incsearch
set hlsearch
set splitbelow
set splitright
set runtimepath^=~/.vim/bundle/ctrlp.vim
" toggle pastemode "
set pastetoggle=<F3>
" use '+' register as clipboard "
set clipboard=unnamedplus

inoremap jj <Esc>
inoremap jk <Esc>
inoremap <S-CR> <C-o>A<CR>

let g:netrw_liststyle=3

command Ex Explore

execute pathogen#infect()

" colors "
syntax on
colorscheme Tomorrow-Night-Eighties
"colorscheme monokai 
"colorscheme icansee 

" the_silver_searcher "
let g:ackprg = 'ag --vimgrep'
