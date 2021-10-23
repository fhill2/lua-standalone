


use bindkey -n '^M' <-- lists mapping (this is from marlonrichert zsh-edit extension)

use reverse-bindkey-lookup (installed it already)
https://stackoverflow.com/questions/6878862/zsh-bindkey-reverse-lookup



REMEMBER 1st C-q <key>
	if there is no output on prompt it means that zsh isnt even responding to that key, you have to create the key sequences to be trigerred in kitty
	
	
	
	https://sw.kovidgoyal.net/kitty/faq.html
	This is accomplished by using `map` with [`send_text`](https://sw.kovidgoyal.net/kitty/conf.html#shortcut-kitty.Send-arbitrary-text-on-key-presses) in `kitty.conf`. For example:

map alt+s send_text normal,application \x13

This maps alt+s to ctrl+s. To figure out what bytes to use for the [`send_text`](https://sw.kovidgoyal.net/kitty/conf.html#shortcut-kitty.Send-arbitrary-text-on-key-presses) you can use the `show_key` kitten. Run:

kitty +kitten show_key

Then press the key you want to emulate.
	
	
	
	
	https://stackoverflow.com/questions/25294283/bindings-with-key-sequences
	
	https://github.com/neovim/neovim/issues/8317
	find out what term info declares as the combo
	
	___
	https://unix.stackexchange.com/questions/296546/how-to-get-the-f1-f4-keys-to-behave-normally-in-tmux
	The keycode of your function keys must mach the keycode of your terminal definition.

I mean if your F1 function key produce ^[[11~ you must have kf1=\E[11~ (e.g. TERM=dtterm) in the definition of your terminal.
	
	https://unix.stackexchange.com/questions/30058/how-can-i-check-which-terminal-definitions-are-available
	
	
	https://unix.stackexchange.com/questions/240146/why-does-tmux-set-term-variable-to-screen
	
	https://unix.stackexchange.com/questions/484775/screen-and-kitty-what-should-term-be
	
	F13=^[[25~
		F14=^[[26~
		F15=^[[27~
		F16=^[[28~
	
	
	
	
	
	https://superuser.com/questions/588260/how-to-bind-function-keys-in-zsh
	
	other ways to view keys:
	cat ...then type keys
	
	https://www.reddit.com/r/linuxquestions/comments/lbpww2/gnome_wayland_f13f24_keys_not_working_in_gnome/
	In wayland, all input devices are handled with libinput. Try and figure out your problem with `libinput debug-events`. Are you binding f13 as shift+f1 or by directly pressing f13?