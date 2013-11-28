augroup filetypedetect
  au! BufRead,BufNewFile *.cs call s:FTcccs()
  au! BufRead,BufNewFile /var/tmp/tmp[0-9]*,/tmp/tmp[0-9]*,C:/temp/tmp[0-9]* call s:FTcccs()
augroup END

" Detect a config spec by looking for lines starting with 'element'
function! s:FTcccs()
  if exists("b:current_syntax")
    return
  endif

  let i = 1
  while i < 20
    let line = getline(i)
    let i = i + 1
    if line =~ '\(^element\|^include.*\.cs\)'
      setfiletype cccs
      break
    endif
  endwhile
endfunction
