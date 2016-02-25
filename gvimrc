set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right scrollbar
set guioptions-=L  "remove left scrollbar
set guioptions-=m  "remove menu bar
"MENU BAR TOGGLE
nnoremap <F2> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>

"CHANGE FONT SHORTCUTS
nnoremap <leader>u :set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 14<CR>
nnoremap <leader>m :set guifont=monofur\ for\ Powerline\ 14<CR>

set guifont=monofur\ for\ Powerline\ 14

"OPEN FILE IN BROWSER
nnoremap <F12>f :exe ':silent !firefox %'<CR>
nnoremap <F12>c :exe ':silent !chromium-browser %'<CR>
nnoremap <F12>o :exe ':silent !opera %'<CR>
