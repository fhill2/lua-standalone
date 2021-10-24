local M = {}

function M.err(self, msg)
  if self.cat then
    print(self.cat .. ": " .. msg)
  else
    dump(self)
    print(msg)
  end
end

function M.err_exit(self, msg)
  M.err(self, msg)
  print("EXITING BEFORE COMPLETING")
  os.exit()
end

-- function M.self_map(self, t, cb)
--   -- a high order  map() like fn
--   for _, v in ipairs(t) do
--     cb(self, v)
--   end
-- end


return M
