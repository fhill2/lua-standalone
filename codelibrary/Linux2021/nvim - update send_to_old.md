 update get selection..and plenary paths on send_to_old
 make sure window always show
 
 CAN USE local clip = vim.v.event.regcontents[1] <-- look in clipboard.lua
 
 test creation of file paths
 
 
 ```lua
telescope better visual selection:function Search_string()
  local text=vim.fn.escape(vim.fn.getreg('"'), ' ')
  text = string.gsub(text, "\n", "")
  print(text)
  local cmd = [[:Telescope grep_string search=]]..text
  print(cmd)
  vim.api.nvim_command(cmd)
end
vim.api.nvim_set_keymap("v", "<Leader>rg", "y:lua Search_string()<cr>", { noremap = true, silent = true })
```