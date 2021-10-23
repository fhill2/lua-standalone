REMEMBER whatever awesome version you are running:
default config is generated for nix in /run/current-system/sw/etc/xdg/awesome/rc.lua
so you can copy that

https://github.com/Elv13/awesome-1/tree/doc_tests_and_notif

https://github.com/awesomeWM/awesome/pull/644
going through writing down everything


there is upstream_dynamic_p7
and then the default branch doc_tests_notif of awesome-1

has i3 stacking layout



```lua
local stack = require("awful.layout.dynamic.tabbed")
local tile = require("awful.layout.dynamic.base_layout")
local manual = require("awful.layout.dynamic.suit.manual")

local mycustomtilelayout = manual {
        {
            max_elements = 1,
            priority     = 3,
            layout       = tile.vertical
        },
        {
            reflow       = true,
            max_elements = 2,
            priority     = 1,
            layout       = tile.vertical
        },
        {
            priority = 1,
            layout = tile.vertical
        },
        fill_space = true,
        layout     = tile.horizontal
}

```


https://github.com/awesomeWM/awesome/pull/644#issuecomment-381728339
There is now an experimental `conditional` declarative container. This can be used to create layouts with `if/elseif/else` sections. This is very nice to create layouts that act differently depending on the number of clients. No need for hardcoded `master_fill_policy`. Having layouts that act depending on the number of client is now easy enough to write/



https://github.com/awesomeWM/awesome/pull/644#issuecomment-381848314 READ TO HERE



from upstream_dynamic_p7: awful/layout is dynamite folder in docs_tests_notif of awesome-1


https://github.com/Elv13/awesome-1/tree/doc_tests_and_notif/lib/dynamite
so use doc_tests_notif and:
from dynamite readme of doc_tests_notif:
This module is developed alongside AwesomeWM and thus always require the latest git commit of AwesomeWM to work as intended. 