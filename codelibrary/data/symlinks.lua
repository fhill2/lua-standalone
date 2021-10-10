local home = os.getenv("HOME")
--local dev = home .. "/dev"
--local dot = dev .. "/dot"
--local cl = home .. "/cl"
local config = dot .. "/home-manager/config"
-- these have to be absolute paths
return {
  dir = {
    cl .. "/lua",
    cl .. "/nix",
    cl .. "/python",
  },
  sym = {
 -- from nix
   {config .. "/kitty", home .. "/.config/kitty"},
   {config .. "/xplr/init.lua", home .. "/.config/xplr/init.lua"},
   {config .. "/awesome", home .. "/.config/awesome"},
   {config .. "/misc/starship.toml", home .. "/.config/starship.toml"},
   { "/run/current-system/sw/share/awesome", cl .. "/lua/awesome/awesome-nix-current-install"},
    -- all ~/dev/cl
    { dev .. "/cl/format", cl .. "/format" },
    { dev .. "/cl/lua/me-plug", cl .. "/lua/me-plug" },
    { dev .. "/cl/lua/scratch", cl .. "/lua/scratch" },
    { dev .. "/cl/lua/tuts", cl .. "/lua/tuts" },
    { dev .. "/cl/old", cl .. "/old" },
    { dev .. "/cl/shell", cl .. "/shell", "recurse", { "AANotusingAnymore" } },
    
    
    { dev .. "/cl/python", cl .. "/python", "recurse", {"kitten-me"} },
    { dev .. "/cl/python/kitten-me", cl .. "/python/kitten/me"},

    { dev .. "/cl/snippets", cl .. "/snippets" },
    -- other ~/dev
    { dev .. "/dot", cl .. "/dot/me" },
    { dev .. "/NOTES FREDDIE.txt", cl .. "/NOTES FREDDIE.txt" },

    -- other
    { home .. "/.local/share/nvim/site/pack/packer", home .. "/cl/lua/nv-plugs" },

    -- made f1 user config root config
    { home .. "/.config/nvim", "/root/.config/nvim" },
    { home .. "/.local/share/nvim", "/root/.local/share/nvim" },


    { dev .. "/cl/python/kitten-me", home .. "/.config/kitty/kitten/me" },
    { home .. "/repos/shell/kitty_kittens", home .. "/.config/kitty/kitten/builtin"},

  
  },
}

-- path to all systemd units for read only viewing
