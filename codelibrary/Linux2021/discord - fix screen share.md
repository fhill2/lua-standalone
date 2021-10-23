https://www.reddit.com/r/swaywm/comments/nwzbsl/screen_sharing_on_discord/


https://github.com/swaywm/sway/issues/1612


https://wiki.archlinux.org/title/PipeWire
xdg-desktop-portal
xdg-desktop-portal-wlr
pipewire
pipewire-media-session


https://www.reddit.com/r/swaywm/comments/lrbj84/screen_sharing_and_multi_monitor_setups/
/usr/local/libexec/xdg-desktop-portal-wlr -r --output=<name>
	
	
	
	___
	https://www.reddit.com/r/swaywm/comments/fq1qoe/how_to_use_xdgdesktopportalwlr_to_share_the_screen/
	
	
	
	
	https://www.reddit.com/r/swaywm/comments/m55y1r/state_of_zoom_screensharing_in_2021/
	
	
	
	___
	https://www.reddit.com/r/swaywm/comments/l4e55v/guide_how_to_screenshare_from_chromiumfirefox/
	/usr/lib/xdg-desktop-portal -r & /usr/lib/xdg-desktop-portal-wlr
	
	
	https://github.com/emersion/xdg-desktop-portal-wlr
	
	
	https://github.com/emersion/xdg-desktop-portal-wlr/wiki/Screencast-Compatibility
	
	
	https://github.com/emersion/xdg-desktop-portal-wlr/wiki/FAQ
	https://github.com/flatpak/xdg-desktop-portal
	
	
	https://github.com/emersion/xdg-desktop-portal-wlr/wiki/systemd-user-services,-pam,-and-environment-variables
	
	
	
	
	https://github.com/emersion/xdg-desktop-portal-wlr/wiki/%22It-doesn't-work%22-Troubleshooting-Checklist
	
	
	enable-webrtc-pipewire-capturer
	
	
	
	
	___
	https://www.reddit.com/r/swaywm/comments/jymyhy/screensharing_now_works_on_discord_arch_electron/
	
	conclusion to screen share:
	I can guarantee that flags (Vulkan backend, accelerated-video, Skia, oop-rasterization, zero-copy, harmony, v8-cache) work. But sadly (at least last time I checked), there is none to enforce pipewire's screen sharing to work.

I imagine we need someone to patch the JS side of this and implement the interface @fine2006 mentioned (something similar was discussed in MS' teams repo), or maybe a flag in the chromium-side to wrap the old screen-sharing to work out-of-box with the new one.