https://sw.kovidgoyal.net/kitty/kittens_intro/





https://sw.kovidgoyal.net/kitty/kittens/custom/
when launching a kitten, kitty will open an overlay window over the current windo and optionally pass the contents of the current window/scrollback to the kitten over stdin, and has access to the running kitty instance


passing args to kittens:
available as args parameter in the main() and handle_result() functions
```conf
map ctrl+k kitten mykitten.py arg1 arg2
```

CWD of the kitten is set to the CWD of whatever program is running in the active kitty window


args:
@selection - replaced by the currently selected text in the active window


INFO about search kitten
https://github.com/trygveaa/kitty-kitten-search/issues/1