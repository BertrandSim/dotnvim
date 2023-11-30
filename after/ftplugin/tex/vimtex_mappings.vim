" overwrite vimtex-related mappings:
" Use sandwich.vim-style mappings 
" eg. ds_, cs_, ts_ --> sd_, se_, st_/sT_
" see also g:vimtex_mappings_disable setting in init.vim

" nmap sde <plug>(vimtex-env-delete)
" nmap sdc <plug>(vimtex-cmd-delete)
" nmap sd$ <plug>(vimtex-env-delete-math)
" nmap sdd <plug>(vimtex-delim-delete)
nmap see <plug>(vimtex-env-change)
nmap sec <plug>(vimtex-cmd-change)
nmap se$ <plug>(vimtex-env-change-math)
" nmap sed <plug>(vimtex-delim-change-math)
nmap ste <plug>(vimtex-env-toggle-star)
nmap stc <plug>(vimtex-cmd-toggle-star)
nmap st$ <plug>(vimtex-env-toggle-math)
nmap std <plug>(vimtex-delim-toggle-modifier)
xmap std <plug>(vimtex-delim-toggle-modifier)
nmap sTd <plug>(vimtex-delim-toggle-modifier-reverse)
xmap sTd <plug>(vimtex-delim-toggle-modifier-reverse)
nmap stf <plug>(vimtex-cmd-toggle-frac)
xmap stf <plug>(vimtex-cmd-toggle-frac)
