https://github.com/folke/lua-dev.nvim/issues/15


https://github.com/hrsh7th/nvim-compe/issues/191
nvim-compe doesnt support signature help when typing


https://github.com/ray-x/lsp_signature.nvim




https://github.com/folke/lua-dev.nvim/issues/21
how to find out what config was loaded into lsp after startup:
```lua
local ret = {}
  for _, client in pairs(vim.lsp.get_active_clients()) do
    ret[client.name] = { root_dir = client.config.root_dir, settings = client.config.settings }
  end
print(vim.inspect(ret))
```