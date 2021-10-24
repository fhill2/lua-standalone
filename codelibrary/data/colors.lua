--https://jonasjacek.github.io/colors/
-- https://jonasjacek.github.io/colors/data.json
--
--  could also use this
--https://github.com/jshttp/mime-db
--
-- this list is simplified from:
-- https://github.com/trapd00r/LS_COLORS/blob/master/LS_COLORS

-- https://github.com/github/linguist/blob/master/lib/linguist/languages.yml

-- TODO: probably should have used this instead
-- https://github.com/ozh/github-colors/blob/master/colors.json

-- all prefix with *

-- currently files table put through github color doesnt check the linguistics yaml, so fallback color will be used ext[1] or self.fallback

-- use hex for full hex/rgb syntax for xplr, and then dircolors will be rounded
-- specifying colors by name around only names for the 256 term colours, so these will be only rounded term colors in xplr

-- TODO:
-- github accept filenames
-- when github color isnt found, it fallsback to default color for ext[1] that also isnt found, so no color is added

-- TODO: new
-- lookup github color for extension
-- dont overrite 0-16 base term colors, only extended colors
--
-- create tokyonight color scheme color lookup https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/colors.lua

local lookup = require("codelibrary.dircolors.lookup")
local github = lookup.github

-- https://github.com/joshjon/bliss-dircolors
local bliss = {
  yellow = "#ffffaf",
  orange = "#ffd787", -- video
  lightgreen = "#d7ffaf", -- audio
  green = "#87d7af",
  darkgreen = "#008787", -- image - png jpg svg
  lightpink = "#ffd7d7", -- data structures - .json .yaml
  pink = "#ffafd7",
  purple = "#afafff",
  lightblue = "#afd7ff",
  darkblue = "#5f87af",
  lightred = "#ff8787",
  red = "#d75f5f",
  lightbrown = "#d7af87", -- archives
  brown = "#af875f", -- data visual -- .md .log
  grey = "#a8a8a8", -- fonts
}

-- return {
-- {cat="bliss1", ext = "a", color = bliss.yellow},
-- {cat="bliss2", ext = "b", color = bliss.orange},
-- {cat="bliss3", ext = "c", color = bliss.lightgreen},
-- {cat="bliss4", ext = "d", color = bliss.green},
-- {cat="bliss5", ext = "e", color = bliss.darkgreen},
-- {cat="bliss6", ext = "f", color = bliss.lightpink},
-- {cat="bliss7", ext = "g", color = bliss.pink},
-- {cat="bliss8", ext = "h", color = bliss.purple},
-- {cat="bliss9", ext = "i", color = bliss.lightblue},
-- {cat="bliss10", ext = "j", color = bliss.darkblue},
-- {cat="bliss11", ext = "k", color = bliss.lightred},
-- {cat="bliss12", ext = "l", color = bliss.red},
-- {cat="bliss13", ext = "m", color = bliss.lightbrown},
-- {cat="bliss14", ext = "n", color = bliss.brown},
-- {cat="bliss15", ext = "o", color = bliss.grey},

-- }

return {
  {
    color = bliss.brown,
    cat = "data - visual",
    file = { "README", "README.rst", "README.md", "LICENSE", "COPYING", "INSTALL", "COPYRIGHT", "AUTHORS", "HISTORY", "CONTRIBUTORS", "PATENTS", "VERSION", "NOTICE", "CHANGES" },
    ext = {
      "log",
      "markdown",
      "md",
      "rst",
      "tex",
      "textile",
      "info",
      "nfo",
      "adoc",
      "asciidoc",
      "etx",
      "mkd",
      "pod",
    },
  },

  {
    color = bliss.lightpink, -- github json color
    cat = "data - structures",
    ext = {
      "json",
      "jsonl",
      "bib",
      "jsonnet",
      "libsonnet",
      "ndjson",
      "msg",
      "pgn",
      "rss",
      "xml",
      "fxml",
      "toml",
      "yaml",
      "yml",
      "RData",
      "rdata",
      "xsd",
      "dtd",
      "sgml",
      "rng",
      "rnc",
    },
  },

  {
    --color = "#89e051", -- github shell color
    color = github("sh"),
    cat = "shell",
    ext = {
      "awk",
      "bash",
      "bat",
      "BAT",
      "sed",
      "sh",
      "zsh",
      "kak",
      "zshenv",
      "zprofile",
      "zlogin",
      "zlogout",
      "profile",
      "bash_profile",
      "bash_login",
      "bash_logout",
    },
  },

  -- {
  --   color = "github",
  --   cat = "git",
  --   ext = { "git", "gitignore", "gitattributes", "gitmodules" },
  -- },

  {
    color = github("js"),
    cat = "javascript",
    ext = { "js", "jsx" },
  },

  {
    color = github("c"), -- github color is too dark
    cat = "c",
    ext = { "c", "C", "h", "H", "tcc" },
  },

  {
    color = github("c++"),
    cat = "c++",
    ext = { "c++", "h++", "hpp", "hxx", "ii" },
  },

  -- {
  --   color = github("cc"),
  --   cat = "c#",
  --   ext = { "cc", "cs", "cp", "cpp", "cxx" },
  -- },

  {
    color = github("lua"),
    cat = "lua",
    ext = { "lua" },
  },

  {
    color = github("css"),
    cat = "css",
    ext = { "css", "less", "sass", "scss" },
  },

  {
    color = github("html"),
    cat = "html",
    ext = { "htm", "html", "jhtm", "mht", "eml", "mustache" },
  },

  {
    color = github("py"),
     cat = "python",
     ext = {"py", "ipynb", "pyc" }
    },

  {
    color = github("rb"),
     cat = "ruby",
     ext = {"rb", "gemspec" }
    },

  {
    color = github("go"),
     cat = "go",
     ext = {"go" }
    },


  {
    color = github("rs"),
     cat = "rust",
     ext = {"rs" }
    },

  {
    color = github("java"),
     cat = "java",
     ext = {"coffee", "java", "mjs", "jsm", "jsm", "jsp" }
    },

    {
    color = github("php"),
     cat = "php",
     ext = {"php" }
    },
{
    color = github("vim"),
     cat = "vim",
     ext = {"vim", "viminfo" }
    },



  -- {
  --   color = "#384d54",
  --   cat = "build",
  --   ext = { ".dockerignore", ""},
  --   file = { "Dockerfile", "Makefile", "MANIFEST", "pm_to_blib" },
  -- },

  {
    color = github("nix"),
    cat = "nix",
    ext = { "nix", "dhall" },
  },

  {
    color = bliss.pink,
    cat = "diff",
    ext = { "diff", "patch" },
  },

  {
    color = bliss.darkgreen,
    cat = "multimedia - graphics",
    ext = {
      "bmp",
      "dicom",
      "tiff",
      "tif",
      "TIFF",
      "cdr",
      "flif",
      "gif",
      "icns",
      "ico",
      "jpeg",
      "JPG",
      "jpg",
      "nth",
      "png",
      "psd",
      "pxd",
      "pxm",
      "xpm",
      "webp",
      -- vector
      "ai",
      "eps",
      "epsf",
      "drw",
      "ps",
      "svg",
    },
  },

  {
    color = bliss.orange,
    cat = "multimedia - video",
    ext = { "avi", "divx", "IFO", "m2v", "m4v", "mkv", "MOV", "mov", "mp4", "mpeg", "mpg", "ogm", "rmvb", "sample", "wmv" },
  },

  {
    color = bliss.lightgreen,
    cat = "multimedia - audio",
    ext = {
      "3ga",
      "S3M",
      "aac",
      "amr",
      "au",
      "caf",
      "dat",
      "dts",
      "fcm",
      "m4a",
      "mod",
      "mp3",
      "mp4a",
      "oga",
      "ogg",
      "opus",
      "s3m",
      "sid",
      "wma",
      -- lossless
      "ape",
      "aiff",
      "cda",
      "flac",
      "alac",
      "mid",
      "midi",
      "pcm",
      "wav",
      "wv",
      "wvc",
    },
  },

  {
    color = bliss.grey,
    cat = "fonts",
    ext = { "afm", "fon", "fnt", "pfb", "pfm", "ttf", "otf", "woff", "woff2", "PFA", "pfa" },
  },

  {
    color = bliss.lightbrown,
    cat = "archives",
    ext = {
      "7z",
      "a",
      "arj",
      "bz2",
      "cpio",
      "gz",
      "lrz",
      "lz",
      "lzma",
      "lzo",
      "rar",
      "s7z",
      "sz",
      "tar",
      "tbz",
      "tgz",
      "warc",
      "WARC",
      "xz",
      "z",
      "zip",
      "zipx",
      "zoo",
      "zpaq",
      "zst",
      "zstd",
      "zz",
    },
  },

  
  --   -- {
  --   --  cat = "",
  --   --  ext = {"", "", "", "" }
  --   -- },

  --   -- {
  --   --  cat = "",
  --   --  ext = {"", "", "", "" }
  --   -- },
  --   -- {
  --   --  cat = "",
  --   --  ext = {"", "", "", "" }
  --   -- },

  --   -- {
  --   --  cat = "",
  --   --  ext = {"", "", "", "" }
  --   -- },

  --   -- {
  --   --  cat = "",
  --   --  ext = {"", "", "", "" }
  --   -- },
}
