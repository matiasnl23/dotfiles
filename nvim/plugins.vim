call vundle#begin("~/.config/nvim/bundle")

" for autoupdate Vundle
Plugin 'VundleVim/Vundle.vim'

" language related
Plugin 'neoclide/coc.nvim', {'branch': 'release'}       " se debe usar la rama RELEASE
Plugin 'fatih/vim-go'                                   " lenguaje GO
Plugin 'rayburgemeestre/phpfolding.vim'                 " fold para PHP
"Plugin 'stevearc/vim-arduino'                          " arduino
Plugin 'coddingtonbear/neomake-platformio'              " arduino
Plugin 'prettier/vim-prettier'                          " prettier

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" themes
Plugin 'arcticicestudio/nord-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'rakr/vim-one'
Plugin 'iCyMind/NeoSolarized'
Plugin 'lifepillar/vim-solarized8'
Plugin 'mhartington/oceanic-next'
"Plugin 'sickill/vim-monokai'           " sublime colors
Plugin 'crusoexia/vim-monokai'          " sublime colors
Plugin 'phanviet/vim-monokai-pro'
Plugin 'tomasr/molokai'                 " monokai
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'dikiaap/minimalist'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'embark-theme/vim', { 'name': 'embark' }
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'jacoborus/tender.vim'

" syntax
"Plugin 'StanAngeloff/php.vim'                           " sintaxis para PHP
"Plugin 'jwalton512/vim-blade'                           " sintaxis para Blade templates
Plugin 'HerringtonDarkholme/yats.vim'                  " sintaxis para Typescript
"Plugin 'leafgarland/typescript-vim'
"Plugin 'pangloss/vim-javascript'                        " sintaxis para javascript
"Plugin 'maxmellon/vim-jsx-pretty'                       " sintaxis para jsx (react)
"Plugin 'neovimhaskell/haskell-vim'                      " sintaxis para haskell
"Plugin 'styled-components/vim-styled-components'        " sintaxis para estilos dentro de js
"Plugin 'elzr/vim-json'                                  " sintaxis para json
"Plugin 'jparise/vim-graphql'                            " sintaxis para graphql
Plugin 'dart-lang/dart-vim-plugin'

" utils
Plugin 'embear/vim-localvimrc'          " local vim
Plugin 'preservim/nerdtree'             " arbol de directorios
Plugin 'ryanoasis/vim-devicons'         " visualizar tipo de archivo
Plugin 'Xuyuanp/nerdtree-git-plugin'    " GIT en el arbol de directorios
Plugin 'airblade/vim-gitgutter'         " mostrar diferencias de GIT
Plugin 'tpope/vim-fugitive'             " complemento para GIT
Plugin 'tpope/vim-surround'             " encerrar texto entre caracter indicado
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }               " buscador tipo CtrlP async
Plugin 'junegunn/fzf.vim'               " buscador tipo CtrlP async
Plugin 'mattn/emmet-vim'                " emmet for vim
Plugin 'jiangmiao/auto-pairs'           " cerrar automaticamente ()[]{}''
Plugin 'Yggdroot/indentLine'            " lineas para ver tablulaciones
Plugin 'tpope/vim-unimpaired'           " various mappings
Plugin 'scrooloose/nerdcommenter'       " comentarios en vim
Plugin 'moll/vim-bbye'                  " utilizades con los buffers
Plugin 'amiorin/vim-project'            " manejar proyectos
Plugin 'ryanoasis/vim-startify'         " pantalla de inicio
Plugin 'editorconfig/editorconfig-vim'  " leer archivo .editorconfig
Plugin 'tpope/vim-eunuch'               " utils linux as VIM commands
Plugin 'iamcco/markdown-preview.nvim'   " { mkdp#util#install() }
Plugin 'SirVer/ultisnips'               " snippets
Plugin 'ap/vim-css-color'
Plugin 'dkprice/vim-easygrep'           " to find words
Plugin 'mileszs/ack.vim'                " to find words too
Plugin 'preservim/tagbar'               " tagbar
"Plugin 'ludovicchabant/vim-gutentags'  " tags
Plugin 'tpope/vim-repeat'               " repeat
"Plugin 'svermeulen/vim-cutlass'         " delete without replace registers

call vundle#end()
