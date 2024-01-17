" add to vimtex mappings that begin with \l

"   \lw to write and compile.
"   \lfw to write and compile with solutions
"   \lfl to compile with solutions
nnoremap <silent> <buffer> <localleader>lw :<C-U>silent update \| VimtexCompile <CR>
nnoremap <silent> <buffer> <localleader>lfw :<C-U>silent update \| VimtexCompile -jobname=%:r-soln<CR>
nnoremap <silent> <buffer> <localleader>lfl :<C-U>VimtexCompile -jobname=%:r-soln<CR>


" Teardown
if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
else
  let b:undo_ftplugin .= '| '
endif
function! Vimtex_unmap_leaders()
  silent! nunmap <buffer> <localleader>lw
  silent! nunmap <buffer> <localleader>lfw
  silent! nunmap <buffer> <localleader>lfl
endfunction
let b:undo_ftplugin .= 'call Vimtex_unmap_leaders() | '
let b:undo_ftplugin .= 'delfunc Vimtex_unmap_leaders'
