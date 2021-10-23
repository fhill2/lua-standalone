https://stackoverflow.com/questions/9747952/pane-title-in-tmux

to debug pane titles:
tmux set -g pane-border-status bottom


rename pane:
vhttps://stackoverflow.com/questions/40234553/how-to-rename-a-pane-in-tmux#:~:text=For%20those%20scripting%20tmux%2C%20there,called%20rename%2Dwindow%20so%20e.g.&text=Panes%20are%20automatically%20named%20with,to%20enter%20a%20new%20name.


rename current pane:
tmux select-pane -T "fancypanetitle"