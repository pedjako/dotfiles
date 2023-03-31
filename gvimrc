vim9script

set lines=44 columns=80
set go-=T go-=rL go-=m 
set guifont=monofur\ 16
syntax on
set nu rnu
set clipboard=unnamedplus
set background=dark
colors quiet
set autochdir

#TURN OFF HIGHLIGHT AFTER SEARCH
noremap <leader><Esc> :noh<CR>
#OPEN TERMINAL
noremap <leader><Space> :term<CR>
#RUN PYTHON FILE
noremap <leader><CR> :!python %<CR>

#BUFFERS
noremap <C-Up> :bnext<CR>
noremap <C-Down> :bprev<CR>
noremap <leader><down> :ls<CR>:b<space>
#SPLITS
noremap <C-Bslash> :vsplit<CR>
noremap <C-space> <C-W><C-W>
set splitbelow
set splitright

#NETRW
g:netrw_keepdir = 0
g:netrw_winsize = 30
g:netrw_banner = 0
g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
#open netrw in current file directory
