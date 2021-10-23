https://www.youtube.com/watch?v=PO6DxfGPQvw&t=32s&ab_channel=ThePrimeagen



[Using Vim: Vim + Git - Fugitive Part 1 - Usage and Merge Conflicts](https://www.youtube.com/watch?v=PO6DxfGPQvw&t=32s&ab_channel=ThePrimeagen)
vim fugitive shows what branch you are in within taskbar



```vim
nmap <leader>gh :diffhet //3<CR>
nmap <leader>gu :diffget //2<cr>
nmap <leader>gs :G<CR> "" shows output of git status
```

to stage/unstage files:
:G --> s or u on each file or s o u on unstaged, it stages/unstages all

commit:
:GCommit <-- also shows you if the changes have been pushed to remote or not

:G - clean view into your git status

[resolving conflicts](https://youtu.be/PO6DxfGPQvw?t=279)
he forced a conflict by merging in a branch
diffget //2 and //3

[Using Vim: Vim + Git Part 2: FzF and Fugitive](https://www.youtube.com/watch?v=73RulF4Md4Q&t=300s&ab_channel=ThePrimeagen)