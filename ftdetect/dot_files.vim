" enable vim filetype detection for files named dot_* (in place of .*)

autocmd BufRead,BufNewFile dot_Rprofile     setfiletype r
autocmd BufRead,BufNewFile dot_bash_aliases setfiletype sh
autocmd BufRead,BufNewFile dot_bashrc       setfiletype sh
autocmd BufRead,BufNewFile dot_profile      setfiletype sh
autocmd BufRead,BufNewFile dot_gitconfig    setfiletype gitconfig
autocmd BufRead,BufNewFile dot_inputrc      setfiletype readline
autocmd BufRead,BufNewFile dot_i3           setfiletype i3config
autocmd BufRead,BufNewFile dot_i3status     setfiletype conf
