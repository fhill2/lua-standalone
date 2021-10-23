from x import y .... vs import x.y
https://stackoverflow.com/questions/9439480/from-import-vs-import
It depends on how you want to access the import when you refer to it.
```python
from urllib import request
# access request directly.
mine = request()

import urllib.request
# used as urllib.request
mine = urllib.request()
```

____
https://docs.python.org/3/reference/import.html
Read from The Import System to Finders and Loaders
you can make custom loaders with `importlib.import_module()`
customize how import() works with hooks

importlib.import_module is a recommended simpler API than the standard __import__()

__import__() = from x import y

any module that contains a __path__ attribute is considered a package


2 types of packages in python:
regular packages - directory containing an __init__.py file
when a regular package is imported, the __init__.py file is executed, and objects are imported into the module's namespace that you imported it from.

namespace packages - may or may not correspond directly to objects on the file system, they may be virtual modules that have no concrete representation
they dont use an ordinary list for their __path__ attribute
They instead use a custom iterable type which will automatically perform a new search for package portions on the next import attempt within that package if the path of their parent package (or [`sys.path`](https://docs.python.org/3/library/sys.html#sys.path "sys.path") for a top level package) changes.
there is no __init__.py file
the files it imports may not be located in the same folder on the filesystem

sys.modules = package.path
sys.modules is cache of all modules previously imported
import looks up key in sys.modules, if preset, it uses the cache.
if its missing it will use finders and loaders

Beware though, as if you keep a reference to the module object, invalidate its cache entry in [`sys.modules`](https://docs.python.org/3/library/sys.html#sys.modules "sys.modules"), and then re-import the named module, the two module objects will _not_ be the same. By contrast, [`importlib.reload()`](https://docs.python.org/3/library/importlib.html#importlib.reload "importlib.reload") will reuse the _same_ module object, and simply reinitialise the module contents by rerunning the module’s code.

READ TO Finders and Loaders