--local globals = {}

inspect = require("inspect")
print = function(t) rawprint(inspect(t)) end
uv = require"luv"
home = uv.os_homedir()
mode = uv.fs_stat(home).mode
cl = home .. "/cl"

dev = home .. "/dev"
dev_cl = dev .. "/cl"
old = dev_cl .. "/old"
dot = dev_cl .. "/dot"

--ansicolors = require"lib.ansicolors" 


-- f = {}

-- local function get_abs(parent)
-- local short_src = debug.getinfo(2).short_src
-- local fp
-- if short_src:match("%.%.%.") then
--   fp = short_src:gsub("%.%.%.", "home")
-- elseif short_src:match(home) then
--   fp = short_src
-- else
--   fp = os.getenv("PWD") .. "/" .. debug.getinfo(2).short_src
-- end

-- if parent then 
-- --return fp:format("^(.+)%s[^%s]+", "/", "/")
-- return fp:match("(.*/codelibrary%.lua)")
-- else
-- return fp
-- end

-- end

-- f.file = function()
-- return get_abs(false)
-- end

-- f.root = function()
-- -- could add project_root fn here but cba
-- return get_abs(true)
-- end

--return globals


