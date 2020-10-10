"----------------------------------------
"----------------------------------------
" General
"----------------------------------------
"----------------------------------------

let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
  augroup END
end

"----------------------------------------
" Pandoc
"----------------------------------------
command! -nargs=* -complete=shellcmd F :read !~/.dotfiles/bin/pandoc-files/addFooter.sh <args>



"----------------------------------------
" Undo/Redo/Backup
"----------------------------------------

"  Maximum number of changes that can be reverted in the current buffer.
set undolevels=1000

" Maximum number lines to save for undo.
set undoreload=10000

" Set undo dir.
set undodir=$HOME/.vim/files-undo

" Persistent undo.
set undofile

set backup
set backupcopy=yes
set backupdir=$HOME/.vim/files-backup
set noswapfile
" set directory for swap files
set directory=$HOME/.vim/files-backup

set history=1000

"----------------------------------------
" Tab settings
"----------------------------------------
" Insert 4 spaces for a tab
set tabstop=4
" Number of space inserted for indentation
set shiftwidth=2
" Pressing tab in insert mode will use 4 spaces
set softtabstop=4
" Use spaces instead of tabs
set expandtab
" Always indent/outdent to nearest tabstop
set shiftround
" Indent to correct location with tab
set smarttab


"----------------------------------------
" Indentation settings
"----------------------------------------
" Turn on autoindenting of blocks, indent on same level as previous line.
" And copy indent from current line when starting a new line too.
set autoindent

" Set number of space to display tab
set ts=4

" Copy the indentation of the previous line if autoindent doesn't know what to do (it's an eval, actually).
set copyindent

" Retain indentation on the next line
set smartindent

" String to put at the start of lines that have been wrapped "
let &showbreak='->'

if v:version > 704 || v:version == 704 && has("patch338")
  " Patch 7.4.338, after wrapping lines, indent the wrapping lines too! Thanks to Chris Brabandt for fix.
  set breakindent
endif

filetype plugin indent on
syntax on

"----------------------------------------
" Misc
"----------------------------------------

if filereadable("/home/marco/.vimrc1")
  echo "----------------------------------------------------"
endif

augroup markdownSpell
  autocmd!
  autocmd FileType markdown setlocal spell
  autocmd BufRead,BufNewFile *.md setlocal spell
  autocmd BufRead,BufNewFile *.txt setlocal nospell
augroup END

set spelllang=de,en

" Enable folding
set foldmethod=indent
set foldlevel=99


" This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice. 
" same as set nocp
set nocompatible

set encoding=utf-8
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

" Showing line numbers and length
" set number " show line numbers
" set tw=79 " width of document (used by gd)
" set nowrap " don't automatically wrap on load
" set fo-=t " don't automatically wrap text when typing
set wrap linebreak nolist
set textwidth=0
set wrapmargin=0
" set colorcolumn=80
highlight ColorColumn ctermbg=233


set makeprg=make\ -C\ ./Debug
set autowrite
set bs=2
set laststatus=2
set statusline=%f\ %4l/%L\ lines

set ignorecase

" Tab completion 
set wildmenu
set wildmode=full
set wildignorecase
set wildchar=<Tab>

" Better Completion 
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview


" When saving new file, surpress non-exist dir error and create new directory.
function! s:MkNonExDir(file, buf)
  if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
    let dir=fnamemodify(a:file, ':h')
    if !isdirectory(dir)
      call mkdir(dir, 'p')
    endif
  endif
endfunction
augroup BWCCreateDir
  autocmd!
  autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

"----------------------------------------
" Color
"----------------------------------------

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/
" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
"color wombat256mod
color torte

" set path for ctags

set tags=./tags;


if g:MSWindows == 0
  " change cursor for insert and normal mode
  if has("autocmd")
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
    au InsertEnter,InsertChange *
          \ if v:insertmode == 'i' |
          \   silent execute '!echo -ne "\e[6 q"' | redraw! |
          \ elseif v:insertmode == 'r' |
          \   silent execute '!echo -ne "\e[4 q"' | redraw! |
          \ endif
    au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
  endif
endif


"----------------------------------------
" Prevent Replace mode
"----------------------------------------

" FIX: ssh from wsl starting with REPLACE mode
" " https://stackoverflow.com/a/11940894
if $TERM =~ 'xterm-256color'
  if !has('nvim')
    set noek
  endif
endif
