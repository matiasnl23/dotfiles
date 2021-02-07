if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_left_alt_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_theme='codedark'
let g:airline_section_y = ''
let g:airline_section_z = ''
let g:airline_skip_empty_sections = 1
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
set noshowmode

