https://blog.jonlu.ca/posts/speeding-up-zsh
```
for i in $(seq 1 10); do /usr/bin/time $SHELL -i -c exit; done
```

tools used:
command above
zsh -xv <-- turns on zsh native debug tools
enables xtracing and verbose output - not that good for time analysis

The second is an order-blind profiler - at the top of `.zshrc`, insert `zmodload zsh/zprof`. This will enable the built in profiling.


https://stevenvanbael.com/profiling-zsh-startup
turn on zsh profiling very easy:
top of zshrc: zmodload zsh/zprof
bottom: zprof

you can also turn off zprof profiling and use this one liner to measure total load time: 
```
time  zsh -i -c exit
zsh -i -c exit  0.67s user 0.06s system 86% cpu 0.842 total
```


https://esham.io/2018/02/zsh-

https://htr3n.github.io/2018/07/faster-zsh/

^[[5~
^[[6~



___
zprof view explained:
https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#The-zsh_002fzprof-Module

MOST IMPORTANT COLUMN