set nocompatible "disables vi compatibility mode, which removes a lot of useful vim features
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'othree/yajs.vim'
Plugin 'jason0x43/vim-js-indent'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'vim-ruby/vim-ruby'
Plugin 'hashivim/vim-vagrant'
Plugin 'hashivim/vim-terraform'
Plugin 'rust-lang/rust.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'modille/groovy.vim'

call vundle#end()

filetype plugin indent on
syntax on

set nohlsearch "turns off search highlighting

set tabstop=2 "no tabs, tabs instead are 2 spaces
set shiftwidth=2
set expandtab
set noswapfile

"folding options
set fdm=syntax "default method is set to syntax based folding, provided by vim-ruby plugin 
set nofen "disable folding by default, I prefer to turn it on when desired via 'zi' or ':set fen'

"toggles showing whitespace characters
nmap <leader>l :set list!<CR>

"vim-gitgutter options
if exists('&signcolumn')
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
let g:gitgutter_max_signs = 9999 "sets the number of signs to display (lines of git diff in a file).
highlight clear SignColumn "sets the sign column to match the normal line background

" Show trailing whitespace
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/

" Strip trailing whitespace on save
autocmd BufWritePre *.md,*.rb,*.py,*.js,*.coffee,*.go,*.rake :%s/\s\+$//e
" Auto correct my fatal flaw
autocmd BufWritePre *_spec.rb :%s/\srecieve(/ receive(/e
" Treat Jenkinsfile as groovy syntax
au BufNewFile,BufRead Jenkinsfile set filetype=groovy

colors mizore

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
au FileType xml foldopen!
