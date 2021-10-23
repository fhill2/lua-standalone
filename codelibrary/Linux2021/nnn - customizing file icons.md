REMEMBER nnn to enable file icons:
sudo make O_NERD=1 clean install <-- for nerdfont
OR
sudo make O_ICONS=1 clean install <-- icons_in_terminal


YOU CANT DO file colors per file extension in nnn
only per file type, and there are 8 file types

https://github.com/jarun/nnn/wiki/Advanced-use-cases#file-icons
nnn icons are turned off by default and not provided in the default distribution



there is icons in terminal support: https://github.com/sebastiencs/icons-in-terminal as images alongside
OR use nerdfont patched fonts to add icons to the font itself




https://www.reddit.com/r/unixporn/comments/ibzowm/oc_nnn_v34_brings_icons_and_colors_support/



for context or file specific colors: https://github.com/jarun/nnn/wiki/Usage#configuration

https://github.com/jarun/nnn/blob/master/src/icons.h#L7-L25




https://github.com/jarun/nnn/issues/717


NNN_FCOLORS = customize colors by their type..all sockets in pink, all symlinks in another color etc


to enable nerdfont icons:
-   Compile `nnn` with `make O_NERD=1` from the root




for file extension colors you have to write code for it:
https://github.com/jarun/nnn/blob/master/src/icons.h#L7-L25

https://jonasjacek.github.io/colors/
https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg