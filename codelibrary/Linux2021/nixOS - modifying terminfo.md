https://github.com/NixOS/nixpkgs/blob/master/nixos/modules/config/terminfo.nix

https://releases.nixos.org/nix-dev/2011-June/006333.html


https://github.com/nix-community/home-manager/issues/423
problem with kitty, nix and TERMINFO_DIRS

echo $TERMINFO_DIRS

https://github.com/NixOS/nixpkgs/issues/19785


ENV variables that change TERMINFO:
$TERM
$TERMINFO
$TERMINFO_DIRS <-- this might be nix only

https://stackoverflow.com/questions/799576/tput-unknown-terminal