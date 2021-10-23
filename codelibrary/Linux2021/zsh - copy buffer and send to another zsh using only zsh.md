then try pipe..
search up piping to /dev/tty https://www.google.com/search?q=pipe+to+%2Fdev%2Ftty&oq=pipe+to+%2Fdev%2Ftty&aqs=chrome..69i57.2047j0j3&sourceid=chrome&ie=UTF-8

check tty number in terminal:
tty



https://serverfault.com/questions/178457/can-i-send-some-text-to-the-stdin-of-an-active-process-running-in-a-screen-sessi/547144

how to show PID of current shell:
echo $$

https://stackoverflow.com/questions/53167231/bash-read-stdin-from-given-pid


You cannot interact with a program's file descriptors after it has been started. The entries in `/proc/$pid/fd/` simply tell you where the file descriptors are connected -- you can write to the place which is connected to stdout, and find out where it's reading its stdin from, but not change what they are connected to or inject new data into any of those streams.

A common workaround for this is to run the program under a tool which enables these operations (`expect`, `tmux`, etc) but of course that needs to happen at the time you start the program