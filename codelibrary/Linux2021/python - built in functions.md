https://docs.python.org/3/library/functions.html
REAd dir()

___
READ dir()
dir() <-- prints properties/attributes of a class object
if object has a __dir__() method, its called instead to retrieve the attributes in a way you choose
it uses __dict__ attribute to retrieve all attributes for the class object

contains attributes of bases 


TESTED: dir() prints properties and methods of a class, but: 
it doesnt display which is which by default 
it adds in a load of junk from bases of the python default class that I don't want. I want base objects are 1 result, 

___
repr() <-- like tostring
READ
this function makes an attempt to return a string that would yield an object with the same value when passed to eval(); ? dont understand