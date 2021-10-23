https://www.endpoint.com/blog/2013/06/13/making-use-of-unix-pipe
FIFO = named pipe


create pipe:
mkfifo my_fifo

to listen to pipe:
cat my_fifo

send to pipe:
```
echo "hello world" > my_fifo
```


check if a file is a pipe: (look for p)
```
ls -l path_to_my_fifo
```


input data into results of fzf while its running:
https://github.com/junegunn/fzf/issues/880


https://unix.stackexchange.com/questions/117037/how-to-send-data-to-a-serial-port-and-see-any-answer
all devices on unix are mapped to a device file

https://unix.stackexchange.com/questions/138342/how-to-read-write-to-tty-device

https://unix.stackexchange.com/questions/261531/how-to-send-output-from-one-terminal-to-another-without-making-any-new-pipe-or-f


