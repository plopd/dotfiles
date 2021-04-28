call plug#begin('~/.vim/plugged')

" Initialize plugin system
Plug 'junegunn/fzf.vim'
" Ensure that we have the latest version
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug '907th/vim-auto-save'
Plug 'itchyny/lightline.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'

call plug#end()

set laststatus=2
set noshowmode

set clipboard=unnamed

" UTF-8 support
set encoding=utf-8

" enable syntax highlighting
syntax enable

let python_highlight_all=1
syntax on

set hlsearch

" show line numbers
set number

set norelativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" Reload current file automatically
set autoread

" enable all Python syntax highlighting features
let python_highlight_all = 1

" use Ag with ack.vim
let g:ackprg = 'ag --vimgrep'

" enable AutoSave on Vim startup
let g:auto_save = 1

nmap <F6> :NERDTreeToggle<CR>

" https://stackoverflow.com/questions/2413005/switching-between-tabs-in-nerdtree
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

"split navigations
nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-L> <C-W><C-L>
nnoremap <S-H> <C-W><C-H>

" FZF.vim
nnoremap <silent> <C-f> :Files<CR>
nnoremap <C-g> :Rg<Cr>

let mapleader = ','


set nobackup
set nowb
set noswapfile
