local util = require("codelibrary.util")
local err = require("codelibrary.dircolors.util").err
local err_exit = require("codelibrary.dircolors.util").err_exit
local self_map = require("codelibrary.dircolors.util").self_map

local function validate(config)
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

    for i, ext in ipairs(v.ext) do
      if ext:match("^%.") then
        v.ext[i] = ext:sub(2)
      elseif ext == "" then
        v.ext[i] = nil
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
local function remove_test_dir()
  util.remove_dir(dest)
  util.mkdir(dest)
  util.create_fp_dirs(dest)
end

function M.create_top_level(conf)
local dest = dev_cl .. "/shell/colors2021/all-ext"
  -- creates all files within 1 folder
  remove_test_dir()
  for ext, _ in pairs(conf.ext.rounded) do
    util.create_file({ dest = ("%s/file.%s"):format(dest, ext), silent = true })
  end
  
  for file, _ in pairs(conf.file.rounded) do
    util.create_file({ dest = ("%s/file.%s"):format(dest, file), silent = true })
  end

end

function M.create_nested(conf)
local dest = dev_cl .. "/shell/colors2021/all-ext"
  -- recreates config stucture inside test folder
  remove_test_dir()
  for _, v in ipairs(conf) do
    util.mkdir(("%s/%s"):format(dest, v.cat))

    if v.ext.rounded then
      for _, ext in ipairs(v.ext) do
        util.create_file({ dest = ("%s/%s/file.%s"):format(dest, v.cat, ext), silent = true })
      end
    end

    if v.file.rounded then
      for _, file in ipairs(v.file) do
        util.create_file({ dest = ("%s/%s/file.%s"):format(dest, v.cat, file), silent = true })
      end
    end
  end
end

function M.create_256()

end
--- testing end ---

function M.export_dircolors(config)
  -- takes in a color object, returns a string in LS_COLORS env var syntax
  local ls_colors = {}
  for ext, id in pairs(config.ext.rounded) do
    table.insert(ls_colors, ("*%s=38;5;%s"):format(ext, id))
  end

  for file, id in pairs(config.file.rounded) do
    table.insert(ls_colors, ("*%s=38;5;%s"):format(file, id))
  end


  local ls_colors = ("export LS_COLORS='%s'"):format(table.concat(ls_colors, ":"))

local dircolors = dev_cl .. "/shell/zsh-src/dircolors.zsh"
  print(ls_colors)
if uv.fs_stat(dircolors) then 
  uv.fs_unlink(dircolors) 
end
  util.create_file({ dest = dircolors})
  
local fd = assert(uv.fs_open(dircolors, "w", 438))
  uv.fs_write(fd, ls_colors, function(error)
      assert(not error, error)
      assert(uv.fs_close(fd))
    end)

end














function M.export_xplr(config)
local id_rgb = require"codelibrary.dircolors.lookup".id_rgb()
local xplr_config = "/home/f1/.config/xplr/colors.lua"


local function hex2rgb(hex)
    hex = hex:gsub("#","")
    return { tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6)) }
end


if uv.fs_stat(xplr_config) then 
  uv.fs_unlink(xplr_config) 
end
  util.create_file({ dest = xplr_config})

 local xplr = {}

local pre = [[
local extension = xplr.config.node_types.extension
local colors = {}
]]
table.insert(xplr, pre) 


table.insert(xplr, "colors.ext = {")
 
for ext, hex in pairs(config.ext.unrounded) do
 local rgb = table.concat(hex2rgb(hex), ",")
  table.insert(xplr, 
  ([[{ "%s", { %s }},]]):format(ext, rgb)) 
 end
table.insert(xplr, "}")


table.insert(xplr, "colors.file = {")

 for file, hex in pairs(config.file.unrounded) do
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




local fd = assert(uv.fs_open(xplr_config, "w", 438))

uv.fs_write(fd, table.concat(xplr, "\n"), function(error)
      assert(not error, error)
      assert(uv.fs_close(fd))
    end)

end


--M.create_top_level(config)
--M.create_nested(original_config)
M.export_xplr(config)
--dump(config)
M.export_dircolors(config)
--



-- local lookup = require("codelibrary.dircolors.lookup")
-- local github = lookup.github() -- <-- NON 256 ext = hex- all github languages
-- dump(github)
