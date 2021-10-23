[NNN file manager and plugin system (revisited)](https://www.youtube.com/watch?v=-knZwdd1ScU&t=1378s) READ

you have to compile nnn to color icons but it isnt that hard

customizing file icon colors


to build:
sudo make 0_NERD=1 <-- from root of repo
then move bin file

to use plugins you need to export NNN_PLUG variable

you need to export a tempo fifo file that nnn can write to whenever it needs to do previews

he recommends downloading all plugins at once into a folder

[few plugins demo](https://youtu.be/-knZwdd1ScU?t=506)

jump plugin

to invoke plugins: ; <plugin-key>
	
preview plugin system
	you can page through files and runs a bat preview in another terminal window
	supports tmux kitty etc
	shows directories as tree command
	
	
[how to write your own plugins](https://youtu.be/-knZwdd1ScU?t=847)

	
[calling nnn vim plugin within vim](https://youtu.be/-knZwdd1ScU?t=983)

	
invokes fzf through find, pipe into fzf, and whatever you select, it sets the nnn cd
	[demo](https://youtu.be/-knZwdd1ScU?t=1096)
	
[drag/drop](https://youtu.be/-knZwdd1ScU?t=1363)
	