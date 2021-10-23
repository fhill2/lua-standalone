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
return {
  -- {
  --   color = "Deepskyblue4",
  --   cat = "data - visual",
  --   file = { "README", "README.rst", "README.md", "LICENSE", "COPYING", "INSTALL", "COPYRIGHT", "AUTHORS", "HISTORY", "CONTRIBUTORS", "PATENTS", "VERSION", "NOTICE", "CHANGES" },
  --   ext = {
  --     "log",
  --     "markdown",
  --     "md",
  --     "rst",
  --     "tex",
  --     "textile",
  --     "info",
  --     "nfo",
  --     "adoc",
  --     "asciidoc",
  --     "etx",
  --     "mkd",
  --     "pod",
  --   },
  -- },

  {
    color = "github",
    cat = "data structures",
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
    color = "#89e051", -- github shell color
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

  {
    color = "github",
    cat = "git",
    ext = { "git", "gitignore", "gitattributes", "gitmodules" },
  },

  {
    color = "github",
   cat = "javascript",
   ext = { "js", "jsx"},
  },

  {
    color = "github",
    cat = "c",
    ext = { "c", "C", "h", "H", "tcc" },
  },

  {
    color = "github",
    cat = "c++",
    ext = { "c++", "h++", "hpp", "hxx", "ii" },
  },

  {
    color = "github",
    cat = "c#",
    ext = { "cc", "cs", "cp", "cpp", "cxx" },
  },

  {
    color = "github",
    cat = "lua",
    ext = { "lua" },
  },

  {
    color = "github",
    cat = "css",
    ext = { "css", "less", "sass", "scss" },
  },

  {
    color = "github",
    cat = "html",
    ext = { "htm", "html", "jhtm", "mht", "eml", "mustache" },
  },

  {
    color = "#384d54",
    cat = "build",
    ext = { ".dockerignore", ""},
    file = { "Dockerfile", "Makefile", "MANIFEST", "pm_to_blib" },
  },

  {
    color = "github",
    cat = "nix",
    ext = { "nix", "dhall" },
  },

  {
    color = "github",
    cat = "diff",
    ext = { "diff", "patch" },
  },

  {
    color = "github",
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
    },
  },

  {
    color = "github",
    cat = "multimedia - vector",
    ext = { "ai", "eps", "epsf", "drw", "ps", "svg" },
  },

  {
    color = "github",
    cat = "multimedia - video",
    ext = { "avi", "divx", "IFO", "m2v", "m4v", "mkv", "MOV", "mov", "mp4", "mpeg", "mpg", "ogm", "rmvb", "sample", "wmv" },
  },

  {
    color = "github",
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
    },
  },

  {
    color = "github",
    cat = "multimedia - lossless",
    ext = { "ape", "aiff", "cda", "flac", "alac", "mid", "midi", "pcm", "wav", "wv", "wvc" },
  },

  {
    color = "github",
    cat = "fonts",
    ext = { "afm", "fon", "fnt", "pfb", "pfm", "ttf", "otf", "woff", "woff2", "PFA", "pfa" },
  },

  {
    color = "github",
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

  -- {
  --  cat = "",
  --  ext = {"", "", "", "" }
  -- },

  -- {
  --  cat = "",
  --  ext = {"", "", "", "" }
  -- },

  -- {
  --  cat = "",
  --  ext = {"", "", "", "" }
  -- },
  -- {
  --  cat = "",
  --  ext = {"", "", "", "" }
  -- },

  -- {
  --  cat = "",
  --  ext = {"", "", "", "" }
  -- },

  -- {
  --  cat = "",
  --  ext = {"", "", "", "" }
  -- },
}
