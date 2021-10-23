--local globals = {}


-- standalone package paths = awesome + standalone package paths
-- local handle = io.popen([[awesome-client 'return package.path']])
-- local awesome_path = handle:read "*a"
-- local awesome_path = awesome_path:match("string%s(.*)"):sub(2):sub(1, -4)
-- handle:close()
-- package.path = package.path .. ";" .. awesome_path

-- local handle = io.popen([[awesome-client 'return package.cpath']])
-- local awesome_cpath = handle:read "*a"
-- local awesome_cpath = awesome_cpath:match("string%s(.*)"):sub(2):sub(1, -3)
-- handle:close()
-- package.cpath = package.cpath .. ";" .. awesome_cpath



inspect = require("lib.inspect")
--local rawprint = print
dump = function(t)
local debug = debug.getinfo(2)
local pre = ("%s:%s"):format(debug.short_src, debug.currentline)
  print(pre, inspect(t)) end


uv = require"luv"
home = uv.os_homedir()
mode = uv.fs_stat(home).mode
vim = require"shared"
vim.loop = require"luv"

cl = home .. "/cl"

dev = home .. "/dev"
dev_cl = dev .. "/cl"
old = dev_cl .. "/old"
dot = dev .. "/dot"




--https://github.com/awesomeWM/awesome/blob/master/lib/awful/spawn.lua
-- local easy_async_with_shell = require"awful.spawn".easy_async_with_shell
-- run = function()
-- easy_async_with_shell()
-- end


--globals.print = function(t)
--  print(t)
--end

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
-- print('returning parent')
-- return fp:match("(.*/codelibrary%.lua)")
-- else
-- return fp
-- end

-- end

-- globals.file = function()
-- return get_abs(false)
-- end

-- globals.root = function()
-- -- could add project_root fn here but cba
-- return get_abs(true)
-- end

-- return globals


