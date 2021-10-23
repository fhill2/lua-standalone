```txt
a	enter insertion mode after current character	text, ESC
b	back word
c	change command	cursor motion command
d	delete command	cursor motion command
e	end of word
f	find character after cursor in current line	character to find
g	UNBOUND
h	move left one character
i	enter insertion mode before current character	text, ESC
j	move down one line
k	move up one line
l	move right one character
m	mark current line and position	mark character tag (a-z)
n	repeat last search
o	open line below and enter insertion mode	text, ESC
p	put buffer after cursor
q	UNBOUND
r	replace single character at cursor	replacement character expected
s	substitute single character with new text	text, ESC
t	same as "f" but cursor moves to just before found character	character to find
u	undo
v	UNBOUND
w	move foreward one word
x	delete single character
y	yank command	cursor motion command
z	position current line	CR = top; "." = center; "-"=bottom
A	enter insertion mode after end of line	text, ESC
B	move back one Word
C	change to end of line	text, ESC
D	delete to end of line
E	move to end of Word
F	backwards version of "f"	character to find
G	goto line number prefixed, or goto end if none
H	home cursor - goto first line on screen
I	enter insertion mode before first non-whitespace character	text, ESC
J	join current line with next line
K	UNBOUND
L	goto last line on screen
M	goto middle line on screen
N	repeat last search, but in opposite direction of original search
O	open line above and enter insertion mode	text, ESC
P	put buffer before cursor
Q	leave visual mode (go into "ex" mode)
R	replace mode - replaces through end of current line, then inserts	text, ESC
S	substitute entire line - deletes line, enters insertion mode	text, ESC
T	backwards version of "t"	character to find
U	restores line to state when cursor was moved into it
V	UNBOUND
W	foreward Word
X	delete backwards single character
Y	yank entire line
Z	first half of quick save-and-exit	"Z"
0	move to column zero
1-9	numeric precursor to other commands	[additional numbers (0-9)] command
 	(SPACE) move right one character
!	shell command filter	cursor motion command, shell command
@	vi eval	buffer name (a-z)
#	UNBOUND
$	move to end of line
%	match nearest [],(),{} on line, to its match (same line or others)
^	move to first non-whitespace character of line
&	repeat last ex substitution (":s ...") not including modifiers
*	UNBOUND
(	move to previous sentence
)	move to next sentence
\	UNBOUND
|	move to column zero
-	move to first non-whitespace of previous line
_	similar to "^" but uses numeric prefix oddly
=	UNBOUND
+	move to first non-whitespace of next line
[	move to previous "{...}" section	"["
]	move to next "{...}" section	"]"
{	move to previous blank-line separated section	"{"
}	move to next blank-line separated section	"}"
;	repeat last "f", "F", "t", or "T" command
'	move to marked line, first non-whitespace	character tag (a-z)

`	move to marked line, memorized column	character tag (a-z) 
:	ex-submode	ex command
"	access numbered buffer; load or access lettered buffer	1-9,a-z
~	reverse case of current character and move cursor forward
,	reverse direction of last "f", "F", "t", or "T" command
.	repeat last text-changing command
/	search forward	search string, ESC or CR
<	unindent command	cursor motion command
>	indent command	cursor motion command
?	search backward	search string, ESC or CR


CTRL

^U	up half screen
^D	down half screen
^B	back (up) one screen <-- same as page up
^F	foreward (down) one screen <-- same as page down OVERWRITTEn
\

^A	UNBOUND

^C	UNBOUND

^E	scroll text up (cursor doesn't move unless it has to)

^G	show status
^H	backspace
^I	(TAB) UNBOUND
^J	line down
^K	UNBOUND
^L	refresh screen
^M	(CR) move to first non-whitespace of next line

^O	UNBOUND
^Q	XON
^R	does nothing (variants: redraw; multiple-redo)
^S	XOFF
^T	go to the file/code you were editing before the last tag jump

^V	UNBOUND
^W	UNBOUND
^X	UNBOUND
^Y	scroll text down (cursor doesn't move unless it has to)
^Z	suspend program
^[	(ESC) cancel started command; otherwise UNBOUND
^\	leave visual mode (go into "ex" mode)
^]	use word at cursor to lookup function in tags file, edit that file/code
^^	switch file buffers
^_	UNBOUND
^?	(DELETE) UNBOUND


useless - same as jk
^N	move down one line
^P	move up one line
```