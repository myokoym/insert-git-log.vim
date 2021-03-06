function! s:InsertGitLog(...)
  if a:0 >= 1
    let l:args = a:1
  else
    let l:args = ''
  end
  let l:result = system('git log -10 --pretty="%s" '.l:args)
  normal O
  call append('.', split(l:result, '\n'))
  normal dd
endfunction

command! -nargs=? InsertGitLog :call s:InsertGitLog(<f-args>)
