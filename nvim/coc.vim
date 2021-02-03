let g:coc_status_error_sign = ''
let g:coc_status_warning_sign = ''
let g:coc_global_extensions = [
    \ 'coc-tsserver'
  \ ]

" Mapeos
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ?
            \ coc#_select_confirm() :
            \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Abrir sugerencias
inoremap <silent><expr> <c-space> coc#refresh()

" Show documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Navegar entre errores
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Navegar por el código
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Nenombrar variable
nmap <leader>rn <Plug>(coc-rename)
"
" Formatear el código seleccionado
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Funciones
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Show documentation function
function! s:show_documentation()
    if (index(['vim', 'help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocAction('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
    let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
    let g:coc_global_extensions += ['coc-eslint']
endif

" Resaltar símbolo y referencias cuando se mantiene el cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
