REMEMBER tmux thumbs behaviour:
hit a key..all regex matched strings ONLY IN CURRENT BUFFER show as highlighted and a character is floating beside it, you can push the character and the highlight/match gets copied to the clipboard

https://github.com/Morantron/tmux-fingers


https://rustrepo.com/repo/fcsonline-tmux-thumbs-rust-utilities

https://github.com/fcsonline/tmux-thumbs
https://github.com/pawel-wiejacha/tmux-picker


@thumbs-command
default: 'tmux set-buffer -- {} && tmux display-message \"Copied {}\"'

try standalone thumbs 

https://github.com/RTBHOUSE/tmux-picker