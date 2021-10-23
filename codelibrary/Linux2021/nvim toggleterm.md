reading all of README to see how i open multiple terminals:



how to focus toggle terminal:
https://github.com/akinsho/toggleterm.nvim/issues/42
Is there a way to refocus on an already open terminal window by referring to it's number (set using `count = [0-9]+`) making use of an nvim-toggleterm function or similar ?

___
how to create and remove more than 1 terminal?

Setting the _open_mapping_ key to use for toggling the terminal(s) will setup mappings for _normal_ mode If you prefix the mapping with a number that particular terminal will be opened

you will not be able to use a count with the open mapping in terminal and insert modes
You can create buffer specific mappings to exit terminal mode and then use a count with the open mapping.

https://github.com/akinsho/toggleterm.nvim#open-multiple-terminals-side-by-side this to open 2

ToggleTerm --> toggleterm.toggle_command
TermExec toggleterm.exec_command


___
why is open terminal count off by 1?

open in a buffer by setting direction=window