" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
" Temas
Plug 'joshdick/onedark.vim' " tema 'onedark' sin background
Plug 'iCyMind/NeoSolarized' " tema 'NeoSolarized' con background dark/light

" Plugins varios
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree' " explorador de archivos
Plug 'Yggdroot/indentLine' " ver indentaciones con líneas
Plug 'ctrlpvim/ctrlp.vim' " buscador de archivos y buffers
Plug 'jiangmiao/auto-pairs' " inserta automáticamente pares de comilla, paréntesis, etc
Plug 'majutsushi/tagbar' " barra de tags generados manualmente
Plug 'ludovicchabant/vim-gutentags' " administrador de archivos tag

" Plugins para autocompletado y reconocimiento de sintaxis
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab' " Permite moverse entre las sugerencias de deoplete con TAB
Plug 'Shougo/neco-syntax' " Fuente general de auto completado
Plug 'Shougo/echodoc.vim' " Muestra información de la función debajo de airline
Plug 'Shougo/denite.nvim'
Plug 'HerringtonDarkholme/yats.vim' " Reconocimiento de sintaxis recomendado TS
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' } " autocompletado para PHP con phpcd
Plug 'deoplete-plugins/deoplete-jedi' " autocompletado for python

" Barra de estado
Plug 'vim-airline/vim-airline' " airline (barra de estado)
Plug 'vim-airline/vim-airline-themes' " temas para airline

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Snippet
Plug 'SirVer/ultisnips'

call plug#end()
" Aquí se encuentran las configuraciones y mapeos

set shell=/bin/bash " Utilizar bash en vez de fish ya que trae problemas

" Configuración de temas
set termguicolors " Activa los colores de la terminal
colorscheme onedark " Elige el tema indicado
set background=dark " Elige el fondo del tema indicado

" Configuración de NERDTree
let g:NERDTreeChDirMode = 2 " Elige el directorio actual como el directorio padre

" Configuración para Airline
let g:airline#extensions#tabline#enabled = 1 " mostrar buffers abiertos como pestañas
let g:airline#extensions#tabline#fnamemod = ':t' " mostrar solo nombre del archivo
let g:airline_powerline_fonts = 1 " habilitar la fuentes powerline y símbolos
set noshowmode " ocultar la info del modo actual ya que airline lo muestra

" Configuración para indentLine (ver tabulaciones)
" no mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Configuración de Deoplete y autocompletado
let g:deoplete#enable_at_startup = 1

" cerrar automáticamente la vista previa de documentación
augroup deopleteCompleteDoneAu
	autocmd!
	autocmd CompleteDone * silent! pclose!
augroup END

" tab para deoplete
let g:SuperTabDefaultCompletionType = '<c-n>'

" Configuración de echodoc
let g:echodoc_enable_at_startup = 1

" Configuración para CtrlP
" Archivos ignorados
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" Ignorar archivos en .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Configuración para vim-gitgutter
let g:gitgutter_enabled = 1
set updatetime=250

" Configuración de gutentags
let g:gutentags_ctags_tagfile = './.git/.tags'

" Configuración de VIM
set number
set relativenumber
set ts=2
set sw=2
set expandtab
set nowrap
set cursorline

" Remapeos
" " Configuración para TagBar
nnoremap <silent><leader>b :TagbarToggle<CR>
" " Configuración para NERDTree
nnoremap <leader>f :NERDTreeToggle<CR>
" " Configuración para CtrlP
nnoremap <leader>. :CtrlPTag<CR>
" " Quitar resaltado de última búsqueda
nnoremap <leader><space> :nohlsearch<CR>
