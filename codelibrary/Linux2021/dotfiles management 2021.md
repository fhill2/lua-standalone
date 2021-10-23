[DONT DO THAT WITH YOUR DOTFILES (DO THIS)](https://www.youtube.com/watch?v=tkUllCAGs3c)
he had his own custom install script


YADM uses bare repos, but you have to use git ignores, you cant make it OS independant
he uses GNU stow


he keeps all dotfiles in home/.dotfiles. 
in stow it uses your current directory, target is 1 folder up from your stow folder 

stow disadvantages: if you rename a folder and you stow it there can be conflicts
if you name a folder, stow to location, rename folder and stow it someone else, stow wont understand it