https://github.com/neovim/neovim/issues/176

https://github.com/neovim/neovim/issues/176


https://superuser.com/questions/1127591/how-do-i-map-ctrl-f8-in-vim
use set to bind terminal sequences to actual names


https://vim.fandom.com/wiki/Mapping_fast_keycodes_in_terminal_Vim
A better way of mapping keycodes is to first assign the terminal keycode to an unused Vim keycode, and then map the newly used Vim keycode. T

look up list of all nvim keycodes. you might not be able to use A-f5


https://github.com/neovim/neovim/issues/2204
I want to reassign a key to an arbitrary escape code. This has always been possible to do in vim with `set <key>=^[code`, but this is impossible to do in neovim without apparently customizing a terminfo, unless I have misunderstood something. That's a limitation.

https://github.com/sjl/vitality.vim/issues/34


Neovim: if I enter KP9 sequence after `<C-V>` in insert mode, input is a literal `<tab>` (ASCII code for tab is 0x9).



___
1 find list of all neovim keycodes an what terminal sequences trigger them



https://github.com/neovim/neovim/issues/8317


try logging with v3log