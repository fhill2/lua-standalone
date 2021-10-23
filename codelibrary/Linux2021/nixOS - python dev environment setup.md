pip package needs a binary. there is no nix pkgs for the binary

https://nixos.wiki/wiki/Python




https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/python.section.md
starting reading from top

In the Nixpkgs tree Python applications can be found throughout, depending on what they do, and are called from the main package set. Python libraries, however, are in separate sets, with one set per interpreter version.



___
On most operating systems a global `site-packages` is maintained. This however becomes problematic if you want to run multiple Python versions or have multiple versions of certain libraries for your projects









https://github.com/nix-community/setup.nix
https://github.com/DavHau/mach-nix

https://thomazleite.com/posts/development-with-nix-python/ NOT DONE
Not all Python packages are in the Nix package collection, and eventually you will have to create a derivation from scratch (e.g. a package from the PyPI archive or a GitHub repository). For that, you use the `buildPythonPackage` function inside the Python package set.


___
https://github.com/FRidh/python-on-nix/blob/master/tutorial.md
starting reading from top

env.syspackages = environment.systemPackages in configuration.nix

a common method on NIx is to open a shell with the exact packages you need, when you need them. for example if I want to open pandoc, you would make a pandoc shell, and when starting pandoc it loads within that nix shell environment.

remember, packages can be a library package or an application package.
pandoc, chromium = app packages
python35Packages.numpy = library package
DONT install library packages into env.syspackes in configuration.nix
otherwise python interpreter cant see them, 
with nix you install only applications


Because with Nix you can have multiple versions of a library/application at the same time, an application needs to know which exact libraries to use, that is, which exact entries in the Nix store (`/nix/store`). 
Libraries that are needed by an application are defined as `buildInputs` in the Nix expression of the application. 
When building/installing the application, the libraries are also built/installed. You won't ever manually install libraries using `nix-env -iA` or in `environment.systemPackages`.

DONT DO THIS:
install python and some python package in env.syspackages systemwide, and the nix-env -iA some more packages
the interpreter cant decide which version of a package to use
USE ENVIRONMENTS instead


Easiest way to get a functional python environment - nix-shell
read to Python using nix-shell


ways to builds an environment:
nix-shell
```nix
nix-shell -i python3 -p python35Packages.numpy
```
-i for interpreter
-p for package




**IMPORTANT**
ways to switch between and run different nix-shell environments:

- add a bunch of arguments to the `nix-shell` invocation
- executing a specific file with Nix shell.
define your environments [declaratively in your user profile](http://nixos.org/nixpkgs/manual/#chap-packageconfig). As user you have a `~/.nixpkgs/config.nix` file in which you can include [overrides](http://nixos.org/nixpkgs/manual/#sec-modify-via-packageOverrides) specifically for yourself. Here we can add our declarative environments as well. (examples below)

If using python2.7 some packages will be missing


shortcut to finding packages:
```nix
nix-env -qa <-- -q query -a avilable derivations
```


**Nox program**
nox provides an interface over nix-env for querying and installing packages

skipped sumarizing alternative interpreters -> python packaging on Nix


On Nix all packages are built by functions. The main function in Nix for building Python packages is [`buildPythonPackage`](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/python-modules/generic/default.nix). Let's see how we would build the `toolz` package. According to [`python-packages.nix`](https://raw.githubusercontent.com/NixOS/nixpkgs/master/pkgs/top-level/python-packages.nix) `toolz` is build using


**read to Handling Dependencies**

Difference between BuildInput and propagatedBuildInputs
the `buildPythonPackage` uses the arguments `buildInputs` and `propagatedBuildInputs`. 
If something is exclusively a build-time dependency, then the dependency should be included as a `buildInput`, but 
if it is (also) a runtime dependency, then it should be added to `propagatedBuildInputs`.

Types of dependencies for each python nix package (library)
library/package can have dependencies:
- depending on other packages
- depending on system libraries


** Development mode