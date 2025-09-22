" adds a line break at current char, and stay in normal mode.

if !exists("*synstack")
  " use mapping in init.vim
  " nnoremap U i<CR><Esc>k$
  finish 
endif

" if in comment, normal line break, otherwise, 
" add ... followed by line break.

function MatlabLineBreak()
  let IDstack = synstack(line('.'), col('.'))
  let names = IDstack->reverse()->map("synIDattr(v:val, 'name')")
  " if names contain 'matlabComment'
  if index(names, 'matlabComment') >= 0
    return "i \<CR>\<Esc>k$"
  else
    return "i ...\<CR>\<Esc>"
  endif
endfunction

nnoremap <buffer> <expr> U MatlabLineBreak() 

function! StartMatlabCLI()
  vertical terminal
  if exists(":SendHere")
    SendHere
  endif
  call chansend(b:terminal_job_id, "matlab -nosplash -nodesktop\r")
endfunction

nnoremap <buffer> <leader>sc <Cmd>call StartMatlabCLI()<CR>
