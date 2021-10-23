https://www.reddit.com/r/NixOS/comments/ec3je7/managing_configurationnix_and_homenix/

https://discourse.nixos.org/t/how-do-you-organize-your-configuration/7306

I have a git repo with all my nix configs. I clone it to `/etc/nixos/nix-configs`. Inside `nix-configs` is a nix file for each machine plus a modules directory which has any nix modules that are shared between configurations.


