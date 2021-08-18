"============================================================================
"                          Vundle and Plugin settings
"============================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'preservim/nerdcommenter'
Plugin 'majutsushi/tagbar'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'joe-skb7/cscope-maps'
Plugin 'vim-scripts/cecscope'
Plugin 'vim-scripts/highlight.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'easymotion/vim-easymotion'
call vundle#end()            " required
filetype plugin indent on    " required
" easymotion
let g:EasyMotion_do_mapping=0 " Disable default mappings
let g:EasyMotion_smartcase=0
nmap <Space> <Plug>(easymotion-overwin-f2)
nmap / <Plug>(easymotion-sn)
nmap n <Plug>(easymotion-next)
nmap N <Plug>(easymotion-prev)
" supertab
let g:SuperTabCrMapping = 1
let g:SuperTabRetainCompletionType=2
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" vim-airline-themes 
let g:airline_theme = 'violet'

" nerdcommenter
nmap <C-_> <Leader>c<space>
vmap <C-_> <Leader>c<space>

" nerdtree
nnoremap <F1> :NERDTreeTabsToggle<CR>
let NERDTreeWinPos='right'
let NERDSpaceDelims=1
" YouCompleteMe
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf=0
"let g:ycm_python_binary_path='/usr/bin/python3'

" tagbar
let g:tagbar_left=1
autocmd BufReadPost *.cpp,*.c,*.h*.hpp,*.cc,*.cxx call tagbar#autoopen()
map <F8> :TagbarToggle<CR>
set updatetime=100

"============================================================================
"                          Normal Settings
"============================================================================

set nu
set ruler 
set title
set mouse=a
set t_Co=256
set showcmd
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

set splitright
set splitbelow
"============================================================================
"                          My shortcuts
"============================================================================
" quick esc
inoremap jj <ESC>
vnoremap ;; <ESC>

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

nnoremap zz <C-W>\|
nnoremap ZZ <C-W>=

nnoremap zh ^
nnoremap zl $
nnoremap <BS> a<BS>
" clear hlsearch
nnoremap ? :noh<CR>
"============================================================================
"                          For different file indent
"============================================================================
au BufNewFile,BufRead *.def	set ft=c

au Filetype python set tabstop=4 softtabstop=4 shiftwidth=4 smartindent expandtab autoindent
au Filetype python set backspace=indent,eol,start
au Filetype cpp set tabstop=4 shiftwidth=4 expandtab smartindent autoindent
au Filetype c set tabstop=8 shiftwidth=8 smartindent autoindent

if has("autocmd")
  filetype plugin indent on
endif
"============================================================================
"                          Other useful funciton
"============================================================================
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
:command! -nargs=* -complete=shellcmd R vnew | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>
