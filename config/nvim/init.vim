"----------------------------------------
"----------------------------------------
" .vimrc
"----------------------------------------
"----------------------------------------
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" On Windows, use '.vim' instead of 'vimfiles': this makes synchronization across heterogeneous Windows/POSIX environments easier.
let g:MSWindows = has('win95') + has('win16') + has('win32') + has('win64')

if g:MSWindows
	let MYVIMBASE=$VIM
else
	let MYVIMBASE=$HOME
endif

" Vim configuration
execute "source " . MYVIMBASE . "/vim-config/autocommands.vim"
execute "source " . MYVIMBASE . "/vim-config/fold.vim"
execute "source " . MYVIMBASE . "/vim-config/functions.vim"
execute "source " . MYVIMBASE . "/vim-config/general.vim"
execute "source " . MYVIMBASE . "/vim-config/keymap.vim"
execute "source " . MYVIMBASE . "/vim-config/pluginsettings.vim"
execute "source " . MYVIMBASE . "/vim-config/snippets.vim"
execute "source " . MYVIMBASE . "/vim-config/vimspector.vim"
"execute "source " . MYVIMBASE . "/vim-config/syling.vim"




 
