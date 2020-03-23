set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
set rtp+=/usr/bin/fzf " local executable of fzf

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/airline.vim

filetype plugin indent on
" theme
" set t_Co=256
" set t_8f=^[[38;2;%lu;%lu;%lum
" set t_8b=^[[48;2;%lu;%lu;%lum
set termguicolors
colorscheme onedark

" line numbers
set number
set relativenumber

" tabs config
set tabstop=8
set shiftwidth=4
set softtabstop=0 
set expandtab
set smarttab

" config for airline
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" config for indentLine
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" map por nerdtree
map <leader>e :NERDTreeToggle<CR>
map <C-P> :Files<CR>
" map para quitar resaltado de busqueda
nnoremap <leader><space> :nohlsearch<CR>
