call vundle#begin("~/.config/nvim/bundle")

" for autoupdate Vundle
Plugin 'VundleVim/Vundle.vim'

" language related
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'fatih/vim-go'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" themes
Plugin 'arcticicestudio/nord-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'iCyMind/NeoSolarized'
Plugin 'lifepillar/vim-solarized8'
Plugin 'mhartington/oceanic-next'

" syntax
Plugin 'jwalton512/vim-blade'

" utils
Plugin 'preservim/nerdtree'             " arbol de directorios
Plugin 'ryanoasis/vim-devicons'         " visualizar tipo de archivo
Plugin 'Xuyuanp/nerdtree-git-plugin'    " GIT en el arbol de directorios
Plugin 'airblade/vim-gitgutter'         " mostrar diferencias de GIT
Plugin 'tpope/vim-fugitive'             " complemento para GIT
Plugin 'tpope/vim-surround'             " encerrar texto entre caracter indicado
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

call vundle#end()
