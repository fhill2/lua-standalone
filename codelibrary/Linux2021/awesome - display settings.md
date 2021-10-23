https://www.reddit.com/r/awesomewm/comments/g0ros7/how_to_edit_display_settings/

use arandr > save as > then add to autostart.lua

https://www.reddit.com/r/awesomewm/comments/inv3p8/how_to_set_scaleresolution_of_awesomewm/


use dpi calculator to work out the correct dpi:
https://dpi.lv/
dpi 331

https://www.reddit.com/r/awesomewm/comments/i8le9t/how_do_i_configure_scaling_in_a_multimonitor/


https://github.com/BoukeHaarsma23/WattmanGTK


in REPL:
return inspect(screen[1].dpi)


https://linuxreviews.org/HOWTO_set_DPI_in_Xorg


using xrandr is x server dpi

The more important font DPI setting can be configured by either changing the default Xft.dpi: 96 setting in /etc/X11/Xresources OR by creating a $HOME/.Xresources file with Xft.dpi: VALUE, for example:


home-manager xresources.properties:
changes text size/scaling in kitty, nvim inside kitty, and adjusts text and scaling of chrome
doesnt change awesome window bars

my workflow:
set above to show a good size in electron apps
then set text size manually in other apps

for nvim gui scaling: kitty font size changes the gui and the size of the test at the same time..then you might be able to just change text with individual nvim font size
