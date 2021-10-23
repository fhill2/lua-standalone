REMEMBER anything set with tmux set -g or tmux setenv when restarting zsh will still be there

REMEMBER shell environment variables arent transferred to new shell running inside tmux
but tmux session environment variables are, so you have to set those for them to be carried.  
___
https://stackoverflow.com/questions/20701757/tmux-setting-environment-variables-for-sessions
OP wants to set tmux environment which sets variables for all windows in that session

in tmux there are 2 groups of env variables: global, per-session

when you create a new tmux session, it merges the 2 groups together
global = shared between all sessions

add env variable to per session group:
tmux setenv FOO foo-one
tmux showenv
but it isnt in the environment of the current session: export FOO='foo-one'

summarized to automating it
f: this still wont work because it only applies env variables to new panes or windows in the current tmux session WHEN THEY ARE OPENED

https://stackoverflow.com/questions/9901657/how-to-change-an-environment-variable-and-apply-to-all-windows-in-a-tmux-session
how to change a shell env varable and apply it to all windows in a tmux session

need to have them apply whn you trigger the window open, and when pane is focused with user option




___
USER OPTIONS

how to delete a user option
remember there are tmux env variables and tmux user options, and you can save custom versions of both