let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <C-V> "+p
inoremap <C-A> :%y+
vnoremap  "+y
nnoremap  h
nnoremap 	 :b#
nnoremap <NL> j
nnoremap  k
nnoremap  l
nnoremap  vip
noremap  :set invnumber
nnoremap <silent>  :CtrlP
noremap ",l :CtrlPTag
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap ,d :YcmShowDetailedDiagnostic
nmap ,<F9> <Plug>VimspectorToggleConditionalBreakpoint
nmap ,y :VimspectorReset
nnoremap ,matf :-1read $skeletonpATH\MATLABfUNCTION.M:%s/ToBeReplaced/\=expand('%:t:r')/g
nnoremap ,matc :-1read $skeletonpath\matlabClass.m:%s/ToBeReplaced/\=expand('%:t:r')/g
map ,g :YcmCompleter GoToDefinitionElseDeclaration
noremap ,b :Bible
noremap ,sN [s
noremap ,sn ]s
noremap ,ss :setlocal spell spelllang=de_ch,en
noremap ,sbar mz:execute MyBar()`zjA
noremap ,s :%s/\<\>/
noremap ,p :CtrlP
noremap ,ot :tabedit % 
noremap ,n :cn
noremap ,N :cp
noremap ,md :call MdToHtml()
noremap ,E :qa! " Quit all windows
noremap ,e :quit " Quit current window
nnoremap ,es :source $MYVIMRC
nnoremap ,et :vsplit $HOME/vim-config/snippets.vim
nnoremap ,ek :vsplit $HOME/vim-config/keymap.vim
noremap ,mc :Explore
noremap ,astop :profile pause:noautocmd qall!
noremap ,astart :profile start profile.log:profile func *:profile file *
nnoremap = maggVG=g;`a
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> cf :let @" = expand("%")p
nnoremap <silent> cp :let @" = expand("%:p")p
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap gF :e <cfile>
nnoremap gf :vsplit:wincmd l:e <cfile>
nnoremap gr gf
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <C-P> :CtrlP
nmap <F12> <Plug>VimspectorStepOut
nmap <F11> <Plug>VimspectorStepInto
nmap <F10> <Plug>VimspectorStepOver
nmap <F8> <Plug>VimspectorAddFunctionBreakpoint
nmap <F9> <Plug>VimspectorToggleBreakpoint
nmap <F6> <Plug>VimspectorPause
nmap <F4> <Plug>VimspectorRestart
nmap <F3> <Plug>VimspectorStop
nmap <F5> <Plug>VimspectorContinue
nnoremap <silent> <Plug>VimspectorStepOut :call vimspector#StepOut()
nnoremap <silent> <Plug>VimspectorStepInto :call vimspector#StepInto()
nnoremap <silent> <Plug>VimspectorStepOver :call vimspector#StepOver()
nnoremap <silent> <Plug>VimspectorAddFunctionBreakpoint :call vimspector#AddFunctionBreakpoint( expand( '<cexpr>' ) )
nnoremap <silent> <Plug>VimspectorToggleConditionalBreakpoint :call vimspector#ToggleBreakpoint( { 'condition': input( 'Enter condition expression: ' ),   'hitCondition': input( 'Enter hit count expression: ' ) } )
nnoremap <silent> <Plug>VimspectorToggleBreakpoint :call vimspector#ToggleBreakpoint()
nnoremap <silent> <Plug>VimspectorPause :call vimspector#Pause()
nnoremap <silent> <Plug>VimspectorRestart :call vimspector#Restart()
nnoremap <silent> <Plug>VimspectorStop :call vimspector#Stop()
nnoremap <silent> <Plug>VimspectorContinue :call vimspector#Continue()
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <C-L> l
nnoremap <C-H> h
nnoremap <C-J> j
nnoremap <C-K> k
noremap <C-N><C-N> :set invnumber
vnoremap <C-C> "+y
inoremap  :%y+
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap  "+p
map ä ]
map ö [
cnoremap Q q
cnoremap W w
iabbr <expr> tmr printf("!%s\n\n$RueckblickMonat\n\n\# %s\n\n## Rückblick\n",MYTIME,MYMONTH)
iabbr <expr> tta printf("!%s\n",MYTIME)
iabbr <expr> tma printf("!%s\n\n$Tagebuch\n\n%s, %s. %s\n",MYTIME,MYWEEKDAY,MYDAY,MYMONTH)
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autowrite
set background=dark
set backspace=2
set backup
set backupdir=~/.vim/files-backup
set complete=.,w,b,u,t
set completeopt=menuone,preview
set copyindent
set cpoptions=aAceFsB
set directory=~/.vim/files-backup
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set laststatus=2
set makeprg=make\ -C\ ./Debug
set mouse=a
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/YouCompleteMe,~/.vim/bundle/nerdtree,~/.vim/bundle/vimspector,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/vim-airline,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vim82/pack/dist/opt/matchit,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/vundle,~/.vim/bundle/YouCompleteMe/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/vimspector/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/vim-airline/after
set shiftround
set shiftwidth=2
set shortmess=filnxtToOSc
set showbreak=->
set smartindent
set smarttab
set softtabstop=4
set spelllang=de,en
set statusline=%f\ %4l/%L\ lines
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabstop=4
set tags=./tags;
set undodir=~/.vim/files-undo
set undofile
set wildignorecase
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.dotfiles/config/nvim/vim-config
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd pluginsettings.vim
$argadd general.vim
$argadd keymap.vim
set stal=2
tabnew
tabnew
tabrewind
edit pluginsettings.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|def\)\>', "W")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,sO:#\ -,mO:#\ \ ,eO:##,:\",b:#
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=99
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,=end,=},=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=de,en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/.dotfiles/config/nvim/vim-config
tabnext
edit ~/.dotfiles/config/nvim/vim-config/general.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
2argu
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|def\)\>', "W")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,sO:#\ -,mO:#\ \ ,eO:##,:\",b:#
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=99
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,=end,=},=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=de,en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/.dotfiles/config/nvim/vim-config
tabnext
edit ~/.dotfiles/config/nvim/vim-config/keymap.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
3argu
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|def\)\>', "W")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,sO:#\ -,mO:#\ \ ,eO:##,:\",b:#
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=99
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,=end,=},=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=de,en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/.dotfiles/config/nvim/vim-config
tabnext 1
set stal=1
badd +1 ~/.dotfiles/config/nvim/vim-config/pluginsettings.vim
badd +0 ~/.dotfiles/config/nvim/vim-config/general.vim
badd +0 ~/.dotfiles/config/nvim/vim-config/keymap.vim
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
