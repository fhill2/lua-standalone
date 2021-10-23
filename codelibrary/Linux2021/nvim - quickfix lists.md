https://www.youtube.com/watch?v=IoyW8XYGqjM&ab_channel=ThePrimeagen
quickfix list - global, entire project. spans over multiple files and windows
loc list - specific to window, 1 loclist per window. if you have multiple windows/splits open you can have 1 loclists

a quickfix list is a series of entries in which point to a specific file and location

use for errors, search results

global list for search results and other items

very important commands:
:cnext, :cprev


everytime he enters into a buffer, go into a buffer or save he populates loclist with [lsp results](https://youtu.be/IoyW8XYGqjM?t=382) READ
then he :lopen

C-q -> toggle quickfix
<leader>q --> toggle loclist
ctrl j and k - move around in quickfix list
leader j and k --> prev next loclist
	
check out dispatch by t pope

very useful feature he implements:
:ldo g/function/norm! Ilocal 
so you can search replace only on the contents of a loclist

c for quickfix
	l for loclist
so you can do project wide renamings
you can replay macros with the s commands
