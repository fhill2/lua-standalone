can use read or vared for zsh

read -p doesnt work in zsh

read isnt working inside a zle widget


if using read from within a zle widget (a function bound to zsh with zle -N) you have to put zle -I in the zle widget before read
https://superuser.com/questions/1583506/read-plaintext-input-from-inside-zle-widget