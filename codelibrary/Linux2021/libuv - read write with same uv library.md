https://eli.thegreenplace.net/2017/concurrent-servers-part-4-libuv/
multiple loops are mosly useful for multi-threaded event-driven servers, a more advanced topic I'll leave for future parts in the series.


The runtime behavior of this server is very similar to the event-driven servers of part 3: all clients are handled concurrently in a single thread. Also similarly, a certain discipline has to be maintained in the server's code: the server's logic is implemented as an ensemble of callbacks, and long-running operations are a big no-no since they block the event loop. Let's explore this issue a bit further.


This example demonstrates why it's so important for callbacks to never block in event-driven calls, and applies equally to Node.js servers, client-side Javascript, most GUI programming frameworks, and many other asynchronous programming models.


To ensure that this server doesn't leak memory, I ran it under Valgrind with the leak checker enabled. Since servers are often designed to run forever, this was a bit challenging; to overcome this issue I've added a "kill switch" to the server


https://nodejs.org/en/docs/guides/dont-block-the-event-loop/
The secret to the scalability of Node.js (libuv) is that it uses a small number of threads to handle many clients
But because Node.js has only a few threads, you must structure your application to use them wisely.

In truth, the Event Loop does not actually maintain a queue. Instead, it has a collection of file descriptors that it asks the operating system to monitor, using a mechanism like [epoll](http://man7.org/linux/man-pages/man7/epoll.7.html) (Linux), [kqueue](https://developer.apple.com/library/content/documentation/Darwin/Conceptual/FSEvents_ProgGuide/KernelQueues/KernelQueues.html) (OSX), event ports (Solaris), or [IOCP](https://msdn.microsoft.com/en-us/library/windows/desktop/aa365198.aspx) (Windows).



Offloading
You have two options for a destination Worker Pool to which to offload work.

1.  You can use the built-in Node.js Worker Pool by developing a [C++ addon](https://nodejs.org/api/addons.html). On older versions of Node, build your C++ addon using [NAN](https://github.com/nodejs/nan), and on newer versions use [N-API](https://nodejs.org/api/n-api.html). [node-webworker-threads](https://www.npmjs.com/package/webworker-threads) offers a JavaScript-only way to access the Node.js Worker Pool.
2.  You can create and manage your own Worker Pool dedicated to computation rather than the Node.js I/O-themed Worker Pool. The most straightforward ways to do this is using [Child Process](https://nodejs.org/api/child_process.html) or [Cluster](https://nodejs.org/api/cluster.html).


https://nikhilm.github.io/uvbook/threads.html
Wait a minute? Why are we on threads? Aren’t event loops supposed to be **the way** to do _web-scale programming_? Well... no. Threads are still the medium in which processors do their jobs. Threads are therefore mighty useful sometimes, even though you might have to wade through various synchronization primitives.

A notable aspect of libuv’s thread facilities is that it is a self contained section within libuv. Whereas other features intimately depend on the event loop and callback principles, threads are complete agnostic, they block as required, signal errors directly via return values, and, as shown in the [first example](https://nikhilm.github.io/uvbook/threads.html#thread-create-example), don’t even require a running event loop.