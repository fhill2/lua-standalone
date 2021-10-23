local lookup = require("codelibrary.dircolors.lookup")
local err = require("codelibrary.dircolors.util").err
local err_exit = require("codelibrary.dircolors.util").err_exit
local self_map = require("codelibrary.dircolors.util").self_map

local github = lookup.github() -- <-- NON 256 ext = hex- all github languages
--local name_id = lookup.name_id() -- <-- 256 name = id

local M = {}

local function rgb2hex(self)
  local function inner_rgb2hex(rgb)
    local hexadecimal = ""

    for key, value in pairs(rgb) do
      local hex = ""

      while value > 0 do
        local index = math.fmod(value, 16) + 1
        value = math.floor(value / 16)
        hex = string.sub("0123456789ABCDEF", index, index) .. hex
      end

      if string.len(hex) == 0 then
        hex = "00"
      elseif string.len(hex) == 1 then
        hex = "0" .. hex
      end

      hexadecimal = hexadecimal .. hex
    end

    return hexadecimal
  end

  -- is rgb: convert to hex and then round
  local r, g, b = self.color:match("^(%d+),(%d+),(%d+)$")
  local hex = inner_rgb2hex({ r = tonumber(r), g = tonumber(g), b = tonumber(b) })
  if not hex then
    err(self, "failed to parse hex")
  else
    self.color = hex
  end
  return self
end


local function round_hex_to_256(hex)
  -- cba to do in luv
  local handle = io.popen("python3 /home/f1/dev/cl/lua/standalone/codelibrary/dircolors/rgb256.py '" .. hex:gsub("#", "") .. "'")
  local rounded_hex = handle:read("*a")
  handle:close()
  local rounded_hex = rounded_hex:gsub("\n", "")
  return tonumber(rounded_hex)
end

local all_extensions = {}
all_extensions.ext = { rounded = {}, unrounded = {}}
all_extensions.file = { rounded = {}, unrounded = {}}


local parsers = {}
parsers.hex_rgb = {}
parsers.github = {}
--parsers.name = {}


-- all parsers called once on every item on file or ext table, so dont iterate
parsers.hex_rgb.ext = function(self, ext)
  all_extensions.ext.rounded[ext] = round_hex_to_256(self.color)
  all_extensions.ext.unrounded[ext] = self.color
end
parsers.hex_rgb.file = function(self, file)
  all_extensions.file.rounded[file] = round_hex_to_256(self.color)
  all_extensions.file.unrounded[file] = self.color
end

parsers.github.ext = function(self, ext)
  local github_hex = github[ext]

  if github_hex then
    all_extensions.ext.rounded[ext] = round_hex_to_256(github_hex)
    all_extensions.ext.unrounded[ext] = github_hex
  elseif not github_hex and self.fallback then
    err(self, ("no github color for: %s - manual fallback ext applied: %s"):format(ext, self.fallback))
    all_extensions.ext.rounded[ext] = round_hex_to_256(github[self.fallback])
    all_extensions.ext.unrounded[ext] = github[self.fallback]

  else
    err(self, ("no github color for: %s - auto fallback ext applied: %s"):format(ext, self.ext[1]))
  end
end
parsers.github.file = function(self, file)
  err_exit(self, "color = github, with file = {} not supported")
end

-- taken out as I cant specify full rgb color for xplr if I use these parsers
-- parsers.name.ext = function(self, ext)
--   local id = name_id[self.color:lower()]
--   if id then
--     all_extensions.ext.rounded[ext] = id
--   else
--     err_exit(self, self.color .. " - doesnt exist in name --> id table")
--   end
-- end

-- parsers.name.file = function(self, file)
--   local id = name_id[self.color:lower()]
--   if id then
--     all_extensions.file.rounded[file] = id
--   else
--     err_exit(self, self.color .. " - doesnt exist in name --> id table")
--   end
-- end


function M.parse(config)
  for _, v in ipairs(config) do
    -- modes:
    -- github <-- retrieve extension color from languages.yml linguist github
    -- rgb <-- gets rounded to 256 range on dircolors export, xplr is left alone
    -- hex <-- gets converted to rgb, and rgb is used for that extension in the script
    -- name <-- from 256 json name list
    -- hex always gets converted to rgb because of copy pasta rounded 256 rgb fn


    local parser = (v.color:match("^#") and "hex") or (v.color:match(",") and "rgb") or (v.color == "github" and "github") or "error"
    if parser == "error" then err_exit(v, "no parser matched on string: " .. v.color) end

    ------ main parser -------
    -- check if key/ext exists already
    for _, ext in ipairs(v.ext) do
      if all_extensions[ext] then
        err_exit(v, "duplicate extension in config - ." .. ext)
      end
    end

    if parser == "rgb" then
      v.color = rgb2hex(v)
    end

    if parser == "hex" or parser == "rgb" then
      parser = "hex_rgb"
    end
    -- main loop
    if v.ext then self_map(v, v.ext, parsers[parser].ext) end
    if v.file then self_map(v, v.file, parsers[parser].file) end
  end

  return all_extensions
end

return M
