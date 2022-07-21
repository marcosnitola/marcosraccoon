set number
set rnu
syntax on
"set cursorline
set showcmd
set autoindent

"set statusline=
"set statusline+=\ %F\ %M\ %Y\ %r
"set statusline+=%=
"set statusline+=\ %l\ %c\ %p%%
set laststatus=2
"set shiftwidth=4
set tabstop=2
set expandtab

" Statusline custom 1
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"set statusline=\ %<%f\ %h%m%=%14.(%l,%c%V%)\ %P
set statusline=%#Visual#\ %<%f\ %*%h%m%=%14.(%l,%c%V%)\ %P


" Statusline with mode
set statusline=%#WildMenu#\ %{StatuslineMode()}\ %*
set statusline+=%#Visual#\ %t\ %*%y%h%m
set statusline+=%=%F:%l:%c\ (%P)
function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction
