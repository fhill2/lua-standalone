REMEMBER dir prints out functions and attributes
___

close all windows related to the project you are opening
track what windows belong to what projects, then close the windows that are related to the project you are opening

auto save

when loading a project:

scripts always replaces 2 screens with 2 fullscreen kitties
make sure to save nvim session files, and then the watcher will save
then option to replace current project

how does script know what windows to save?
find opened folder of the window, 

if nvim is open at a folder that is inside the dev folder, this means that you have opened the project in that window, and it will auto save it
if not in dev folder, and you havent opened it

do manual script to save current way

write save script
gets current win
gets cd of current win
creates .config in that project folder that the nvim has loaded


https://github.com/folke/persistence.nvim

get project in that window


SAVING:
get what monitor and position of window
export kitty from window
save nvim config

LOADING:
iterate window, get project in every window
close old projects windows (mark them)
create new window, assign to position and size to what is saved in file
load kitty config 


load IPC library
make sure every nvim opens with a socket file

gets project of current window

finds all windows related to that project
iterate all windows that are terminals

saves windows into file