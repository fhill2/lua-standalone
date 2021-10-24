local M = {}

M.config = {
  destination = home .. "/repos",
  --symlink_destination = "/cl",
}

-- dl_location = "home/f1/repos"
-- each module is symlinked to  = "home/f1/cl/modulepath" <-- module path defined as [2] in each table

M.repos = {
  shell = {
    {
      "https://github.com/jarun/nnn",
      "https://github.com/kovidgoyal/kitty",
    },
    cl .. "/shell/repos",
  },

  kittens_builtin = {
    {
      { "https://github.com/kovidgoyal/kitty/tree/master/kittens", "builtin" },
    },
    cl .. "/python/kitten",
  },
  kittens_ex = {
    {
      "https://github.com/GermainZ/kitty-weechat-hints",
      "https://github.com/knubie/vim-kitty-navigator",
      "https://github.com/muchzill4/kitty-session",
      "https://github.com/adi1090x/kitty-cat",
      "https://github.com/yurikhan/kitty-smart-scroll",
      "https://github.com/nerdrew/kittens/blob/master/password.py",
    },
    cl .. "/python/kitten/ex",
  },

  dotfiles_nix = {
    {
      { "https://github.com/mjlbach/nix-dotfiles", "mjlbach" },
      { "https://github.com/sherubthakur/dotfiles", "sherubthakur" },
      { "https://github.com/teto/home", "teto" },
      { "https://github.com/notusknot/dotfiles-nix", "notusknot" },
      { "https://github.com/breuerfelix/nixos", "breuerfelix" },
      { "https://github.com/MoleTrooper/dotfiles", "moletrooper" },
      { "https://github.com/elianiva/dotfiles", "elianiva" },
    },
    cl .. "/dot/nix",
  },

  dotfiles_lua = {
    {
      { "https://github.com/gf3/dotfiles", "gf3" },
      { "https://github.com/jameswalmsley/dotfiles", "jameswalmsley" },
      { "https://github.com/LunarVim/LunarVim", "lunarvim" },
      { "https://github.com/NvChad/NvChad", "nvchad" },
    },
    cl .. "/dot/lua",
  },

  dotfiles_shell = { { "https://github.com/junegunn/dotfiles", "junegunn" }, cl .. "dot/shell" },

  lua_telescope_extensions = {
    {
      "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
      "https://github.com/nvim-telescope/telescope-github.nvim",
      "https://github.com/nvim-telescope/telescope-project.nvim",
      "https://github.com/nvim-telescope/telescope-fzf-writer.nvim",
      "https://github.com/nvim-telescope/telescope-dap.nvim",
      "https://github.com/nvim-telescope/telescope-arecibo.nvim",
      "https://github.com/nvim-telescope/telescope-bibtex.nvim",
      "https://github.com/nvim-telescope/telescope-media-files.nvim",
      "https://github.com/nvim-telescope/telescope-node-modules.nvim",
      "https://github.com/nvim-telescope/telescope-ghq.nvim",
      "https://github.com/nvim-telescope/telescope-cheat.nvim",
      "https://github.com/nvim-telescope/telescope-snippets.nvim",
      "https://github.com/nvim-telescope/telescope-symbols.nvim",
      "https://github.com/nvim-telescope/telescope-packer.nvim",
      "https://github.com/nvim-telescope/telescope-vimspector.nvim",
      -- from wiki extensions page
      "https://github.com/nvim-telescope/telescope-frecency.nvim",
      "https://github.com/nvim-telescope/telescope-z.nvim",
      "https://github.com/GustavoKatel/telescope-asynctasks.nvim",
      "https://github.com/bi0ha2ard/telescope-ros.nvim",
      "https://github.com/fhill2/telescope-ultisnips.nvim",
      "https://github.com/luc-tielen/telescope_hoogle",
      "https://github.com/brandoncc/telescope-harpoon.nvim",
      "https://github.com/TC72/telescope-tele-tabby.nvim",
      "https://github.com/gbrlsnchs/telescope-lsp-handlers.nvim",
      "https://github.com/fannheyward/telescope-coc.nvim",
      "https://github.com/dhruvmanila/telescope-bookmarks.nvim",
    },
    cl .. "/lua/repos/telescope/extensions",
  },

  lua_telescope = { {
    "https://github.com/nvim-telescope/telescope.nvim",
  }, cl .. "/lua/repos/telescope" },
  lua_awesome = {
    {
      "https://github.com/streetturtle/awesome-wm-widgets",
      "https://github.com/awesomeWM/awesome",
      "https://github.com/Elv13/awesome-1",
    },
    cl .. "/lua/repos/awesome",
  },
  nix = { {
    { "https://github.com/NixOS/nixpkgs", "nixpkgs" },
  }, cl .. "/nix/repos" },
  python = {
    {
      { "https://github.com/ghill2/pytower_proj", "pytower" },
      { "https://github.com/polygon-io/client-python", "polygon-client-library" },
      { "https://github.com/polygon-io/client-examples", "polygon-examples" },
      "https://github.com/qtile/qtile-examples",
      --"https://github.com/qtile/qtile", -- using qtile from install python lib
    },
    cl .. "/python/repos",
  },
  -- NON CL
  --
  -- software
  
  -- bin files inside these are symlinked with post table in symlink.lua
  bin = {
    { "https://github.com/Sidmaz666/qtile-rofi-keybindings" },
      nil,   
  },
  awesome_modules = {
    {
      { "https://github.com/Elv13/awesome-1/tree/doc_tests_and_notif/lib/dynamite", _, "/trunk/" },
      "https://github.com/Elv13/collision",
      "https://github.com/Elv13/tyrannical",
      "https://github.com/Elv13/repetitive",
      "https://github.com/Elv13/radical",
    },
    home .. "/.config/awesome",
  },
  cheovim = {
    {
      { "https://github.com/NTBBloodbath/cheovim", "nvim" },
    },
    home .. "/.config",
  },
  xplr_extensions = {
    {
      { "https://github.com/prncss-xyz/icons.xplr", "icons" },
    },
    home .. "/.config/xplr/plugins",
  },
  -- download standalone lua deps (dont use nvim, as nvim is bootstrapped)
  -- this isnt working atm, as download.lua cant download this without finding plenary
  --
  lua_standalone_deps = {
   {
    -- { "https://github.com/nvim-lua/plenary.nvim", "plenary" }, -- TODO: needed for this script, add to submodule
   },
   home .. "/dev/dot/lua/standalone",
  },
}

return M
