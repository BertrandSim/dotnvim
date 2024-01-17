" overwrite vimtex-related mappings:
" Use sandwich.vim-style mappings 
" eg. ds_, cs_, ts_ --> sd_, se_, st_/sT_
" see also g:vimtex_mappings_disable setting in init.vim

" nmap <buffer> sde <plug>(vimtex-env-delete)
" nmap <buffer> sdc <plug>(vimtex-cmd-delete)
" nmap <buffer> sd$ <plug>(vimtex-env-delete-math)
" nmap <buffer> sdd <plug>(vimtex-delim-delete)
nmap <buffer> see <plug>(vimtex-env-change)
nmap <buffer> sec <plug>(vimtex-cmd-change)
nmap <buffer> se$ <plug>(vimtex-env-change-math)
" nmap <buffer> sed <plug>(vimtex-delim-change-math)
nmap <buffer> ste <plug>(vimtex-env-toggle-star)
nmap <buffer> stc <plug>(vimtex-cmd-toggle-star)
nmap <buffer> st$ <plug>(vimtex-env-toggle-math)
nmap <buffer> std <plug>(vimtex-delim-toggle-modifier)
xmap <buffer> std <plug>(vimtex-delim-toggle-modifier)
nmap <buffer> sTd <plug>(vimtex-delim-toggle-modifier-reverse)
xmap <buffer> sTd <plug>(vimtex-delim-toggle-modifier-reverse)
nmap <buffer> stf <plug>(vimtex-cmd-toggle-frac)
xmap <buffer> stf <plug>(vimtex-cmd-toggle-frac)

" Teardown
if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
else
  let b:undo_ftplugin .= '| '
endif
function! VimTeX_unmap()
  silent! nunmap <buffer> see 
  silent! nunmap <buffer> sec 
  silent! nunmap <buffer> se$ 
  " silent! nunmap <buffer> sed 
  silent! nunmap <buffer> ste 
  silent! nunmap <buffer> stc 
  silent! nunmap <buffer> st$ 
  silent! nunmap <buffer> std 
  silent! xunmap <buffer> std 
  silent! nunmap <buffer> sTd 
  silent! xunmap <buffer> sTd 
  silent! nunmap <buffer> stf 
  silent! xunmap <buffer> stf 
endfunction
let b:undo_ftplugin .= 'call VimTeX_unmap() | '
let b:undo_ftplugin .= 'delfunc VimTeX_unmap'
