https://github.com/kovidgoyal/kitty/issues/2391
There are multiple reasons:

-   Live incremental search
-   Typing less characters. In less you have to press `/`, then the search term, then enter. And you have to do this each time you want to change the search.
-   Being able to use the hints kitten after searching for some text. This is not possible when using scrollback_pager.
-   Scrolling to the last match automatically if it's out of view. With less you have to press `N` after searching if the search term is outside of the current view. I haven't implemented this in the kitten yet, but it's a goal.
-   Continuous search of live output is also a nice feature you get with this kitten.




https://www.reddit.com/r/awesomewm/comments/pe2q3q/oc_introducing_bling_utilities_for_awesomewm_more/



TO CARRY ON:
for loading sessions fzf - 
fzf shows all available sessions, and then option to open in a new OS window or as a tab
for tab, it joins all commands together and then kitty @ 