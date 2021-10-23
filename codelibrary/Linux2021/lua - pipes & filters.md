https://www.lua.org/pil/9.2.html




http://lua-users.org/lists/lua-l/2007-10/msg00189.html

There are usually two ways to handle bidirectional
popens:
 
First: use two different processes/tasks/threads, one
for sending data to the filter and one for reading data
from it.  Of course, these two processes shouldn't block
each other through an additional communication channel
or the deadlock may come again.

This method is the one usually used for typical filters
in Unix pipes.  It works very well and the implementation
gives no big problems.  It is used when the reader and
the writer-process are indepent from each other, a simple
producer/filter/consumer relationship.


Second: use non-blocking file handles together with
select/poll-like system calls to dispatch reading and
writing yourself.  That prohibits use of stdio.  The
stdio routines are not designed for non-blocking access
and all kind of magic things happen.  Even if you think
you can get away with select and blocking I/O (you're
wrong btw) stdio won't play nice with you.  You can't
really control when and how stdio performs I/O on the
relevant file pointers and you can bet that it works
differently on a different implementation.  You can't
even query if there's still something in the input
buffer!


https://stackoverflow.com/questions/57046701/write-out-values-to-pipe-between-python-and-lua-script
`io.popen` can open pipe either to read or to write, but not both. So to read you have to use `r` modificator or use some other library to do bidirectional IO.



___
trying to recreate libuv with non c modules so i can host a msgpack client inside a lua plugin
https://github.com/daurnimator/lua-spawn

___
all lua multithreading libraries
http://www.luteus.biz/Download/LoriotPro_Doc/LUA/LUA_For_Windows/lanes/comparison.html


___
writing binary to a socket
https://www.google.com/search?q=lua+write+to+socket&oq=lua+write+to+socket&aqs=chrome.0.69i59j0l2j0i22i30l2j69i60l3.2893j1j7&sourceid=chrome&ie=UTF-8


https://stackoverflow.com/questions/30240830/lua-socket-unix-domain-sockets


https://stackoverflow.com/questions/39421061/lua-how-to-read-from-unix-file-socket
read from unix file socket

there seems to be pipes, sockets for internet, and unix file sockets. all different types. you can see the type of a file with file /path/to/file



https://stackoverflow.com/questions/30240830/lua-socket-unix-domain-sockets/30243020#30243020
he recommends luaposix over luasockets for standard unix sockets
or the other alternatives liek cqueues etc