http://docs.qtile.org/en/latest/manual/commands/index.html

Commands = Actions


different ways that commands can be called: 
bound to keys
used in qtile shell,
qsh jupyter kernel iqshell
called from a script to interact with qtile from python

7 basics components of qtile wm:
layouts, windows, groups, bars, widgets, screens, root
components are specified by dot notation from the root

print root:
```python
c = interactiveCommandClient()
print(c.status())
```


you can also use CommandClient:
```python
from libqtile.command.client import CommandClient
c = CommandClient()
print(c.call("status")())
```



target group
```python
c.group.info() <-- without dot notation gets current group
c.group["b"].to_screen(2)
```

to display screen currently displaying group b:
c.group["b"].screen.info()

you will get errors that nodes dont exist

___
QTILE KEYS IN QTILE SHELL:
http://docs.qtile.org/en/latest/manual/commands/index.html#keys
___
qtile shell
http://docs.qtile.org/en/latest/manual/commands/shell/qshell.html#qshell
enter shell: qtile shell
cd group/4/window/mywindow <-- you can do this
ls <-- shows selectors available for an object
items(group) <-- like dump(table) in lua
in items() arg1 = if selector is optional. false = required
help <-- shows qtile docs


___
Scripting
http://docs.qtile.org/en/latest/manual/commands/scripting.html#scripting
qtile is client server and responds to messages over IPC

import libqtile which establishes IPC connection to the currently running instance of qtile.

```python
# minimal example
from libqtile.command.client import InteractiveCommandClient
c = InteractiveCommandClient()
print(c.screen.info()["index"])
```