
local results = {}
--local stdin = uv.new_pipe()
local stdout = uv.new_pipe()
local stderr = uv.new_pipe()

local handle, pid = uv.spawn("/home/f1/.nix-profile/bin/rg", {
  --args = { "-HI", "--type", "f", "-L", "-a" },
  args = { "--no-filename", "--color=never", "--no-heading", "--line-number", "tags:" },
  --args = {"tags:"},
  stdio = { _, stdout, stderr },
  cwd = "/home/f1/neorg",
}, function(code, signal) -- on exit
  --print("exit code", code)
  --print("exit signal", signal)
  for tag, v in pairs(results) do
  print(tag)
  end 
end)



uv.read_start(stdout, function(err, line)
  --assert(not err, err)
  if line then
  local linenr, tags = line:match("^(%d+):%s*tags:%s*(.*)\n$")
  local linenr = tonumber(linenr)
  if linenr > 15 then
    return
  end
  local add = ""
  for _, tag in ipairs(vim.split(tags, "-")) do
    add = add == "" and tag or add .. "-" .. tag
    results[add] = true
  end
else

end
end)

-- uv.read_start(stderr, function(err, data)
--   print("ERROR", err, data)
-- end)

--uv.write(stdin, "Hello World")

-- uv.shutdown(stdin, function()
--   print("stdin shutdown", stdin)
--   uv.close(handle, function()
--     print("process closed", handle, pid)
--   end)
--end)
repeat
until uv.run() == false
