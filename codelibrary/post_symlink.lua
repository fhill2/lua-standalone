
local symlinks = require"codelibrary.data.symlinks"
local ln = require"codelibrary.ln".ln

for _, sym in ipairs(symlinks.post) do
  ln(sym)
end
