https://superuser.com/questions/1507105/how-to-expand-shell-variable-in-tmux-send-keys

The variable is single-quoted in the script, so it's not expanded. The shell in tmux gets `cd ${MY_WORKSPACE}` literally, as if you typed it. Undefined variable gets expanded to nothing.