https://git-scm.com/book/en/v2/Git-Tools-Submodules


cloning a project with submodules:
when you clone a project with submodules
git clone user/repo <-- doesnt clone any submodules, only an empty folder in its place

you have to run:
git submodule init <-- init your local config file
git submodule update <-- fetch all data from the project and check out the appropriate commit 
OR
git submodule update --init --recursive



2nd way: 
you can do this slightly easier way:
git clone --recurse-submodules user/repo

summarized to "working on a project with sub modules"


https://www.endpoint.com/blog/2010/04/git-submodule-workflow/


___
no url found for submodule path in .gitmodules
https://www.deployhq.com/support/common-repository-errors/no-url-found-for-submodule



git submodule add https://github.com/luvit/luv src/luv
git submodule add https://github.com/keplerproject/coxpcall src/coxpcall
git submodule add https://github.com/ludocode/mpack src/mpack
git submodule add https://github.com/neovim/lua-client src/lua-client



for installation nvim.xplr:
git clone user/repo ~/.config/xplr/plugins/nvim-xplr
cd to xplr 
git submodule update --init --recursive

cd src/luv && make test
cd src/libmpack && make
--BUILD_MODULE=OFF BUILD_STATIC_LIBS=ON make



```lua
 package.path = package.path .. ";" .. home .. "/.config/xplr/plugins/?.lua"

    --local deps = {}
    local deps_luaclient = ("%s%s"):format(root, "/src/lua-client/?.lua")
    local deps_coxpcall = ("%s%s"):format(root, "/src/coxpcall/src/?.lua")
    local cdeps_mpack = ("%s%s"):format(root, "/src/libmpack/?.so")
    local cdeps_luv = ("%s%s"):format(root, "/src/luv/?.so")
    package.path = package.path .. ";" .. deps_luaclient .. ";" .. deps_coxpcall
    package.cpath = package.cpath .. ";" .. cdeps_mpack .. ";" .. cdeps_luv
    log(package.path)
    log(package.cpath)
    local Client = require("nvim-xplr.client")
    local vim = require("nvim-xplr.vim")


```