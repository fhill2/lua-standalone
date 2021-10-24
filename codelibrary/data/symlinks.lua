local home = os.getenv("HOME")
local config = dot .. "/home-manager/config"
local bin = home .. "/bin"
local repos = require"codelibrary.data.repos".config.destination
-- these have to be absolute paths
return {
  cl_dir = {
    cl .. "/lua",
    cl .. "/nix",
    cl .. "/python",
  },
  cl = {
     -- from nix, after download repos
   {config .. "/kitty", home .. "/.config/kitty"},
   {config .. "/xplr/init.lua", home .. "/.config/xplr/init.lua"},
   {config .. "/awesome", home .. "/.config/awesome"},
   {config .. "/misc/starship.toml", home .. "/.config/starship.toml"},
   {config .. "/qtile", home .. "/.config/qtile"},
   {config .. "/dunst", home .. "/.config/dunst"},

   { "/run/current-system/sw/share/awesome", cl .. "/lua/awesome/awesome-nix-current-install"},
    -- all ~/dev/cl
    { dev .. "/cl/format", cl .. "/format" },
    { dev .. "/cl/lua/me-plug", cl .. "/lua/me-plug" },
    { dev .. "/cl/lua/scratch", cl .. "/lua/scratch" },
    { dev .. "/cl/lua/tuts", cl .. "/lua/tuts" },
    { dev .. "/cl/old", cl .. "/old" },
    { dev .. "/cl/shell", cl .. "/shell", "recurse", { "AANotusingAnymore" } },
    { dev .. "/cl/lua/standalone", cl .. "/lua/standalone"},
    { "/run/current-system/sw/lib/python3.9/site-packages", cl .. "/python/site-packages"},
    
    
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

    -- after everything symlinked, create ~/bin
    { config .. "/kitty/kitty-save-session.py", home .. "/bin/kitty-save-session.py" },
    { dev_cl .. "/lua/standalone/bin", home .. "/bin", "recurse" },
    { config .. "/qtile/xephyr", home .. "/bin/qtile-xephyr"},
  },
  post = {
    -- [5]=true will move destination if it exists to /tmp/symlinks
   {config .. "/nvim/profiles.lua", home .. "/.config/nvim/profiles.lua", nil, nil, true},
   { repos .. "/bin/qtile-rofi-keybindings/qtile_kb_rofi.sh", home .. "/bin/qtile_kb_rofi.sh" }
  },
}

-- path to all systemd units for read only viewing
