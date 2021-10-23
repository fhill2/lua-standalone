https://github.com/sayanarijit/xplr

https://arijitbasu.in/xplr/en/introduction.html


__
https://arijitbasu.in/xplr/en/node_types.html
how nodes work
xplr links every file/folder to a node type based on the category/attributes of the file

category priority is: 
special > extension > mime_essence > symlink > file > directory
more specific one is used




___
https://github.com/sayanarijit/xplr/blob/main/docs/en/src/configuration.md
init.lua location: ~/.config/xplr or /etc/xplr
or you can open xplr -c '/path/to/init.lua' <-- both default init.lua are ignored

xplr first executes the built in [init.lua](https://github.com/sayanarijit/xplr/blob/main/src/init.lua) and then your own

___
lua API

lua API is exposed as xplr.config

ALL FIELDS OF LUA API:
xplr.config.general.xxx
https://github.com/sayanarijit/xplr/blob/main/docs/en/src/general-config.md

xplr.config.modes.xxx
https://github.com/sayanarijit/xplr/blob/main/docs/en/src/modes.md


xplr.config.layouts.xxx
https://github.com/sayanarijit/xplr/blob/main/docs/en/src/layouts.md

xplr.fn..xxx ???




____
[xplr - Message](https://arijitbasu.in/xplr/en/message.html)




calling LUA from anywhere that you can bind a message to:



___
all ways i can bind messages:
https://arijitbasu.in/xplr/en/message.html#lua-function-calls 


LUA function calls:
you can define custom lua functions using xplr.fn.custom and then call them with CallLua and CallLuaSilently

hello world lua plugin example:
```lua
-- Define the function
xplr.fn.custom.ask_name_and_greet = function(app)
  print("What's your name?")

  local name = io.read()
  local greeting = "Hello " .. name .. "!"
  local message = greeting .. " You are inside " .. app.pwd

  return {
    { LogSuccess = message },
  }
end

-- Map the function to a key (space)
xplr.config.modes.builtin.default.key_bindings.on_key.space = {
  help = "ask name and greet",
  messages = {
    { CallLua = "custom.ask_name_and_greet" }
  }
}

-- Now, when you press "space" in default mode, you will be prompted for your
-- name. Enter your name to receive a nice greeting and to know your location.
```



messages that call shell commands:
Call, CallSilently, BashExec, BashExecSilently