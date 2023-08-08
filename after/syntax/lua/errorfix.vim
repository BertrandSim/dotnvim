" for embedded lua scripts, ')' and 'end' are erroneously highlighted as luaParenError and luaError respectively. 
" regression from vim's lua syntax file in 2022 Sep (neovim >= 0.8.0)
" the syntax file as per neovim 0.7.2 does not have this error

" current workaround: unmatch luaParenError
syn clear luaParenError
