https://github.com/jimeh/tmuxifier
you can create layouts for a window, or for a whole session

new-window
new-session
load-window
load-session

tmuxifier tries to be the same as tmuxinator but:
it uses shell scripts instead of YAML files
doesnt use project concept, uses sessions and windows like tmux
doesnt require ruby, no deps



tmuxifier issues: spam when opening window:



run_cmd runs command before zsh loads prompt:
https://github.com/jimeh/tmuxifier/issues/80

https://github.com/jimeh/tmuxifier/issues/81