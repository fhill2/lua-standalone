local util = require("codelibrary.util")
local err = require("codelibrary.dircolors.util").err
local err_exit = require("codelibrary.dircolors.util").err_exit
local M = {}

-- function M.name_id()
--   -- 256 name --> id
--   local json = require("lib.json")
--   local colors = json.decode(util.read_file_sync(dev_cl .. "/lua/standalone/codelibrary/dircolors/256.json"):gsub("\n", ""))

--   -- creates table: kv pair lookup [k] name --> [v] id
--   local lookup = {}
--   for _, v in ipairs(colors) do
--     lookup[v.name:lower()] = v.colorId
--   end
--   return lookup
-- end

function M.id_hex() end
-- TODO convert these so they dont load for every color lookup
function M.id_rgb()
  -- 256 id --> rgb (for xplr) table mapping
  local json = require("lib.json")
  local colors = json.decode(util.read_file_sync(dev_cl .. "/lua/standalone/codelibrary/dircolors/256.json"):gsub("\n", ""))

  local lookup = {}
  for _, v in ipairs(colors) do
    local rgb = ("%s, %s, %s"):format(v.rgb.r, v.rgb.g, v.rgb.b)
    lookup[tostring(v.colorId)] = rgb
  end
  return lookup
end

function M.github(ext)
  dump(ext)
  -- lookup github linguistics color for the given extension
  local lyaml = require("lyaml")
  local github = lyaml.load(util.read_file_sync(dev_cl .. "/lua/standalone/codelibrary/dircolors/languages.yml"))
  -- creates table: [k] language.extensions --> [v] color
  local lookup = {}
  for _, v in pairs(github) do
    if v.extensions then
      for _, ext in ipairs(v.extensions) do
        lookup[ext:gsub("%.", "")] = v.color
      end
    end
  end

  if lookup[ext] then
    return lookup[ext]
  else
    err_exit(debug.getinfo(1), ext .. ": not found in github linguistics yaml")
  end
end

return M
