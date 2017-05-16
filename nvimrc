set nu
set cin
set ts=2
set sw=2
set sts=2
set expandtab
set hlsearch
set incsearch
set encoding=utf8
set fileencodings=utf8,cp949,euc-kr
set fo=ro
set ruler
set autoread
syntax on
colorscheme sexy-railscasts-256


" FOR PLUGIN BEGIN
call plug#begin('~/.nvim/plugged')

" Make sure you use single quotes
"
" On-demand loading
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/davidkariuki/sexy-railscasts-256-theme.git'

call plug#end()
" /FOR PLUGIN END
