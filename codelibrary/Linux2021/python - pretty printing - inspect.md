list of python printing functions:. 
dir(), repr(), items()

https://www.google.com/search?q=python+pretty+print+objects+inspect&newwindow=1&sxsrf=AOaemvKiotvniWGBkSZ0yRoBMrDH6r2fTQ%3A1634190065260&ei=8cJnYeWyD6yChbIPp_200AM&ved=0ahUKEwil79aymMnzAhUsQUEAHac-DToQ4dUDCA4&uact=5&oq=python+pretty+print+objects+inspect&gs_lcp=Cgdnd3Mtd2l6EAMyBQghEKABMgUIIRCgATIFCCEQoAE6BwgAEEcQsAM6BggAEBYQHjoICCEQFhAdEB46BwghEAoQoAFKBAhBGABQzhJY1xhgmBloAXACeACAAVCIAeEDkgEBN5gBAKABAcgBCMABAQ&sclient=gws-wiz


https://docs.python.org/3/library/pprint.html
pprint output can be fed into an object as input, except if the output contains files, sockets, classes or other objects that arent representable as python literals

https://www.delftstack.com/howto/python/python-pretty-print-dictionary/
Another thing to note is that `pprint()` will not pretty print nested objects, including nested dictionaries. So if you expect your values to be nested, then this is not the solution for that as well.

___
https://stackoverflow.com/questions/19907442/explain-dict-attribute
what is __dict__?


___
https://docs.python.org/3.9/library/inspect.html?highlight=__dict
inspects modules, classes, methods, functions, tracebacks, frame objects, and code objects

types of functions included in the inspect builtin module:
 type checking
 getting source code
 inspecting classes and functions 
 examining the interpreter stack
 
 
 

 
 ____
 python inspect module tutorial
 https://www.journaldev.com/19946/python-inspect-module
 
 
 ___
 https://stackoverflow.com/questions/192109/is-there-a-built-in-function-to-print-all-the-current-properties-and-values-of-a
 
 
 
 F:
 after initializing class:
 class.__dict__ shows all properties, no methods