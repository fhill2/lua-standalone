when you run venv it installs virtual env folder you are cd'd into and it installs a shell script called activate
activate.sh - this adds path of new interpreter to front of your path

direnv activates the venv automatically when you cd into the folder, and outputs info to prompt

how python does imports:
set PYTHONPATH to let import command
and whatever python you are using it will auto find the site-packages folder


symlink libqtile into site-packages of my python

go to derivation of qtile and search for libqtile
/nix/store/byjkppvz7glpz5vmd7sl3ay7avcxzc87-python3.9-qtile-0.18.0/lib/python3.9/site-packages/libqtile