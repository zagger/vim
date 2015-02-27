" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

execute pathogen#infect()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
" NeoBundle 'taichouchou2/surround.vim'
" NeoBundle 'tpope/vim-surround'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tyru/caw.vim'
NeoBundle 'mattn/emmet-vim'
" NeoBundle 'kchmck/vim-coffee-script'
" NeoBundle 'h1mesuke/vim-alignta'


set title
set nocompatible
set number
"set noexpandtab
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set clipboard=unnamedplus

" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>
inoremap ;l <ESC>

nnoremap <S-l> gt
nnoremap <S-h> gT

nnoremap q :q
nnoremap <S-q> :wq
nnoremap ! :q!
nnoremap T :tn <kEnter>
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sw <C-w>w

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>
inoremap < <><LEFT>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

map <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

"hi Comment ctermfg=darkgray
hi Comment ctermfg=blue
syntax enable


"let g:user_emmet_leader_key = '<C-i>'
let g:neocomplete#enable_at_startup = 1

inoremap <expr><CR> pumvisible() ? "\<C-n>" . neocomplete#close_popup() : "<CR>"

