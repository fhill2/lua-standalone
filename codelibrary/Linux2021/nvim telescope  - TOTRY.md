before post:



try experimenting with turning preview buffer into non scatch buffer and trying to view it DONE WORKS

setup hotkey to move preview window DONE, but using standard preview



___
NOT DONE:
go through all keybindings see what theyve added..any way to jump to preview and select text

make preview buffer editable NOT DONE

make theme to show telescope dropdown in the current pane only (upload this to github)

find out how to page down on listed results when in live grep..dont really need in find_files



___
add to layout:

results and prompt cant be made into standard windows probably because of how telescope makes the columns in the buffer, it has to calculate window sizes


to make telescope persistent:
disable 2 changes in popup.nvim [PERSISTENT]

1 main autocmd in telescope
that runs this:
autocmd in pickers.lua:
once prompt buf is left..
picker.sorter:_destroy() <-- is run, if sorter
picker.previewer:teardown() <-- is run, if previewer
picker.close_windows()


TO FIX FOR HACKS
problem with telescope:
retrieving global status can only be done with prompt bufnr, you have to iterate TelescopeGlobalState global variable in order to get the only key that is type number and then you have state
you cant get it normal way with state module without prompt_bufnr
could add tweak to save prompt bufnr in a global variable so i can always retrieve status
this would be a problem if i do **multiple telescope setup**


PLACES in telescope code that control
main picker autocmd, disable that for mouse exit
actions.close is called as a default keymap binding. uncomment telescope.actions line 297 actions._close to not map that


on preview, new buffer is created for every entry hovered, and then put into preview window