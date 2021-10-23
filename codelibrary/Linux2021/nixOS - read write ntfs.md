nixOS supports read only by default, because itu ses the NTFS linux kernel driver
to enable write support enable the ntfs-3g userspace driver


```nix
boot.supportedFilesystems = [ "ntfs-3g" ];
```