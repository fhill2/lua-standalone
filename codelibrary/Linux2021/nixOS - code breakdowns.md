
https://github.com/FRidh/python-on-nix/blob/master/tutorial.md
```nix
with import <nixpkgs> {};

( pkgs.python35.buildEnv.override  {
extraLibs = with pkgs.python35Packages; [ numpy toolz ];
}).env
```

executing `nix-shell` gives you again a Nix shell from which you can run Python. So what do those lines here mean? Let's consider line by line:

1.  We begin with importing the Nix Packages collections. `import <nixpkgs> {}` does the actual import and the `with` statement brings all attributes of `nixpkgs` in the local scope. Therefore we can now use `pkgs`.
2.  Then we say we want a Python 3.5 environment, so we use the derivation [`pkgs.python35.buildEnv`](http://nixos.org/nixpkgs/manual/#ssec-python-build-env). Because we want to use it with a custom set of Python packages, we override it.
3.  The `extraLibs` argument of the original `buildEnv` function can be used to specify which packages you want. We want `numpy` and `toolz`. Again, we use the `with` statement to bring a set of attributes into the local scope.
___
DECLARING a DERIVATION INSIDE the nixpkgs tree
```nix
toolz = buildPythonPackage rec{
  name = "toolz-${version}";
  version = "0.7.4";

  src = pkgs.fetchurl{
    url = "https://pypi.python.org/packages/source/t/toolz/toolz-${version}.tar.gz";
    sha256 = "43c2c9e5e7a16b6c88ba3088a9bfc82f7db8e13378be7c78d6c14a5f8ed05afd";
  };

  meta = {
    homepage = "http://github.com/pytoolz/toolz/";
    description = "List processing tools and functional utilities";
    license = licenses.bsd3;
    maintainers = with maintainers; [ fridh ];
  };
};

```


What happens here? The function `buildPythonPackage` is called and as argument it accepts a set. In this case the set is a recursive set ([`rec`](http://nixos.org/nix/manual/#sec-constructs)). One of the arguments is the name of the package, which consists of a basename (generally following the name on PyPi) and a version. Another argument, `src` specifies the source, which in this case is fetched from an url. `fetchurl` not only downloads the target file, but also validates its hash. Furthermore, we specify some (optional) [meta information](http://nixos.org/nixpkgs/manual/#chap-meta).

The output of the function is a derivation, which is an attribute with the name `toolz` of the set `pythonPackages`. Actually, sets are created for all interpreter versions, so `python27Packages`, `python34Packages`, `python35Packages` and `pypyPackages`.

The above example works when you're directly adding or modifying packages to `python-packages.nix`

___
```nix
with import <nixpkgs> {};

pkgs.python35Packages.buildPythonPackage rec {
  name = "toolz-${version}";
  version = "0.7.4";

  src = pkgs.fetchurl{
    url = "https://pypi.python.org/packages/source/t/toolz/toolz-${version}.tar.gz";
    sha256 = "43c2c9e5e7a16b6c88ba3088a9bfc82f7db8e13378be7c78d6c14a5f8ed05afd";
  };

  meta = {
    homepage = "http://github.com/pytoolz/toolz/";
    description = "List processing tools and functional utilities";
    license = licenses.bsd3;
    maintainers = with maintainers; [ fridh ];
  };
}

```

esult in an environment in which you can use Python 3.5 and the `toolz` package. As you can see we had to explicitly mention for which Python version we want to build a package.

___

```nix
with import <nixpkgs> {};

( let
    toolz = pkgs.python35Packages.buildPythonPackage rec {
      name = "toolz-${version}";
      version = "0.7.4";

      src = pkgs.fetchurl{
        url = "https://pypi.python.org/packages/source/t/toolz/toolz-${version}.tar.gz";
        sha256 = "43c2c9e5e7a16b6c88ba3088a9bfc82f7db8e13378be7c78d6c14a5f8ed05afd";
      };

      meta = {
        homepage = "http://github.com/pytoolz/toolz/";
        description = "List processing tools and functional utilities";
        license = licenses.bsd3;
        maintainers = with maintainers; [ fridh ];
      };
    };

  in pkgs.python35.buildEnv.override rec {

    extraLibs = [ pkgs.python35Packages.numpy toolz ];
}
).env
```

we get a Python 3.5 environment with our locally defined package as well as `numpy` which is build according to the definition in Nixpkgs

we took the Nix expression that we used earlier to build a Python environment, and said that we wanted to include our own version of `toolz`. To introduce our own package in the scope of `buildEnv.override` we used a [`let`](http://nixos.org/nix/manual/#sec-constructs) expression.