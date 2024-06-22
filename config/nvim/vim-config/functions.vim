
"----------------------------------------
"----------------------------------------
" Functions
"----------------------------------------
"----------------------------------------

autocmd! bufwritepost % source %

function! MyBar()
  let s:line=line(".")
  call setline(s:line,"\"----------------------------------------")
  call append(s:line,"\" ")
  call append(s:line+1,"\"----------------------------------------")
  unlet s:line
endfunction

function! BashBar()
  let s:line=line(".")
  call setline(s:line,"echo \"----------------------------------------\"")
  call append(s:line,"echo \" ")
  call append(s:line+1,"echo \"----------------------------------------\"")
  unlet s:line
endfunction


function! MdToHtml()
    silent !pandoc --css pandoc.css -S -s -o %:r.html %
    silent !firefox %:r.html
    redraw!
endfunction
