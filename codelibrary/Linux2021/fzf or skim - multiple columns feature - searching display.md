what is --with-nth?
https://github.com/junegunn/fzf/issues/294
ls -al | fzf --with-nth 3,6.. | awk '{print $1}


https://github.com/junegunn/fzf/issues/1440
why junegunn uses --with-nth vs --nth
Yes, it's the intended behavior. You can find the initial discussion in [#102](https://github.com/junegunn/fzf/issues/102) which dates back to 4 years ago. For what it's worth, I use `--with-nth` for the same purpose, to hide fields that I don't want to see in the screen such as 40 character long SHA1 hash that I still need after filtering. On the other hand, I would use `--nth` instead if there are fields that are not appropriate for filtering but convey useful information that I still want to see. e.g. [frecency score in z](https://github.com/junegunn/dotfiles/blob/3a8661bf092da877fa93f43a93630d5d328fc26c/bashrc#L457-L460)

https://github.com/junegunn/fzf/issues/1760
https://github.com/junegunn/fzf/issues/1476
multiple columns 2021:
https://github.com/Aloxaf/fzf-tab/issues/195




___

https://github.com/junegunn/fzf/issues/1476
try fzf tmux
try smenu - doesnt have search filter like fzf


https://github.com/Aloxaf/fzf-tab/issues/195


https://github.com/Aloxaf/fzf-tab/issues/195


hwo does fzf tab show multiple columns?
https://github.com/Aloxaf/fzf-tab/wiki/Configuration#fzf-command

skim has fields but no specific feature for multi columns


1 find out how to permanently keep popup window open and send keys to the window

could try fzf on zsh autocompletion


___
check out --nth and --with-nth
___

how to align columns in fzf:


desc
tmux_snippets=docker run tjdevries:desc1 docker container list:desc2 ls -la:descdesc

https://github.com/junegunn/fzf/issues/1760

find * | column -s/ -t | sed $'s/ \([^ ]\)/\u00a0\\1/g' |
  fzf -d $'\u00a0' --nth 1 |
  awk -F $'\u00a0' '{print $2}'
  
  tmux showenv tmux_snippets | column -s/ -t | fzf
  
  
  split a string into different results:
  https://unix.stackexchange.com/questions/58189/split-long-line-on-a-delimiter
  
  what is fzf header lines?
