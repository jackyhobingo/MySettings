set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()            " required
filetype plugin indent on    " required

set nu
set ruler 
set title
set mouse=a
set t_Co=256

" quick esc
inoremap jj <ESC>

" quick copy
vnoremap <C-D> yP
nnoremap <C-D> VyP

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv 

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

nmap zz <C-W>\|
nnoremap ZZ <C-W>=

nnoremap zb ciw
vnoremap zb <ESC>ciw
nnoremap <TAB> >>
nnoremap <S-TAB> <<

nnoremap zh ^
nnoremap zl $
nnoremap <BS> a<BS>

" For simpleScalar using
au BufNewFile,BufRead *.def	set ft=c

au Filetype python set tabstop=4 softtabstop=4 shiftwidth=4 smartindent expandtab autoindent
au Filetype python set backspace=indent,eol,start
au Filetype cpp set tabstop=4 shiftwidth=4 expandtab smartindent autoindent
au Filetype c set tabstop=8 shiftwidth=8 smartindent autoindent

if has("autocmd")
  filetype plugin indent on
endif
set showcmd
nnoremap <F1> :NERDTreeTabsToggle<CR>
" Quick Run
nmap <F5> :call QuickRun()<CR>
func! QuickRun()
	exec "w"
if &filetype == 'sh'
	exec '!time bash %'
elseif &filetype == 'python'
	exec "!time python3 %"
elseif &filetype == 'c'
	exec "!gcc % -o quickRun.out"
	exec "!time ./quickRun.out"
elseif &filetype == 'cpp'
	exec "!g++ % -o quickRun.out"
	exec "!time ./quickRun.out"
endif
endfunc
