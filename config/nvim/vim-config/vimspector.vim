let g:vimspector_enable_mappings = 'HUMAN'
"packadd! vimspector

" makes problem to copy over ssh -> was disbled
" set mouse=a

nmap <leader>vr :VimspectorReset<CR>
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
