
https://neovim.io/doc/user/term.html
https://github.com/neovim/neovim/blob/master/src/nvim/keymap.h#L321

// F CUSTOM: add kmonad being able to trigger F13-24 keys (keys are remapped in kmonad)
 key <I191> {            [      F13 ] };
 key <I192> {            [      F14 ] };
 key <I193> {            [      F15 ] };
 key <I194> {            [      F16 ] };
 key <I195> {            [      F17 ] };
 key <I196> {            [      F18 ] };
 key <I197> {            [      F19 ] };
 key <I198> {            [      F20 ] };
 key <I199> {            [      F21 ] };
 key <I200> {            [      F22 ] };
 key <I201> {            [      F23 ] };
 key <I202> {            [      F24 ] };

	
start/stop udevmon (not using systemd cause cant get it to work):
sudo nice -n -20 udevmon -c /home/f1/code/keymaps/udevmon/udevmon.yaml >/home/f1/logs/udevmon.log 2>/home/f1/logs/udevmon.log &
sudo pkill udevmon
	
REMEMBER
udevmon / interception CREATES A NEW VIRTUAL DEVICE FILE:
https://stackoverflow.com/questions/15623442/how-do-i-determine-the-files-corresponding-to-a-uinput-device
dmesg | tail -n 1000 after sudo systemctl restart udevmon.service
ls /sys/devices/virtual/input
REMEMBER you can use cat to debug all /dev/input devices to see if there is mouse or keyboard input into the device







all commands:
	cat
	man terminfo
	kitty +kitten show_key
	showkey -a
	reverse-bindkey-lookup "sequence"
	bindkey -n "sequence"
	infocmp <-- prints location to terminfo file
	xkbcli interactive-wayland or interactive-x11
	libinput debug-events
	evtest
https://sw.kovidgoyal.net/kitty/keyboard-protocol/ <-- list of f13-f24 keys
	
	
FOR NEOVIM:
open up init profile
ctrl+q ---> any key..shows you the key code
	
xmodmap -pke ~/home/f1/keymap xmodmap-current

https://gist.github.com/precondition/cdf18eadc2a9f5600311a17ef58e5f45
python HID to X11 converter




https://www.reddit.com/r/linuxquestions/comments/ihzr1c/manjaro_not_recognizing_f13f24_keys/
REMEMBER lower level monitors will show key 8 keycodes below the actual registered X11 key

why F keys arent working:
REMEMBER kmonad always changes the key code of the key, and if that isnt registered in the xkb mapping web will show NoSymbol

how to fix function keys:
1 generate xmodmap
2 switch kmonad to fire the key (or look up what how kmonad choose key codes so you dont have to map them)
3 use wev/xev (NOT evtest or any other low level monitor) to find keycode 
4 xmodmap -pke commnad
5 modify xkb settings to fill in those keycodes, re upload file somehow


___


how I got kmonad and udevmon to work at the same time:
kmonad keyboard only -> creates virtual device input in /sys/devices/virtual/input/input* which is linking to /dev/input/event26
then in udevmon.yaml: mux physical/original mouse & /dev/input/event26 into new virtual input device which links to /dev/input/event27
use cat /dev/input/event26 to view only kmonad (or use kmonad debug)
use cat /dev/input/event27 to view final output






































https://github.com/kmonad/kmonad/issues/121
EXPLAINED CLEARLY HOW LOW LEVEL HARDWARE TO KEY CODE REMAP WORKS:

It's not entirely wrong. The [HID keycode for the F13 key is 0x68](https://gist.github.com/MightyPork/6da26e382a7ad91b5496ee55fdc73db2#file-usb_hid_keys-h-L147), or 104 in decimal. This gets converted by the libinput/evdev driver to keycode 191 (to convert between HID keycodes and keycodes as used by xkb, you can use [this little python script](https://gist.github.com/precondition/cdf18eadc2a9f5600311a17ef58e5f45)) which happens to be mapped by default to XF86Tools.

how to find out what keycodes kmonad chooses to remap to:
https://github.com/qmk/qmk_firmware/blob/master/tmk_core/common/keycode.h
lookup 0x?? value..KC_A is 4
then open hid_x11_converter in nvim and type into HID_to_Xorg (this outputs the xkb keycodes)

f13 = 68

202
194


alias <I191> = <FK13>;
    alias <I192> = <FK14>;
    alias <I193> = <FK15>;
    alias <I194> = <FK16>;
    alias <I195> = <FK17>;
    alias <I196> = <FK18>;
    alias <I197> = <FK19>;
    alias <I198> = <FK20>;
    alias <I199> = <FK21>;
    alias <I200> = <FK22>;
    alias <I201> = <FK23>;
    alias <I202> = <FK24>;
