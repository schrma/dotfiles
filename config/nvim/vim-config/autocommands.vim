"----------------------------------------
"----------------------------------------
" Autocommands
"----------------------------------------
"----------------------------------------

autocmd! bufwritepost % source %

au BufEnter * silent! lcd %:p:h
