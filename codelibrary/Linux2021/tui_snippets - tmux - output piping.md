https://superuser.com/questions/876034/pipe-directly-to-a-tmux-pane



https://www.reddit.com/r/tmux/comments/bvkb8j/tmuxexternalpipe_easily_pipe_tmux_panes_content/

https://www.youtube.com/watch?v=3TnTHR6lB7Y


___
piping with zsh instead:
https://stackoverflow.com/questions/26010208/redirect-pipe-into-read-command
https://stackoverflow.com/questions/19408649/pipe-input-into-a-script
tail -f /tmp/tmuxpipe
echo "hello >> /tmp/tmuxpipe


___
https://stackoverflow.com/questions/58936269/tmux-run-command-in-pane-and-capture-result-in-bash-script


how to use tmux pipe-pane:
you give it a common to pipe all output into, or no command to stop piping

for tmux capture-pane, whatever pane you run the command on, it captures all the current output in that pane, and pipes it into the command you choose 



fix for cp copy:
cp copies with -r if folder is targetted
have it so paths autocomplete when typing in destination and source ..source from current folder..dest from path you started

___
https://unix.stackexchange.com/questions/409861/is-it-possible-to-send-input-to-a-tmux-session-without-connecting-to-it

tmux send-keys -t 1 "asd123456"

https://stackoverflow.com/questions/39523167/tmux-sending-keys-to-a-specific-window


how to send keys to pane by title?


https://stackoverflow.com/questions/26283652/is-there-a-way-to-set-the-name-of-tmux-pane-and-then-refer-to-that-pane-in-a-sc
you can get the pane to set an env variable


https://stackoverflow.com/questions/23898916/how-to-get-the-active-tmux-windows-name


https://gitlab.com/Jrahme/tmux-float

https://unix.stackexchange.com/questions/145857/how-do-you-hide-a-tmux-pane#:~:text=options%20and%20usage.-,Hide%20Pane%203%3A,pane%20).


___
how to hide a tmux pane?
break-pane join-pane

https://stackoverflow.com/questions/42790781/tmux-auto-hide-panel-when-it-loses-focus

if output of tmux show -g @tui_snippets is empty, then open a new pane in a new window tui_snippets and run tmx1

if already exists then find where pane is and move it to under the currently focused pane

bind this function to a keystroke first 



___
zsh capturing every keystroke without using a completion function (because doesnt play nice with autocomplete)
https://superuser.com/questions/604812/how-to-execute-a-function-in-bash-or-zsh-on-every-letter-being-typed-into-prompt


https://github.com/hchbaw/auto-fu.zsh


___
tmux new-window zsh

-d - dont focus window
-F specify output format
-P print info about new window
tmux new-window

https://github.com/Aloxaf/fzf-tab/blob/master/lib/ftb-tmux-popup
tmux popup uses tmux display-message and
and i think display-popup

https://github.com/junegunn/fzf/blob/master/bin/fzf-tmux

use hooks to move pane
https://man7.org/linux/man-pages/man1/tmux.1.html





zsh variable into fzf
https://stackoverflow.com/questions/54051116/using-variables-as-command-arguments-in-zsh
