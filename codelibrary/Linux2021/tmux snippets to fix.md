enter cant actually enter prompt..needs to clear the selection...would have to bind a key to clear prompt and then send that key
maybe can do it programatically with zsh?
how to do for release: check bindkey -M kill-whole-line


atm zsh only as its using widgets from zsh to send keys to the other tmux window..can be converted to bash if tsnip-import-data and 
need to write code that turns focus events on in zsh

setup single mode first: would be easiest

when replacing bindkey, how to replace with the previous widget attached to that bound..


could do this instead:
try to send keys to a pane title and then remove tmux snippets pane id
and then for env variable clean up (because pane is not respawning) can try saving metadata along with pane