set nocompatible

"SET DEFAULT WORKING DIRECTORY
cd ~/code

"ELIMINATE DELAY ON ESC
set timeoutlen=1000 ttimeoutlen=0

" ENABLE ITALICS IN GNOME TERMINAL. ^[ IS A SINGLE CHARACTER 
" INSERTED IN VIM INSERT MODE BY TYPING <ctrl>-v <esc>
set t_ZH=[3m       
set t_ZR=[23m      

set background=dark
syntax on
set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set listchars=tab:▸\ ,eol:¬
set nohlsearch
set incsearch

"PATHOGEN
execute pathogen#infect()

"GRUVBOX COLOR SCHEME
colorscheme gruvbox
highlight Comment cterm=italic
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>
nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

"CUSTOM SHORTCUTS
"switch color scheme
nnoremap <leader>1 :colorscheme gruvbox<CR>
nnoremap <leader>2 :colorscheme lucius<CR>
nnoremap <leader>3 :colorscheme zenburn<CR>
"write and quit all
nnoremap <leader>q :wqa<CR>

"AIRLINE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"TAGBAR
nmap <F8> :TagbarToggle<CR>
"autocmd VimEnter * nested :call tagbar#autoopen(1)
"autocmd BufEnter * nested :call tagbar#autoopen(0)

"NERDTREE
map <F10> :NERDTreeToggle<CR>

"CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim
noremap <C-P> <Esc>:CtrlP ~/code/c<CR>

"EMMET


"OBSESSION
augroup sourcesession
autocmd!
autocmd VimEnter * nested
\ if !argc() && empty(v:this_session) && filereadable('Session.vim') |
\ source Session.vim |
\ endif
augroup END

"FOLDING
"set foldenable
"autocmd FileType c,cpp,h,hpp setlocal foldmethod=syntax
