f brainstorm: why use stow?
because when i reinstall a comp, i will download my files from my github, but wont know where to put them in all the locations



REMEMBER --dotfiles combined with .stowrc
https://git.savannah.gnu.org/cgit/stow.git/tree/NEWS
https://www.gnu.org/software/stow/manual/html_node/Resource-Files.html



___
[Sync your .dotfiles with git and GNU #Stow like a pro!](https://youtu.be/CFzEuBGPPPg?t=12) WATCHED

creates dir and file inside

you have 20 apps and all have configs and you wanna config them, and in the future you want to use the same config in your future computer

so people put all the files in a folder and then symlink to the config locations

stow sets these symlinks automatically

[to setup stow:](https://youtu.be/CFzEuBGPPPg?t=781)
first create repo on remote
then clone to .dotfiles

then start config of stow:
start with simple layout: each config in its separate folder
create folders in .dotfiles cloned repo

by default stow command uses -S for link
to unlink use -D

stow -nv = stow NO. it will just print/test, v verbose, 


[target directory](https://youtu.be/CFzEuBGPPPg?t=986)
stow -nvt ~
home is the target directory
if you dont specify target directory after flags, stow uses the parent of current dir as target directory
so when you use ~/.dotfiles the target dir is ~

stow -nvt ~ * <-- stows everything (links everything from stow folder to 

if stow tries to symlink and a file exists in the target location, stow wont delete it. in this case you have to manually move the prev config into stow
USE --adopt instead,

you only need this in the very beginning:
once everything 
stow --adopt -nvt ~ *


with stow, you can only add certain config files onto your comp


stow -vDt /bash_aliases <-- removes symlinks

[advanced layouts](https://youtu.be/CFzEuBGPPPg?t=1329)
you can create folders in GNU stow folder for different computers you want to symlink to
then use:

be careful, stow doesnt understand / when typing in path:
stow -nvSt ~ bash/work

always specify target directory because if you dont stow can lead to unexpected behaviour especially when managing advanced layouts

how to setup stow on [another computer](https://youtu.be/CFzEuBGPPPg?t=1631)


[using other peoples dotfiles](https://youtu.be/CFzEuBGPPPg?t=1806)
only supports replacing whole file
you can also just copy pasta into your remote files in git repo





___
https://www.gnu.org/software/stow/



https://www.gnu.org/software/stow/manual/stow.html
the approach by stow is to install each package into its own tree, they use symlinks to make it appear as through the files are installed in the common tree


unlike Depot, Stow will never delete any files, directories, or links that appear in a Stow directory (e.g., /usr/local/stow/emacs), so it’s always possible to rebuild the target tree (e.g., /usr/local).

package = related collection of files and dirs you want to administer as a unit
target dir = root of a tree in which packages WISH TO APPEAR to be installed. the symlink direction

read to stow directory