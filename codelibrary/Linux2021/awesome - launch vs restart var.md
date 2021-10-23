https://www.reddit.com/r/awesomewm/comments/76b3xs/anyway_to_get_awesome_to_respect_xdgautostart/


dex = desktop entry execution
https://github.com/jceb/dex

https://github.com/awesomeWM/awesome/pull/2409/files
I THINK awesome reads the string of a function named run_once in rc.lua and then doesnt run it again on restart


discussing an option to "skip rules" at startup
https://github.com/awesomeWM/awesome/issues/2530

THERE IS A startup emit signal

https://github.com/awesomeWM/awesome/commit/6bd9a21c39b21d2f45b3cfa60e08eb9f6339f2dd

https://github.com/awesomeWM/awesome/commit/6bd9a21c39b21d2f45b3cfa60e08eb9f6339f2dd



TO SEPARATE LUA CODE FOR STARTUP ONLY vs RESTART
have display manager run a different config file, that runs it config, and then runs rc.lua
have awesome.restart() use rc.lua