local lookup = require("codelibrary.dircolors.lookup")
local err = require("codelibrary.dircolors.util").err
local err_exit = require("codelibrary.dircolors.util").err_exit
local self_map = require("codelibrary.dircolors.util").self_map

--local github = lookup.github() -- <-- NON 256 ext = hex- all github languages
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

local function unrounded_hex_to_rounded_id(hex)
  -- cba to do in luv
  local handle = io.popen("python3 /home/f1/dev/cl/lua/standalone/codelibrary/dircolors/rgb256.py '" .. hex:gsub("#", "") .. "'")
  local rounded_hex = handle:read("*a")
  handle:close()
  local rounded_hex = rounded_hex:gsub("\n", "")
  return tonumber(rounded_hex)
end

local output = {
  dircolors = { ext = {}, file = {} }, --  [k] ext --> [v] rounded id
  xplr = { ext = {}, file = {} }, -- [k] ext --> [v] unrounded hex
  kitty = {}, -- [k] id --> [v] unrounded hex
}

-- all parsers called once on every item on file or ext table, so dont iterate

local function parse_kitty(self)
  if output.kitty[self.id] then
    err_exit(self, ": duplicate rounded ID found - TOFIX")
  else
    output.kitty[self.id] = self.hex_unrounded
  end
end

local function parse_dircolors_xplr(self)
  if self.ext then
    for _, ext in ipairs(self.ext) do
      output.dircolors.ext[ext] = self.id
      output.xplr.ext[ext] = self.hex_unrounded
    end
  end

  if self.file then
    for _, file in ipairs(self.file) do
      output.dircolors.ext[file] = self.id
      output.xplr.file[file] = self.hex_unrounded
    end
  end
end

function M.parse(config)
  for _, v in ipairs(config) do
    --or (v.color == "github" and "github")

    local is_hex = (v.color:match("^#") and true) or (v.color:match(",") and false) or nil
    if is_hex == nil then
      err_exit(v, v.color .. ": no rgb or hex formatting")
    end

    if not is_hex then
      v.color = rgb2hex(v)
    end
    v.hex_unrounded = v.color

    -- id to hex
    v.id = unrounded_hex_to_rounded_id(v.hex_unrounded)
    ------ main parser -------
    parse_dircolors_xplr(v)
    parse_kitty(v)
  end
    return output
end

return M
