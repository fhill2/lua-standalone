BEST KEYBINDING LIST:
https://hea-www.harvard.edu/~fine/Tech/vi.html
https://github.com/ChristianChiarulli/LunarVim/blob/rolling/lua/keymappings.lua
https://gist.github.com/tuxfight3r/0dca25825d9f2608714b
___
REMEMBER:
movement+action: dw dj, yw, yj, 
inserting a line above/below: o O
pasting a line above/below: p P
jump forward char and enter insert: a
go to beginning: I A
search current word under cursor next/prev: * #

[Vim As Your Editor (1/6): The Basic Vim Movements](https://youtu.be/H3o4l4GVLW0?t=8)
**USE for a week**
w,b,h,j,k,l <-- all movement
yy,dd,uu

whatever you delete goes into same register as yank command

VISUAL: SHIFT+V ---> hjkl
highlight some portion of line: v ---> wb

to leave insert mode, insertmode-->normal mode:
ESC, CTRL+C, CTRL+[

you can do MOVEMENT+ACTION for example

___
EVERYTHING BELOW HERE I DONT KNOW REMEMBER
[Vim As Your Editor (2/6): Foundation for Speed](https://www.youtube.com/watch?v=gSHf_b6AWKc&t=1s&ab_channel=ThePrimeagen)
inserting a line above/below: o O
paste line above/below: p P
jump forward char and enter insert: a
go to beginning/end: I A
search current word under cursor: * #


___
[Vim As Your Editor (3/6): Horizontal Speed](https://youtu.be/Q6mr7w0YmkQ?t=79)
INLINE MOVEMENTS:
jump to next occurence of character, after CHAR: t<character>
	jump to next occurence of character, before CHAR: t<character>
	
	
___
[Vim As Your Editor (5/6): Going Full Vim - File Movements, Buffers, Splits](https://youtu.be/N05REqmq0X4?t=46)
how he opens files... :e src/**/fi TAB

	
jumping between files:
CTRL+P fuzzy find
swap between 2 last files you had open: CTRL+^
	CTRL+O, CTRL+I moves back and forward in your history
	or use global marks
	
	
	
	he has 3-4 marks at only 1 time on his fingers. by most important to least important
	he finds them annoying to use if he is not going to use them for very long
	
	global marks mark a whole file: m H..then you can jump back with m H from any file
	
	___
	opening new splits:
	ctrl+w s  horizontal split
	ctrl+w h vertical split