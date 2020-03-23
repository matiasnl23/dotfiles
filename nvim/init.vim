set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
set rtp+=/usr/bin/fzf " local executable of fzf

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/airline.vim

filetype plugin indent on
" theme
set termguicolors
colorscheme onedark

" line numbers
set number
set relativenumber

" tabs config
set nowrap
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
set updatetime=250
set shortmess+=c        " relacionado a coc.nvim
set signcolumn=yes      " relacionado a coc.nvim

" config for indentLine
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" map por coc.nvim
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <silent> K :call <SID>show_documentation()<CR>
" map por nerdtree
map <leader>e :NERDTreeToggle<CR>
map <C-P> :Files<CR>
" map para quitar resaltado de busqueda
nnoremap <leader><space> :nohlsearch<CR>

" Funciones
" coc.nvim
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
function! s:show_documentation()
    if (index(['vim', 'help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped
