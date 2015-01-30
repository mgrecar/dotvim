set nocompatible "disables vi compatibility mode, which removes a lot of useful vim features
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()

filetype plugin indent on

set nohlsearch "turns off search highlighting

set tabstop=2 "no tabs, tabs instead are 2 spaces
set shiftwidth=2
set expandtab
set noswapfile

nmap <leader>l :set list!<CR> "toggles showing whitespace characters

"vim-gitgutter options
let g:gitgutter_sign_column_always = 1 "displays the sign column even if no git differences
highlight clear SignColumn "sets the sign column to match the normal line background
