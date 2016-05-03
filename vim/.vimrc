runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'filename' ],
      \   ],
      \   'right': [
      \     [ 'syntastic', 'lineinfo' ],
      \     ['percent'],
      \     [ 'fileformat', 'fileencoding', 'filetype' ],
      \   ],
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ }

set pastetoggle=<F2>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_clang_check_post_args = ""
let g:syntastic_c_checkers = [ 'clang_check', 'clang_tidy' ]
let g:syntastic_cpp_clang_check_post_args = ""
let g:syntastic_cpp_checkers = [ 'clang_check', 'clang_tidy' ]
