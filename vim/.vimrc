set nu
set ruler 
set title

" quick esc
inoremap jj <ESC>

" move screen to focus this line on line 2
nnoremap zt zt2k2j

nnoremap c' ci'
nnoremap c" ci"
nnoremap c) ci)
nnoremap c( ci(
nnoremap c] ci]
nnoremap c[ ci[
nnoremap c} ci}
nnoremap c{ ci{

nnoremap z" vi"
nnoremap z' vi'
nnoremap z) vi)
nnoremap z] vi]
nnoremap z( vi(
nnoremap z[ vi[
nnoremap z{ vi{
nnoremap z} vi}

nmap zb ciw
vmap zb <ESC>ciw
nnoremap <TAB> >>
nnoremap <S-TAB> <<

nnoremap zh ^
nnoremap zl $
nnoremap <BS> a<BS>

" For simpleScalar using
au BufNewFile,BufRead *.def	set ft=c


au Filetype python set tabstop=4 softtabstop=4 shiftwidth=4 smartindent expandtab autoindent
au Filetype python set backspace=indent,eol,start

if has("autocmd")
  filetype plugin indent on
endif
set showcmd
