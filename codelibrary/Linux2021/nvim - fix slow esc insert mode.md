https://vi.stackexchange.com/questions/16148/slow-vim-escape-from-insert-mode
**keycode delay**

Lots of terminal key code starts with `<esc>`, in my machine, `<f5>` is `^[[15~`, `^[` is literal `<esc>`. When `vim` receives `<esc>` from your terminal, it waits `:h 'ttimeoutlen'` milliseconds to see if there are more characters in this key code, if there are none, then vim know it's truly a `<esc>`, otherwise it must be something else. This kind of delay is normal, you can change `ttimeoutlen` to reduce it.

f workaround: set kitty when esc is fired to actually fire another key like esc


it could be tmux
https://www.reddit.com/r/vim/comments/2391u5/delay_while_using_esc_to_exit_insert_mode/