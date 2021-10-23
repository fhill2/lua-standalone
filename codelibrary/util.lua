local util = {}
-- check if all folders in a filepath exist. if not, create them
-- only works for folders in current user folder
function util.mkdir(dir)
  if not uv.fs_stat(dir) then
    local r = uv.fs_mkdir(dir, mode, nil)
    if r == nil then
      assert(false, "tried but couldnt create folder " .. dir)
    end
  end
end

function util.create_file(opts)
  local opts = opts or {}
  if uv.fs_access(opts.dest, "r") == false then
  uv.fs_open(
    opts.dest,
    "w",
    420,
    function(err, fd)
      if err then
        print(err)
      else
        if not opts.silent then print(opts.dest .. " - successfully created") end
        uv.fs_close(fd)
      end
    end
  )
end
end


function util.read_file_sync(path)
  local fd = assert(uv.fs_open(path, "r", 438))
  local stat = assert(uv.fs_fstat(fd))
  local data = assert(uv.fs_read(fd, stat.size, 0))
  assert(uv.fs_close(fd))
  return data
end


function util.remove_dir(cwd)
  if not uv.fs_stat(cwd) then return end
  local handle = uv.fs_scandir(cwd)
  if type(handle) == "string" then
    -- return api.nvim_err_writeln(handle)
    return print(handle)
  end

  while true do
    local name, t = uv.fs_scandir_next(handle)
    if not name then
      break
    end

    local new_cwd = table.concat({ cwd, name }, "/")
    if t == "directory" then
      local success = util.remove_dir(new_cwd)
      if not success then
        return false
      end
    else
      local success = uv.fs_unlink(new_cwd)
      if not success then
        return false
      end
    end
  end

  return uv.fs_rmdir(cwd)
end

util.create_fp_dirs = function(fp)
  if fp:find(home) then
    _, _, fp = fp:find(home .. "/(.*)")
  end

  local dirs_to_create = {}

  local fp = vim.split(fp, "/")
  local file_or_dir = fp[#fp]:find("%.")
  if file_or_dir then
    table.remove(fp, #fp)
  end
  local depth = #fp
  local current_relpath = fp[1]
  for i = 1, depth do
    table.insert(dirs_to_create, string.format("%s/%s", home, current_relpath))
    current_relpath = current_relpath .. "/" .. (fp[i + 1] or "")
  end

  for i, folderpath in ipairs(dirs_to_create) do
    util.mkdir(folderpath)
  end
end

return util
