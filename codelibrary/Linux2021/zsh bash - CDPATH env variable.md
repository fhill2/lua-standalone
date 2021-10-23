https://www.theunixschool.com/2012/04/what-is-cdpath.html
CDPATH is so you can type cd logs with cd command and the dir doesnt have to be in the current directory you are cd'ed into, cd will look in the directories in the CDPATH env variable

export CDPATH=".:/home/guru:/usr"