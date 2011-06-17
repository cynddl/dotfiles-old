set nocp
syn on
syntax on
set number
set incsearch

"colorscheme Vitamins_Vim_Colorscheme_by_hcalves
colorscheme desert

filetype indent on 
filetype plugin on
filetype on

let g:tex_flavor='latex'
set grepprg=grep\ -H\ $*

set showmatch

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

"set spelllang=en,fr
"set spell
"set spellsuggest=5


set backspace=indent,eol,start
set cursorline

imap <C-Space> <C-X><C-O>
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
autocmd BufEnter * call DoWordComplete()

nnoremap <silent> <F9> :NERDTree<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
