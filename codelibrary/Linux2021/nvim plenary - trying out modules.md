what is require('ffi')?

https://neovim.discourse.group/t/calling-neovim-internal-functions-with-luajit-ffi-and-rust/165/6
___
PLENARY PATH DOESNT CONTAIN:
extract filename from filepath --> vim.split(str, '/') then split[#split] <-- for last in array
split filepath into array of subtrings --> use vim.split

CREATE all of these into snippets
___

all modules in Plenary path that arent _private or local:
:absolute() - normalizes path
:exists() --> checks whether filepath or dir path exists. TRUE or FALSE output

:expand() --> 
. in string = will expand . the output of realpath command on unix (which is cwd)
~ in string = expands to /home/f1
$ in string = expands to the environment variable within the string

:make_relative()
takes the substring out of the path - useful to keep portion of the path, or absolute to relative

: normalize() --> same as make_relative but converts /home/f1 to ~

:shorten() --> /home/f1/lua -->  /h/f/l  ... with len1

Other methods:
mkdir, rmdir, rename, copy, touch, rm, is_dir(), is_file(), is_absolute()
parent() --> /home/f1/lua = /home/f1
parents() --> /home/f1/lua = { '/home/f1/lua', '/home/f1', '/home', '/' } 
write()
read()
head()
tail()
readlines()
iter()

plenary.string:
.strdisplaywidth() -> same result as #str but using C, very fast

truncate --> cut the end of the string and adds ... by default or dots
align_str --> dont know
dedent --> check each line and detect the minimum indent
