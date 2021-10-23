creating home manager overlays:
from the wiki, otherwise I got infinite recursion error:
https://nixos.wiki/wiki/Overlays
https://discourse.nixos.org/t/installing-mozilla-overlays-with-home-manager/5561/3
REMEMBER: Yes, nixpkgs.overlays expects a list of overlay expressions, not file paths. So this final version looks fine to me.


https://githubmemory.com/repo/arqv/zig-overlay/issues/4

___

steps to adding an overlay to download head instead of the version on nixpkgs:

add table in overlays.nix
add to nixpkgs.overlays in configuration.nix
for awesome: windowmanager also needed .packages to be set to: pkgs.pname




___
elianiva nixOS awesome overlay:
https://phoenix.yizimg.com/elianiva/dotfiles/commit/29c435cc87d897e5c8af0a1ff3a6200259fb88e6

https://nixos.wiki/wiki/Overlays#On_the_system_level
self input - name for every stage. has your overlay applied. FINAL
super - comes from only the stage before. without your overlay. PREV

This allows you to access things you defined in your overlay along with things from nixpkgs itself.


for adding a regular nixOS overlay non flake:
https://discourse.nixos.org/t/how-to-create-an-overlay-to-modify-failed-sources-with-working-ones/2973


apply overlay to a flake:
https://discourse.nixos.org/t/how-to-apply-an-overlay-defined-in-one-flake-in-my-flake/11987/3






[nixPkgs overlays:](https://youtu.be/W85mF1zWA2o?t=49)

https://www.reddit.com/r/NixOS/comments/mob92m/trouble_installing_latest_version_of_awesomewm/


https://github.com/dramforever/config/blob/2b3883db27e9587fc9e820873874e346260e6f4f/nixos/flake.nix flake overlay example



overlay git example
https://gist.github.com/LnL7/e645b9075933417e7fd8f93207787581


another nixOs overlay:
https://www.reddit.com/r/NixOS/comments/egs3k6/how_to_configure_dwm_in_nixos/


awesome overlay:
https://discourse.nixos.org/t/package-from-overlay-cant-be-used-in-config/8842



overlay with input args
https://discourse.nixos.org/t/how-to-override-package-version/2889/4