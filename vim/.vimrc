" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'dikiaap/minimalist'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

" To display line numbers relative to the line with the cursor, use:
:set relativenumber

" Highlight matches
:set hlsearch
" Shortcut to disable it
" TODO

" Enable the Vim plugin by adding the following to your 
" Vim configuration file (default: ~/.vimrc):
set rtp+=/opt/local/share/fzf/vim

" Cmd-Shift-N for nerd tree
nnoremap <D-N> :NERDTree<CR>
nmap <F6> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Smart way to move between tabs
map <S-h> :tabp<CR>
map <S-l> :tabn<CR>
