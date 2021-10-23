#!/run/current-system/sw/bin/luajit
local M = {}
local json = require"lib.json"

-- dont add - to the name
local items = {
{"home-manager switch", "cd ~/dev/dot/home-manager && home-manager build --flake .#nixos"},
{"home-manager", "cd ~/dev/dot/system && sudo nixos-rebuild switch --flake .#desk"},

}

local sessions = {
init = { "launch session init", {"layout fat:bias=80;full_size=1;mirrored=false", "launch nvim"," launch zsh", "launch zsh", "launch zsh"}},
}


local entries_t = {}

for _, item in ipairs(items) do
table.insert(entries_t, table.concat({ item[1], " --- ", item[2]}))
end

for _, item in pairs(sessions) do
local session = table.concat(item[2], ";")
table.insert(entries_t, table.concat({ item[1], " --- ", session}))
end
local entries = table.concat(entries_t, "\n")


--function M.show()
local handle = io.popen(([[echo -e '%s' | fzf]]):format(entries))
local selection = handle:read "*a"
handle:close()

local name = selection:match("^(.+)---") 
local res = selection:match("---%s(.+)$") 

if name:match("launch session") then

local pick = name:match("launch session (.-)%s")
os.execute("kitty @ new-window --new-tab")
dump(pick)
dump(sessions[pick])
for _, cmd in ipairs(sessions[pick][2]) do
   os.execute("kitty @ " .. cmd)
end
os.execute("kitty @ close-window -m num:0")
  else
  end
print(name)
print(res)

--os.execute("kitty @ new-window --new-tab")
--local send = "kitty @ --to unix:/tmp/kittybtm"
--os.execute(([[%s new-window --new-tab --tab-title fzf zsh -c "cd ~/dev/cl/lua/standalone; ./omni.lua"]]):format(send))
--os.execute(("%s close-tab -m title:sel"):format(send))
--os.execute(([[%s new-window --new-tab --tab-title sel zsh -c '%s; zsh']]):format(send, selection))

--os.execute(("kitty @ --to unix:/tmp/kittybtm send_text %s"):format(selection))

--end

return M
