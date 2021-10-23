hererocks gets installed into vim.fn.stdpath('cache')

appdata/local/temp/nvim


hererocks --verbose -j Lua5.1 -r latest

command that worked on linux: hererocks--verbose -j 2.1 -r latest lua51


path to hererocks NEW repo:
https://github.com/luarocks/hererocks


jit_version in luarocks packer module: on WINDOWS WSL:
print(jit.version) = LuaJIT 2.1.0-beta34 = jit_version
print(_VERSION) = Lua 5.1 = lua_version


print(jit.version) = LuaJIT 2.0.5 = jit_version
print(_VERSION) = Lua 5.1 = lua_version


