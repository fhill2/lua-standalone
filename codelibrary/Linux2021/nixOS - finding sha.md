https://github.com/NixOS/nix/issues/1880

to find sha of any commit to use with fetchFromGithub:
```shell

nix-prefetch-url --unpack https://github.com/NixOS/nix/archive/<rev>.tar.gz

```


```
nix-prefetch-url --unpack https://github.com/awesomewm/awesome/archive/1b49a20e0dd23d05345d08ecb8e2b3df83cccc0b.tar.gz
```