https://www.reddit.com/r/awesomewm/comments/mdb4r5/open_an_app_in_floating_mode_in_a_specific_tag/ change layout of client dependant on current tag




https://www.reddit.com/r/awesomewm/comments/fvzfq9/spawn_floating_terminal_wont_work/
to spawn a terminal as floating
assign window name when starting terminal
then create custom rule for it

remember use run_or_raise()
https://www.reddit.com/r/awesomewm/comments/nqikdi/move_client_to_current_screen_if_open_spawn_if_not/ THIS

```lua
awful.key({ modkey, }, 'n', function () 
  awful.client.run_or_raise("cudatext", 
function (c) return awful.rules.match(c, {class = "Cudatext"}) end, 

function(c) c:move_to_tag(awful.screen.focused().selected_tag) end) end),

```

https://www.reddit.com/r/awesomewm/comments/8m0pfl/a_nice_awesome_shortcut_floating_window_with/


https://www.reddit.com/r/awesomewm/comments/5t5u3x/how_to_write_a_script_that_opens_4_terminals_runs/


https://www.google.com/search?q=site%3Aawesomewm.org%2Fdoc+%s&newwindow=1&sxsrf=AOaemvKxQjDa_33eJz4RcDi3NWC8D_gpBA%3A1632080198309&ei=RpFHYbSoEtPdgQbEzrzQBw&oq=site%3Aawesomewm.org%2Fdoc+%s&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsANKBAhBGABQ2StY9-MBYOflAWgBcAJ4AIABTYgBoQSSAQIxMZgBAKABAcgBCMABAQ&sclient=gws-wiz&ved=0ahUKEwi049vD5IvzAhXTbsAKHUQnD3oQ4dUDCA4&uact=5


