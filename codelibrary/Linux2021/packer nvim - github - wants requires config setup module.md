why telescope extensions packer is fucking up:
extensions need telescope to be loaded before .load_extension() to setup extension
when telescope is opt, extensions cant call load_extension() at startup, they can when they are lazy loaded but then commands arent available through :Telescope frecency, because commands havent been registered yet

config & setup get applied at startup 
with extensions set to lazy load there commands arent found as extension isnt registered yet

https://github.com/wbthomason/packer.nvim/issues/615


https://github.com/wbthomason/packer.nvim/commit/df33faeef884d55ca8f97479ea55b8d9bd2ffb3f
The following use cases needs to be solved. The plugin A is depending on
plugin B. A and B are both plugins maintained by Packer, so B is not
"just" a 'requires' plugin of A. When ever A gets loaded for what ever
trigger (might be lazy loaded), first plugin B must be loaded to make A
working.
This is pretty stupid simple first version implementing this feature.
Therefore it adds a new plugin configuration property called 'wants'.
When a plugin is about to get loaded, it will be checked if this plugin
wants any other plugins loaded. If so, first all these plugins get
loaded before the loading process of the actual plugin continues. If a
wanted plugin is already loaded, nothing happens as always.



https://github.com/wbthomason/packer.nvim#specifying-plugins


difference between setup and config?


https://github.com/wbthomason/dotfiles/blob/linux/neovim/.config/nvim/lua/plugins.lua





https://github.com/wbthomason/packer.nvim/blob/master/doc/packer.txt
h packer-plugin-dependencies






https://github.com/wbthomason/packer.nvim/issues/87
When plugin A requires plugin B, I expect Plugin B to be available before Plugin A starts loading. Packer adds Plugin B to "after" of A i.e. plugin B is loaded after plugin A is loaded, which is slightly unintuitive in terms of what I would expect from a dependency.  
This causes issues when the dependency of an optional plugin is not available in "start" packages.  
Reproduction:
`requires` is meant to specify dependencies, but not loading order. For loading order, there's the `after` key.

I see what you're saying in terms of this potentially being unexpected. To me, a dependency specification only implies that the required plugin should be installed, not necessarily loaded first. For instance, it's reasonable for one plugin to depend on another, but need to load itself first to configure state for the second plugin.


READ MORE

after = plugin in after will always load after the plugin