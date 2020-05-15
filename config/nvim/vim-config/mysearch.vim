"----------------------------------------
"----------------------------------------
" Search
"----------------------------------------
"----------------------------------------

" Ignore case when searching..
set ignorecase
" ...unless there's a capital letter in the query
set smartcase
" Search while you enter the query, not after
set incsearch
" Always substitute all letters, dont just substitute first hit on line alone
set gdefault
" Highlight search matches
set hlsearch

" The Silver Searcher
if executable('ag11')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files. Lightning fast and respects
    "     .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    "ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" set grepprg="d:\\prog\\mingw\\msys\\1.0\\bin\\grep.exe"\ -nH
set grepprg=d:\\prog\\mingw\\msys\\1.0\\bin\\grep.exe\ -nH

" bind K to grep word under cursor
nnoremap <leader>z :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
"!command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :grep <SPACE>
