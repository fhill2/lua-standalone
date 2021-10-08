local globals = {}

local inspect = require("inspect")
--local rawprint = print
dump = function(t) print(inspect(t)) end
uv = require"luv"
home = uv.os_homedir()
mode = uv.fs_stat(home).mode
vim = require"shared"
vim.loop = require"luv"
--globals.print = function(t)
--  print(t)
--end



local function get_abs(parent)
local short_src = debug.getinfo(2).short_src
local fp
if short_src:match("%.%.%.") then
  fp = short_src:gsub("%.%.%.", "home")
elseif short_src:match(home) then
  fp = short_src
else
  fp = os.getenv("PWD") .. "/" .. debug.getinfo(2).short_src
end

if parent then 
--return fp:format("^(.+)%s[^%s]+", "/", "/")
print('returning parent')
return fp:match("(.*/codelibrary%.lua)")
else
return fp
end

end

globals.file = function()
return get_abs(false)
end

globals.root = function()
-- could add project_root fn here but cba
return get_abs(true)
end

return globals


