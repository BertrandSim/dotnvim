function! StartIPython()
  vertical terminal
  if exists(":SendHere")
    SendHere
  endif
  call chansend(b:terminal_job_id, "ipython\r")
endfunction

" _s_tart IPython _R_EPL
nnoremap <buffer> <leader>sr <Cmd>call StartIPython()<CR>
