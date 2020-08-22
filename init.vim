set nocompatible             
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
call vundle#end()

call plug#begin('~/.vim/plugged')
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ntk148v/vim-horizon'
Plug 'mattn/emmet-vim'
call plug#end()

set number
syntax on

filetype plugin indent on
filetype on
filetype indent on
filetype plugin on

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

" Horizon Theme
" set termguicolors

colorscheme horizon

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" Files structure tree
au VimEnter *  NERDTree

" neocomplete Plugin
noremap \ :Commentary<CR>
autocmd FileType ruby setlocal commentstring=#\ %s

" Remap Emmet trigger
let g:user_emmet_leader_key=','
