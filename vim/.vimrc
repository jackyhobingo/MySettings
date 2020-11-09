set nu
set ruler 
set title

" For simpleScalar using
au BufNewFile,BufRead *.def	set ft=c


au Filetype python set tabstop=4 softtabstop=4 shiftwidth=4 smartindent expandtab autoindent
au Filetype python set backspace=indent,eol,start

if has("autocmd")
  filetype plugin indent on
endif
set showcmd
