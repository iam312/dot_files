"****************************************************
" Plugin Management
"
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle
" required! 
Plugin 'https://github.com/gmarik/Vundle.vim.git'

"Plugin 'https://github.com/janx/vim-rubytest.git'
Plugin 'https://github.com/janko-m/vim-test.git'
Plugin 'https://github.com/easymotion/vim-easymotion.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/tpope/vim-rails.git'
Plugin 'https://github.com/tpope/vim-rake.git'
Plugin 'https://github.com/tpope/vim-bundler.git'
Plugin 'https://github.com/vim-ruby/vim-ruby.git'
Plugin 'https://github.com/stephpy/vim-yaml.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'
"Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/mileszs/ack.vim.git'
Plugin 'nvie/vim-flake8' " for python syntax
Plugin 'https://github.com/davidhalter/jedi-vim.git' " for python auto-complete
Plugin 'https://github.com/jmcantrell/vim-virtualenv.git' " for pyenv-virtualenv
Plugin 'docker/docker', {'rtp':'/contrib/syntax/vim/'}
Plugin 'scrooloose/syntastic' " for syntax checking
Plugin 'vim-scripts/indentpython.vim' " for python autoindent
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" for color scheme
Plugin 'https://github.com/davidkariuki/sexy-railscasts-256-theme.git'
Plugin 'https://github.com/jpo/vim-railscasts-theme.git'
Plugin 'https://github.com/tomasr/molokai.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/w0ng/vim-hybrid.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required!
filetype plugin on
"----------------------------------------------------


"****************************************************
" Default settings.
set nu
set cin
set ts=2
set sw=2
set sts=2
set expandtab "insert space when tab key pressed
set hlsearch
set incsearch
set encoding=utf8
set fileencodings=utf8,cp949,euc-kr
set fo=ro
set ruler
set cursorline "show a visual line under the cursor's current line
set showmatch  "show the matching part of the pair for [] {} and ()
set shell=zsh
set splitright
"set term=xterm-256color
"set term=screen-256color
set guifont=monofur\ for\ Powerline:h13
let python_highlight_all = 1 "enable all Python syntax highlighting features
let g:ycm_autoclose_preview_window_after_completion=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
syntax on
"set t_Co=256
"set t_ut=
"set bg=light
set bg=dark
"let g:solarized_termcolors=256 "only for solarized theme
"colorscheme solarized
"colorscheme sexy-railscasts-256
"colorscheme railscasts
"colorscheme molokai
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid
set autoread  "file auto reload
set tags+=./tags
set tags+=./gems.tags
set cscopetag   " use cscope tag
let g:ctrlp_extensions = ['tag']  "make ctrlp use tag
"helptags ~/.vim/doc/
autocmd VimEnter * NERDTree " vim 실행시 NERDTree 자동실행
autocmd FileType ruby compiler ruby
set grepprg=ack  "Use ack instead of grep
set colorcolumn=80
highlight ColorColumn ctermbg=darkred guibg=darkred
highlight CursorLine ctermbg=darkgrey guibg=DarkSlateGray
"----------------------------------------------------



"****************************************************
" REMAP 

"for grep
nnoremap gr :Ack <cword><CR>
"for git commit
nnoremap gc :Gcommit -v<CR>
"for git diff
nnoremap gd :Gdiff<CR>
"for git status
nnoremap gs :Gstatus<CR>

"map <F4> :execute "grep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
"map <F4> :!ruby -v <CR>
map <F4> :NERDTree<CR>
map <F8> :!/usr/local/bin/ctags -R --languages=ruby --fields=+l --exclude=.git --exclude=gems.tags --exclude=tags --exclude=log --exclude=logs --exclude=doc $(bundle list --paths) `echo $GEM_ROOT` . <CR>
map <F9> :!/usr/local/bin/ctags -R --languages=python --fields=+l --exclude=.git --exclude=gems.tags --exclude=tags --exclude=log --exclude=logs --exclude=doc `echo $VIRTUAL_ENV` . <CR>
"map <F8> :!~/bin/ctags<CR>
"map <F8> :!~/bin/rtags<CR>
"map <C-F8> :!~/bin/rtags<CR>
"au BufRead,BufNewFile *.rb setlocal tags+=~/.vim/tags/ruby_and_gems
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/bundle/vim-yaml/after/syntax/yaml.vim
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$\| \+\ze\t/  "mark extra whitespace as bad, probably color red.



"****************************************************
" for janko-m/vim-test 
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
"nmap <silent> <leader>g :TestVisit<CR> git 설정과 g 부분이 출동하여 막음
"----------------------------------------------------


""python with virtualenv support
"py3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
