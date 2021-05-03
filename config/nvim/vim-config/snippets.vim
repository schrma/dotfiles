
"----------------------------------------
"----------------------------------------
" Snipptes
"----------------------------------------
"----------------------------------------

"----------------------------------------
" MNotes
"----------------------------------------
:let MYTIME = strftime('%Y-%m-%d')
:let MYWEEKDAY = strftime('# %A')
:let MYDAY = strftime("%d")
:let MYMONTH = strftime('%B %Y')
:let MYYEAR = strftime("%Y")
:iab <expr> tma printf("!%s\n\n$Tagebuch\n\n%s, %s. %s\n",MYTIME,MYWEEKDAY,MYDAY,MYMONTH)
:iab <expr> tta printf("!%s\n",MYTIME)
:iab <expr> tmr printf("!%s\n\n$RueckblickMonat\n\n\# %s\n\n## Rückblick\n",MYTIME,MYMONTH)
:iab bbb #!/bin/bash<CR>

"----------------------------------------
" Matlab
"----------------------------------------
let skeletonpath = "$HOME/.dotfiles/config/nvim/skeletons/" "Was not working properly
nnoremap ,matc :-1read $skeletonpath\matlabClass.m<CR>:%s/ToBeReplaced/\=expand('%:t:r')/g<cr>
nnoremap ,matf :-1read $skeletonpATH\MATLABfUNCTION.M<cr>:%s/ToBeReplaced/\=expand('%:t:r')/g<cr>


"----------------------------------------
" Bash
"----------------------------------------
autocmd BufNewFile *.sh 0r $HOME/.dotfiles/config/nvim/skeletons/bash.sh


