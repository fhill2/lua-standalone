https://github.com/kovidgoyal/kitty/issues/4036



kitty --hold --single-instance --listen-on unix:/tmp/kit fzf
kitty @ --to unix:/tmp/kit launch fzf




launch for dropdown:
2 commands:
kitty --listen-on unix:/tmp/kit
kitty @ --to unix:/tmp/kit new-window --new-tab fzf


maximize:
kitty @ --to unix:/tmp/kit close-tab -m title:fzf
