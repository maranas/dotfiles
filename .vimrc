" This config requires Vundle and vim (or macvim) 7.3 and newer
" Install vundle first:
"     git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" plugins above this line

call vundle#end()
filetype plugin indent on

" other overrides, just in case plugins override them
set tabstop=4
set shiftwidth=4
set expandtab
set number
syntax enable

" solarized dark
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" python syntax highlighting
let python_highlight_all=1
syntax on
