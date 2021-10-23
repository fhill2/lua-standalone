REMEMBER if getting a syntax error when settings hooks:
make outmost ""
, then second to outmost \"
and innermost \'

___

https://devel.tech/tips/n/tMuXz2lj/the-power-of-tmux-hooks
REMEMBER DONT READ MANPAGE for all available hooks its out of date.
tmux show-hooks -g | fzf


to view hooks:
tmux show-hooks 
tmux show-hooks -g
-g applies to all sessions, with set-hook too

to show what command is registered to fire under a specific hook:
tmux show-hooks -g <hookname>

test opening and reopening window and make sure there are no beeps****



https://gist.github.com/ThomasAdam/4007114


https://stackoverflow.com/questions/59209308/make-tmux-export-display-on-reattachment
Commands run with run-shell can't affect the global environment in tmux (unless you run "tmux setenv"), so your run-shell commands won't work.



https://unix.stackexchange.com/questions/628053/use-bash-functions-in-tmux-run-shell-command

https://unix.stackexchange.com/questions/475820/tmux-binding-error-returned-127-in-cygwin\
https://github.com/tmux-plugins/tmux-resurrect/issues/41
https://unix.stackexchange.com/questions/628053/use-bash-functions-in-tmux-run-shell-command


to test run-shell:
open sh and type in the command you are running

REMEMBER zsh -c doesnt load zshrc


why hook -> shell-run zsh -c tsnip-on-pane-enter() -> tmux send-keys $BUFFER doesnt work:
$BUFFER is only active in the shell instance that called it, and a new shell instance is launched, so BUFFER doesnt show anything


	
	
	https://github.com/tmux/tmux/issues/659
	on pane exit
