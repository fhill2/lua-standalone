gui diff programs DiffMerge or kdiff3, sourcetree.

tig
diffview
neogit
fugitive
hubbard vim
using gh on cli like josh
https://github.com/kdheepak/lazygit.nvim
can fugitive do inlin diffs?
gitkraken
sourcetree


VIM FUGITIVE VIDS:
[Resolve a Git Merge Conflict within Vim | Vim 🔥 Tips and Tricks](https://youtu.be/5XNozONLCXc) READ
Gwrite after resolving all merge conflicts
not a very nice workflow




___
videos of built in vim diff features:

[Vim universe. Vim as a diff tool](https://youtu.be/zEah_HDpHzc)

2 ways to enter diff mode:
1 vim instances. start 2nd instance with `vim -d file1 file2` or vimdiff instead of vim -d


2 open 2 windows with :vsplit in current instance, then `:diffthis`
`:diffsplit file1` command will open a split and open fil1, and then willl enter diffmode on the 2 files

diffopt controls options for the diffmode
filler=doesnt remove empty lines, you want this. like github
context:
`set diffopt=vertical, filler`

[diff algorithm](https://youtu.be/zEah_HDpHzc?t=414)
uses the same algorithm as git
sometimes messes up on new lines




___
lazygit
[recommended tutorial](https://youtu.be/VDXvbHZYeKY?t=22)

delete removes an untracked file. if its already tracked it will checkout whatever is already in your remote


more vids I havent watched:
https://www.youtube.com/watch?v=IL1ktpzfT8E&ab_channel=NickJanetakis
https://www.youtube.com/watch?v=Eb8S_KkmLS8&ab_channel=TheFrugalComputerGuy
https://www.youtube.com/watch?v=SLQWQ_R4bRI&ab_channel=BrodieRobertson
https://www.youtube.com/watch?v=9E3Mo8TM6Jo&ab_channel=BrodieRobertson

https://www.youtube.com/watch?v=WvQeShK4O8E&ab_channel=AndrewRadev
https://www.youtube.com/watch?v=5yAnbYNqU5A&ab_channel=GregHurrell
https://www.youtube.com/watch?v=6hude7CtBKg&ab_channel=CodeSmell
vim fugitive:
https://www.youtube.com/watch?v=rzUMjqD6NMQ&ab_channel=JoshBranchaud