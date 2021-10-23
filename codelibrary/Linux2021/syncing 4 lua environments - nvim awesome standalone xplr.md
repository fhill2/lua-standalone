awesome:


example of a awesome luajit config:
https://discourse.nixos.org/t/awesomewm-luamodules-apparently-not-taking-effect/8507


nix all lua packages
https://search.nixos.org/packages?channel=unstable&show=lua53Packages.lua&from=0&size=50&sort=relevance&type=packages&query=lua



http://ryantm.github.io/nixpkgs/languages-frameworks/lua/
https://github.com/nix-community/luarocks-nix
luarocks-nix uses luarocks for pkg names




cant use luv like i want to with luajit 5.1:
https://discourse.nixos.org/t/luajitpackages-not-in-lua-runtime-path/11848
have to build in a dev environment


[using LUA_PATH LUA_CPATH instead of using require statements](https://www.google.com/search?q=nixos+%24LUA_PATH&oq=nixos+%24LUA_PATH&aqs=chrome..69i57j33i160.2825j0j7&sourceid=chrome&ie=UTF-8)

___

https://www.reddit.com/r/NixOS/comments/4yr102/some_path_location/?sort=new
OP installed modules via standalone luarocks
awesome WM doesnt, as it adds dirs from LUA_PATH and LUA_PATH doesnt include those variables

OP said adding to .xprofile did the job
.xinitrc isnt sourced when the window manager is started directly by the display manager


https://github.com/NixOS/nixpkgs/issues/29957



installing awesome:
can either install with package wrapper (wrapped)
or package unwrapped
or with module nixOS



___
https://github.com/NixOS/nixpkgs/issues/5462