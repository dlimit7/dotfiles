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

" Trailing whitespace highlighting
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Colour scheme for transparency
let g:rehash256=1
let g:molokai_original=1
colorscheme molokai
hi Normal ctermbg=none

" Useful macros
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
nmap <C-Left> :wincmd h<CR>
nmap <C-Right> :wincmd l<CR>
"nnoremap <F4> :set paste<CR>
"nnormaap <F3> :set nopaste<CR>
nnoremap gf :Texplore<CR>
nnoremap <C-a> :wqa!<CR>

" Use :W to write with sudo privelages if was forgotten
command W w !sudo tee %

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Autoindent
filetype plugin indent on

noremap i k
noremap k j
noremap j h
noremap <Space> i

nmap <C-j> <Esc>I<Esc>
nmap <C-l> <Esc>A<Esc>
nmap <C-i> <Esc>10i<Esc>
nmap <C-k> <Esc>10k<Esc>
nmap <C-Up> <Esc>10i<Esc>
nmap <C-Down> <Esc>10k<Esc>


imap <C-j> <Esc>I
imap <C-l> <Esc>A
imap <C-i> <Esc>10i<Space>
imap <C-k> <Esc>10k<Space>

imap <C-Left> <Esc>I
imap <C-Right> <Esc>A
imap <C-Up> <Esc>10i<Space>
imap <C-Down> <Esc>10k<Space>

" Cut, Past, Copy, Undo
vmap <C-c> y<Esc><Space>
vmap <C-x> d<Esc><Space>
map <C-v> p<Space>
imap <C-v> <Esc>p<Space>
nmap <C-z> <Esc>u<Esc>
imap <C-z> <Esc>u<Space>
