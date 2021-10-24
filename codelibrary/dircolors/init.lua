local util = require("codelibrary.util")
local err = require("codelibrary.dircolors.util").err
local err_exit = require("codelibrary.dircolors.util").err_exit
--local self_map = require("codelibrary.dircolors.util").self_map

local function validate(config)
   local all_extensions = {}
  for _, v in ipairs(config) do
    if not v.color then
      err_exit(v, "color property doesnt exist in table")
    end

    if type(v.color) == "table" or type(v.color) == "number" then
      err_exit(v, "color property can only be string")
    end

    if not v.cat then
      err_exit(v, "must provide cat for create_nested()")
    end

    if type(v.ext) == "string" then v.ext = { v.ext } end
    for i, ext in ipairs(v.ext) do
      if ext:match("^%.") then
        v.ext[i] = ext:sub(2)
      elseif ext == "" then
        v.ext[i] = nil
      end

      if all_extensions[ext] then
        err_exit(v, ext .. ": duplicate extension found")
      else
      all_extensions[ext] = ext
      end

    end
  end



  return config
end

local M = {}
----------------------------------------
M.parse = require("codelibrary.dircolors.parser").parse
local original_config = validate(require("codelibrary.data.colors"))
local config = M.parse(original_config)
----------------------------------------
--- testing start ---
local function remove_test_dir(dest)
  util.remove_dir(dest)
  util.create_fp_dirs(dest)
  util.mkdir(dest)
end

function M.create_top_level(conf)
local dest = home .. "/tmp/colors"
  -- creates all files within 1 folder
  remove_test_dir(dest)
  for ext, _ in pairs(conf.dircolors.ext) do
    util.create_file({ dest = ("%s/file.%s"):format(dest, ext), silent = true })
  end
  
  for file, _ in pairs(conf.dircolors.file) do
    util.create_file({ dest = ("%s/file.%s"):format(dest, file), silent = true })
  end

end

function M.create_nested(original_conf)
local dest = home .. "/tmp/colors"
  -- recreates config stucture inside test folder
  remove_test_dir(dest)
  for _, v in ipairs(original_conf) do
    local cat = v.cat:gsub(" ", "-")
    util.mkdir(("%s/%s"):format(dest, cat))

    if v.ext then
      for _, ext in ipairs(v.ext) do
        util.create_file({ dest = ("%s/%s/file.%s"):format(dest, cat, ext), silent = true })
      end
    end

    if v.file then
      for _, file in ipairs(v.file) do
        util.create_file({ dest = ("%s/%s/file.%s"):format(dest, cat, file), silent = true })
      end
    end
  end
end


--- testing end ---

function M.export_dircolors(conf)
  -- takes in a color object, returns a string in LS_COLORS env var syntax
  local ls_colors = {}
  for ext, id in pairs(conf.dircolors.ext) do
    table.insert(ls_colors, ("*%s=38;5;%s"):format(ext, id))
  end

  for file, id in pairs(conf.dircolors.file) do
    table.insert(ls_colors, ("*%s=38;5;%s"):format(file, id))
  end


  local ls_colors = ("export LS_COLORS='%s'"):format(table.concat(ls_colors, ":"))

local dircolors =   print(ls_colors)
  
util.recreate_write_file({
dest = dev_cl .. "/shell/zsh-src/dircolors.zsh",
data = ls_colors,
})
end










function M.export_xplr(conf)

local function hex2rgb(hex)
    hex = hex:gsub("#","")
    return { tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6)) }
end

 local xplr = {}

local pre = [[
local extension = xplr.config.node_types.extension
local colors = {}
]]
table.insert(xplr, pre) 


table.insert(xplr, "colors.ext = {")
 
for ext, hex in pairs(conf.xplr.ext) do
 local rgb = table.concat(hex2rgb(hex), ",")
  table.insert(xplr, 
  ([[{ "%s", { %s }},]]):format(ext, rgb)) 
 end
table.insert(xplr, "}")


table.insert(xplr, "colors.file = {")

 for file, hex in pairs(conf.xplr.file) do
 local rgb = table.concat(hex2rgb(hex), ",")
  table.insert(xplr, 
  ([[{ "%s", { %s }},]]):format(file, rgb)) 
 end
table.insert(xplr, "}")

local post = [[
for _, v in ipairs(colors.ext) do
  local ext = v[1]
  local rgb = v[2]
  if not extension[ext] then
    extension[ext] = { style = { fg = { Rgb = rgb } } }
  elseif not extension[ext].style then
    extension[ext].style = { fg = { Rgb = rgb } }
  end
end

local special = xplr.config.node_types.special
for _, v in ipairs(colors.file) do
  local ext = v[1]
  local rgb = v[2]
  if not special[ext] then
    special[ext] = { style = { fg = { Rgb = rgb } } }
  elseif not special[ext].style then
    special[ext].style = { fg = { Rgb = rgb } }
  end
end
 ]]
 table.insert(xplr, post)



util.recreate_write_file({
dest = "/home/f1/.config/xplr/colors.lua",
data = table.concat(xplr, "\n"),
})
end

function M.export_kitty(conf)
local kitty_config = home .. "/.config/kitty/colors.conf"

local kitty = {}

for id, hex in pairs(conf.kitty) do
table.insert(kitty, ("color%s %s"):format(id, hex))
end
dump(kitty)
util.recreate_write_file({
dest = home .. "/.config/kitty/colors.conf",
data = table.concat(kitty, "\n"),
})
end

-- not using
--M.create_top_level(config)

-- MAIN
M.create_nested(original_config)

M.export_xplr(config)
M.export_dircolors(config)
M.export_kitty(config)

--local lookup = require("codelibrary.dircolors.lookup")
--local github = lookup.github("js")
--dump(github)
