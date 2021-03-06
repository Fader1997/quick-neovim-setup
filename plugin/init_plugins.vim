" gruvbox
let g:gruvbox_contrast_dark = 'hard'    " must be put before 'colorscheme'
colorscheme gruvbox
set background=dark                     " dark or light

" NERDTree
" Automatically start when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd vimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close neovim when only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Shortcut (Ctrl+n)
map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeWinPos = "right"  " open on the right side
" Automatically start
"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd l

" Tagbar
" Shortcut (Ctrl+t)
nmap <C-t> :TagbarToggle<CR>
"autocmd vimenter * Tagbar      " automatically start

" vim-airline
let g:airline#extensions#tabline#enabled = 1    " automatically displays all buffers when only one tab

" vim-airline-themes
let g:airline_theme='base16'    " change to any theme you like
" Use 'AirlineTheme <theme>' command to find and try new themes
