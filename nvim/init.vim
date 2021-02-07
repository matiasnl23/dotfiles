set nocompatible
"filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
set rtp+=~/.fzf/bin/fzf " local executable of fzf

source ~/.config/nvim/coc.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/projects.vim

"filetype plugin indent on
" theme
"colorscheme onehalfdark
"colorscheme onehalflight
"colorscheme monokai_pro
colorscheme codedark
"colorscheme embark

let g:vim_monokai_tasty_italic = 1
syntax on
set cursorline
"set t_Co=256

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

" line config
set number
set relativenumber
set cursorline
set nowrap

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
set updatetime=250
set shortmess+=c        " relacionado a coc.nvim
set signcolumn=yes      " relacionado a coc.nvim

" config para snippets
let g:coc_snippets_next = '<c-j>'
let g:coc_snippets_prev = '<c-k>'
" config for indentLine
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" config for ack.vim
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Local-vimrc
let g:localvimrc_sandbox = 0

" map por nerdtree
map <leader>e :NERDTreeToggle<CR>
map <C-P> :GFiles<CR>
" map para quitar resaltado de busqueda
nnoremap <leader><space> :nohlsearch<CR>
" mapeos bye buffer
nnoremap <leader>q :Bdelete<CR>
nnoremap <leader>Q :bufdo :Bdelete<CR>
" tagbar
" nnoremap <leader>t :TagbarToggle<CR>
" mapeos por errores en mayus
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev we We

nnoremap <leader>t :FloatermToggle<CR>

" Funciones

" Comandos
:command! Src source $HOME/.config/nvim/init.vim

" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped

" Autimatic functions
"au BufWrite * :Autoformat
