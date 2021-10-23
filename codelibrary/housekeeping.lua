local colors = require"lib.ansicolors"
print(colors("%{bright blue}STARTING CL_SYMLINK.lua"))
require"codelibrary.cl_symlink"
print(colors("%{bright blue}STARTING DOWNLOAD.lua"))
require"codelibrary.download"
require"codelibrary.post_symlink"
