#!/run/current-system/sw/bin/luajit
local M = {}
local json = require"lib.json"

local items = {
{"home-manager switch", "cd ~/dev/dot/home-manager && home-manager build --flake .#nixos"},
{"home-manager", "cd ~/dev/dot/system && sudo nixos-rebuild switch --flake .#desk"},

}



local entries_t = {}

for _, item in ipairs(items) do
--print(table.concat({ item[1], " -- ", item[2]}))
table.insert(entries_t, table.concat({ item[1], " --- ", item[2]}))
end
local entries = table.concat(entries_t, "\n")
--dump(entries)

--function M.show()
local handle = io.popen(([[echo -e '%s' | fzf]]):format(entries))
local selection = handle:read "*a"
handle:close()
local selection = selection:match("---%s(.+)") 
print(selection)
local send = "kitty @ --to unix:/tmp/kittybtm"
os.execute(([[%s new-window --new-tab --tab-title fzf zsh -c "cd ~/dev/cl/lua/standalone; ./omni.lua"]]):format(send))
os.execute(("%s close-tab -m title:sel"):format(send))
os.execute(([[%s new-window --new-tab --tab-title sel zsh -c '%s; zsh']]):format(send, selection))

--os.execute(("kitty @ --to unix:/tmp/kittybtm send_text %s"):format(selection))

--end

return M
