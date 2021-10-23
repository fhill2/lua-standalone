https://github.com/niieani/bash-oo-framework


https://news.ycombinator.com/item?id=17730492
While it looks like a really cool project, I could never see myself using it, as usually when I want to use a shell scripting language I want full portability, and end up writing in sh. When I want to write something more advanced I use real programming language.

The only use case I can think of is an extremely constrained environment where bash is the only way of interfacing with it. I tried making a really basic router do some more complicated processing once because I couldn't figure out how to get any other programming environment on it; but later realized it was worth just buying better routers that could be modified... or figuring out how to anyways.


or what I understand, this framework is compatible only with Bash, and not with other POSIX shells. Tipically on a router and other embedded platforms you find a minimal shell, like ash, that is POSIX-compatible but lacks of all the GNU extensions that Bash have and are used by this framework.

You find a full version of Bash only on GNU/Linux (not even in other UNIX OS like BSD), and there you can install the interpreter for the programming language of your choice


https://google.github.io/styleguide/shellguide.html


https://github.com/niieani/bash-oo-framework/blob/master/lib/TypePrimitives/string.sh