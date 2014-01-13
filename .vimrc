" Pathogen load
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
" General configuration
syntax on
set number
syntax on
set tabstop=4
set shiftwidth=4
"indent-guides
let g:indent_guides_start_level=2
let g:indent_guides_guide_level=1
set expandtab
set mouse=a
filetype on
filetype plugin on
filetype plugin indent on
" NERDTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Ruby
if has('ruby')
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby let g:rubycomplete_buffer_loading=1
  autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif
