set nocompatible
set shell=/bin/sh
syntax on
filetype plugin on
let g:go_disable_autoinstall = 0
set backspace=indent,eol,start
set colorcolumn=80
highlight ColorColumn ctermbg=red guibg=red
let mapleader = ","
set tabstop=2
inoremap <C-Tab> <C-x><C-o> 
inoremap <C-s> <C-x><C-o>
map <leader>b :GoBuild<CR>
map <leader>f :GoFmt<CR>
map <leader>l :GoLint<CR>
map <leader>t :GoTest<CR>
map <leader>v :GoVet<CR>
map <leader>d :GoDoc<CR>
map <leader>r :GoRun<CR>
