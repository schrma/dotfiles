
"----------------------------------------
"----------------------------------------
" Pluginssettings
"----------------------------------------
"----------------------------------------


" set Runtime path to inc vundle and initialize
set rtp+=~/.vim/bundle/vundle

" this is the call to begin the vundle Plugin Opperation

call vundle#begin()
"Plugin 'plasticboy/vim-markdown'
"Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'puremourning/vimspector.git'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline.git'
call vundle#end()

"let s:MSWindows = has('win95') + has('win16') + has('win32') + has('win64')

if g:MSWindows
  set rtp += "d:\prog\vim\.vim\bundle\vimproc.vim\lib\"
endif
runtime macros/matchit.vim

"----------------------------------------
" Fugitive
"----------------------------------------

" To undo changes made
:set modifiable 

"----------------------------------------
" YouCompleteMe  
"----------------------------------------
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"----------------------------------------
" Python
"----------------------------------------

let ropevim_enable_shortcuts = 1
let g:pymode_lint_on_write = 1
let g:pymode_rope_goto_def_newwin = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_lint_write = 1 

"----------------------------------------
" Vimwiki
"----------------------------------------

let g:vimwiki_ext2syntax = {'.md': 'markdown', '.txt': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

"----------------------------------------
" vimproc
"----------------------------------------

"d:\prog\vim\.vim\bundle\vimproc.vim\lib\vimproc_win32.dll

if g:MSWindows
  let g:vimproc#dll_path= "d:\\prog\\vim\\.vim\\bundle\\vimproc.vim\\lib\\vimproc_win32.dll"
else
  let g:vimproc#dll_path= "/home/marco/.vim/bundle/vimproc.vim/lib/vimproc_linux64.so"
endif

"----------------------------------------
" Unite
"----------------------------------------

let g:agprg="$VIM/vim80/ag.exe --column --smart-case"

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts='-i -r --vimgrep --nocolor --nogroup -S'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_grep_separator = ''
endif

"----------------------------------------
" Nerdtree
"----------------------------------------
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>mc :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
