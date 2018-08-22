" highlight with mouse then cntrl-c,v,x,z for copy past cut undo
" control-up,down,left,right to move around the code in insert mode
" control-p for func completion
" gg=G for autoindent

set nocompatible            
filetype on                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tomasr/molokai'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()   

syntax on
set laststatus=2
set backspace=indent,eol,start

" Visuals
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Various useful things
set t_Co=256
set nu
set expandtab
set tabstop=3
set shiftwidth=3
set autoindent " gg=G
set encoding=utf-8
set mouse=a
set paste

" Trailing whitespace highlighting
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=blue guibg=blue
"au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Colour scheme for transparency
let g:rehash256=1
let g:molokai_original=1
colorscheme molokai
hi Normal ctermbg=none

" Useful macros
nnoremap <C-k> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nmap <A-Left> :wincmd h<CR>
nmap <A-Right> :wincmd l<CR>
nnoremap gf :Texplore<CR>
nnoremap <C-a> :wqa!<CR>

" Use :W to write with sudo privelages if was forgotten
command W w !sudo tee %

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Autoindent
filetype plugin indent on

noremap ; l
noremap o k
noremap l j
noremap k h

" Code Movement
map <C-Up> <Esc>10o<Esc>
map <C-Down> <Esc>10l<Esc>
map <C-Left> <Esc>I<Esc>
map <C-Right> <Esc>A<Esc>

" Cut, Past, Copy, Undo
vmap <C-c> y<Esc><Space>
vmap <C-x> d<Esc><Space>
nmap <C-v> p<Space>
imap <C-v> <Esc>p<Space>
nmap <C-z> <Esc>u<Esc>

