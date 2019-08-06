set nocompatible            
filetype on              

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'    
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kshenoy/vim-signature'      " Plugin to toggle, display and navigate marks m<x> m? '<x> m<space>
Plugin 'tpope/vim-surround'         " xml editing & surround: change cs<prev><new>, delete ds<>, set ys[s,iw]<>
Plugin 'tpope/vim-repeat'           " Repeat plugin commands using .
Plugin 'tomasr/molokai'             " Colour Scheme
Plugin 'tpope/vim-fugitive'         " Git wrapper :G
Plugin 'airblade/vim-gitgutter'     " shows git diff
Plugin 'easymotion/vim-easymotion'  " code navigation and search tool
Plugin 'ervandew/supertab'          " Insertion completion

call vundle#end()   

syntax on
set laststatus=2 
set backspace=indent,eol,start

" Visuals
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1

" Various useful things
set t_Co=256      
set nu            " show linenum
set expandtab     " tab == Ctrl-V<Tab>
set tabstop=4     
set shiftwidth=4  
set autoindent    " gg=G
set encoding=utf-8
set mouse=a       " shift-mouse to copy out of vim, shift-middlebutton to paste into vim

" Colour scheme for transparency
let g:rehash256=1
let g:molokai_original=1
colorscheme molokai
hi Normal ctermbg=none

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Autoindent
filetype plugin indent on

" Useful macros

" Code Movement
nnoremap <C-h> :tabprevious<CR> 
nnoremap <C-l> :tabnext<CR>
nnoremap <C-o> :Texplore<CR>
nnoremap <C-a> :wq<CR>
imap <C-a> <Esc>:q<CR>

map <C-k> <Esc>10k<Esc>
map <C-j> <Esc>10j<Esc>
map <C-Left> <Esc>I<Esc>
map <C-Right> <Esc>A<Esc>
imap <C-k> <Esc>10k<Esc>i
imap <C-j> <Esc>10j<Esc>i
imap <C-Left> <Esc>I
imap <C-Right> <Esc>A

" Cut, Past, Copy, Undo
vmap <C-c> y<Esc><Space>i
vmap <C-x> d<Esc><Space>
nmap <C-v> p<Space>
nmap <C-z> u<Esc>
imap <C-v> <Esc>p<Space>i
imap <C-z> <Esc>u<Space>i

