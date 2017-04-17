set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin()
" start vundle Plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" git wrapper
Plugin 'tpope/vim-fugitive'

" shows a git diff in the gutter (sign column) and stages/undoes hunks
Plugin 'airblade/vim-gitgutter'

" A tree explorer plugin for vim
Plugin 'scrooloose/nerdtree'

" Please Vim, stop with these swap file messages. Just switch to the correct window!
Plugin 'gioele/vim-autoswap'

" Better whitespace highlighting for Vim
Plugin 'ntpeters/vim-better-whitespace'

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

" nice colors
colorscheme elflord

" show 80th column
let &colorcolumn=join(range(81,82),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" ignore case and smart case
:set ignorecase
:set smartcase

" ctrl c/v/x copy, paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
