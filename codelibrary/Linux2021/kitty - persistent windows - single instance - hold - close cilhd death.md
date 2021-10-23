https://github.com/kovidgoyal/kitty/issues/3525



--hold
when all child processes are closed, main kitty parent window will stay open.
isnt affected by kitty @ signal-child 


___
--single-instance
still dont know what this does?
https://github.com/kovidgoyal/kitty/issues/3363


https://github.com/kovidgoyal/kitty/issues/3110
when you run kitty --single-instance, instead of a new OS window  
being created in a new process, a new OS Window is created in a  
previously running process of kitty --single-instance

REMEMBER for kitty @ ls to see everything, start the first terminal as --single-instance. then kitty --single-instance again and kitty @ ls will show all terminals
kitty @ ls CAN SHOW EVERYTHING
____

close_on_child_death
when sending tasks into the background of a terminal, this affects if kitty will close or keep open
https://github.com/kovidgoyal/kitty/issues/3525