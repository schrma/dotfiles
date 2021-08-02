"----------------------------------------
"----------------------------------------
" Keymap
"----------------------------------------
"----------------------------------------

"----------------------------------------
" Without leader
"----------------------------------------

:map ö [
:map ä ]

command! Vb normal! <C-v>

" Switch between last buffers
nnoremap <tab> :b#<cr>

" reselect pasted text
nnoremap gp `[v`]

:inoremap <c-a> <esc>:%y+<cr>
:vnoremap <c-c> "+y
" map ctrl n to line numbers
:noremap <c-n><c-n> :set invnumber<CR>
:inoremap <c-v> <esc>"+p
:nnoremap <c-k> <c-w>k
:nnoremap <c-j> <c-w>j
:nnoremap <c-h> <c-w>h
:nnoremap <c-l> <c-w>l
:cnoremap W<CR> w<CR>
:cnoremap Q<CR> q<CR>

" Copypaste the full path of current buffer, useful when read/writing sessions.
nnoremap <silent> cp :let @" = expand("%:p")<CR><Esc>p

" Same as above, but filename only. 
nnoremap <silent> cf :let @" = expand("%")<CR><Esc>p

" Align/indent the whole buffer, but hold the cursor in the same spot
nnoremap = maggVG=g;`a

" Open the file under the cursor.
nnoremap gr <c-w>gf
nnoremap gf :vsplit<CR>:wincmd l<CR>:e <cfile><cr>
nnoremap gF :e <cfile><cr>


" Use Esc to hide search highlights, which is mapped to M-q as recurring event.
" nnoremap <silent> <Esc> :nohl<CR>

" Visual select block with double Enter.
nnoremap <CR><CR> vip



"----------------------------------------
" Leader
"----------------------------------------

:let mapleader = ","

" Python break point
":noremap <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Python commands 
:autocmd FileType python    nnoremap <buffer> <leader>c I#<esc>
:autocmd FileType python    vnoremap <leader>cc :s/^/# /<cr>
:autocmd FileType python    vnoremap <leader>cm :s/^#//<cr>
:autocmd FileType python    nnoremap <buffer> <Leader>b Ofrom pudb import set_trace; set_trace() # BREAKPOINT<C-c>
:autocmd FileType python    nnoremap <buffer> <Leader>r :!python3 % <cr>

" Bash commands
:autocmd BufRead,BufNewFile *.sh nnoremap <leader>c I# <esc>
:autocmd BufRead,BufNewFile *.sh vnoremap <leader>cc :s/^/# /<cr>


" open .vimrc
command Reload execute "source ~/.vimrc"
command Confgure execute "source /home/schrma/.dotfiles/config/nvim/config_session.vim"

" Execute command
norema <Leader>x :w<CR>:! %:p<CR>

" Quick quit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows
noremap "<Leader>l :CtrlPTag<CR>
noremap <Leader>md <esc>:call MdToHtml()<CR>
noremap <Leader>N <esc>:cp<CR>
noremap <Leader>n <esc>:cn<CR>
noremap <Leader>ot :tabedit % <CR>
noremap <Leader>p <esc>:CtrlP<CR>
noremap <Leader>f <esc>:vimgrep <cword> *<CR>

" search an replace
noremap <Leader>s :%s/\<<C-r><C-w>\>/

" Set bar title in vim scripts
noremap <Leader>sbar <Esc>mz:execute MyBar()<CR>`zjA

" Spelling mappings
noremap <Leader>ss :setlocal spell spelllang=de_ch,en<CR>
noremap <Leader>sn ]s
noremap <Leader>sN [s


noremap <Leader>b :Bible
command! -nargs=* -complete=shellcmd Bible  :read !~/tools/bibleinserter/getBibleVersParam.sh <args>
