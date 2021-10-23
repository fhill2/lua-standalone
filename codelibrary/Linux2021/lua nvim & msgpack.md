https://gist.github.com/catwell/2971290

https://github.com/antirez/lua-cmsgpack


https://fperrad.frama.io/lua-MessagePack/


https://neovim.io/doc/user/api.html



https://github.com/neovim/neovim/wiki/Related-projects#api-clients nvim msgpack clients



___
how to use https://github.com/neovim/lua-client

issues:
this is ussed by all the 3500 tests in nvim test/**.lua



https://github.com/neovim/lua-client/issues/52


modules used by nvim client:
mpack = lua binding to [libmpack](https://luarocks.org/modules/tarruda/mpack)




https://github.com/catwell/luajit-msgpack-pure
he recommends luarocks install lua-MsgPack


regarding luv and why it only shows up as a .so file in luarocks install folder:
https://github.com/luvit/luv/issues/147


ALL DIFFERENT VERSIONS OF LIBUV IN LUA:
luvit - 

There is no need for luvit, luvi, or even the luv rocks package.

luvit - https://github.com/luvit/luvit
luv - https://github.com/luvit/luv
luvi - https://github.com/luvit/luvi



confirmed here:
luv is a single binary file: https://luvit.io/blog/pure-luv.html

SEE netstat command

___
using sockconnect() - and getting connection refused
https://github.com/neovim/neovim/issues/9470
`mkfifo` makes a FIFO object, not a named pipe. We could support it, but that would require separate code, as it is unidirectional, and we would connect to either the reading or writing end specifically.

sockconnect() only works on sockets


https://docs.progress.com/bundle/openedge-programmimg-interfaces-117/page/Creating-a-named-pipe.html
REMEMBER mkfifo creates a fifo object WHICH IS DIFFERENT to a named pipe

___
create sockets for the command line
https://serverfault.com/questions/358866/create-unix-named-socket-from-the-command-line
There is no exact equivalent of mkfifo for socket, i.e. there is no command that just creates a "hanging" socket. This is for historical reason: server's function bind(), the one that creates a socket name/inode in the filesystem, fails if the name is already used. In other words, server cannot operate on a pre-existing socket.

So you have to create a socket by the server, so the server can keep track of it. so maybe try creating a socket by a listening server

```
nc -lkU aSocket.sock
```


https://en.m.wikipedia.org/wiki/Unix_domain_socket


https://superuser.com/questions/484671/can-i-monitor-a-local-unix-domain-socket-like-tcpdump
socat 2 arguments explained:
sudo mv /path/to/sock /path/to/sock.original
sudo socat -t100 -x -v UNIX-LISTEN:/path/to/sock,mode=777,reuseaddr,fork UNIX-CONNECT:/path/to/sock.original
What is happening above: First move original socket to sock.original. Socat creates a new socket ('UNIX-LISTEN') in the originals location and forwards all to the original ('UNIX-connect'). The -v tells socat to also print output to STDERR.


https://unix.stackexchange.com/questions/187134/is-there-a-netcat-like-utility-that-uses-unix-sockets
socat is betcat for sockets, serial lines, reusable connections


___
socat docs:
http://www.dest-unreach.org/socat/


___
more trying to create a unix socket and monitor output


___
https://unix.stackexchange.com/questions/436945/sockets-and-file-descriptors
Opening a socket opens a socket, which is what you see listed as file descriptor 3 in your output (socket:[5474494]). The other three file descriptors are the standard input, output and error descriptors, which are opened by default for any process. In your case, these point to the terminal where the program is running, which is why “surni” shows up there when you write to the file descriptor.

To write to the socket, you need to use appropriate mechanisms, such as netcat in the other direction:

echo Hello > nc localhost 9999



have to do this, only way ive found to monitor a unix socket:
https://newbedev.com/can-i-monitor-a-local-unix-domain-socket-like-tcpdump



___
tips on debugging msgpack:
https://framagit.org/fperrad/lua-MessagePack/-/issues/6
Have you try without `ltn12` ?

```
f = io.open('test.dump', 'r')
src = f:read('*a')
f:close()
for _, v in mp.unpacker(src) do ...
```

Have you try with another library (not necessary in Lua) ?

Have you verify the input stream with `hexdump` and done a manual decode ?