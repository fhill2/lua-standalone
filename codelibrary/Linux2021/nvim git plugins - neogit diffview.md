

[Neovim: Neogit and Diffview](https://youtu.be/aJikrPnTOtI)
make changes
:DiffViewOpen


view changes with neogit:
:Neogit
hover over and push TAB
f to stage, U to unstage
c to enable switches
p for pulling

```vim
gg :Neogit
gd DoffvoewP[em
gD DiffviewOpen master
gl Neogit log
gp Neogit push

```

he prefers neogit compared to fugitive because neogit is async
with fugitive when you push it will block your input


https://github.com/TimUntersberger/neogit



https://github.com/sindrets/diffview.nvim
`:DiffviewOpen` with no args opens a new Diffview that compares against the current index.
you can also provide any valid git rev
:DiffviewOpen HEAD-2
DiffviewOpen commit
DiffviewOpen HEAD-2 -- lua/diffview plugin

-   `:DiffviewClose`: Close the current diffview. You can also use `:tabclose`.
-   `:DiffviewToggleFiles`: Toggle the files panel.
-   `:DiffviewFocusFiles`: Bring focus to the files panel.
-   `:DiffviewRefresh`: Update stats and entries in the file list of the current Diffview.