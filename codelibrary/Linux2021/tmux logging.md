REMEMBER when testing set-hook 'pane'focus'  with 'run' : stdout isnt printed to the screen, but the command runs

https://superuser.com/questions/1265979/where-is-the-log-file-by-tmux

https://man7.org/linux/man-pages/man1/tmux.1.html
where is default system log?
Request verbose logging.  Log messages will be saved
                   into _tmux-client-PID.log_ and _tmux-server-PID.log_
                   files in the current directory, where _PID_ is the PID
                   of the server or client process.  If **-v** is specified
                   twice, an additional _tmux-out-PID.log_ file is
                   generated with a copy of everything **tmux** writes to
                   the terminal.

                   The SIGUSR2 signal may be sent to the **tmux** server
                   process to toggle logging between on (as if **-v** was
                   given) and off
				   
				
https://github.com/tmux/tmux/issues/2311


if you get stdout error of returned 127 when using run or run-shell
https://github.com/tmux/tmux/issues/1679

run-shell uses /bin/sh, if you are running an executable outside your default PATH in .tmux.conf you will need to use its full path.

https://unix.stackexchange.com/questions/475820/tmux-binding-error-returned-127-in-cygwin#:~:text=1%20Answer&text=Value%20127%20is%20returned%20by,by%20PATH%20system%20environment%20variable.