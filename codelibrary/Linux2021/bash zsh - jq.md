https://www.youtube.com/watch?v=FSn_38gDvzM

test jq
https://jqplay.org/


https://github.com/stedolan/jq


https://stedolan.github.io/jq/


___
https://stedolan.github.io/jq/manual/
read from top to invoking jq

its best to always quote with single quote chars





basic commands:

basic pretty print
cat zsh-tui.json | jq 

kv pairs to array (flatten):
```[.[]] 
```

delete a key in all JSON tables (array format)
map(del(.body))

create a static fixed key value pair 
{"body":0,"desc":1}

https://www.google.com/search?q=jq+convert+single+value+arrays+to+non+array&oq=jq+convert+single+value+arrays+to+non+array&aqs=chrome..69i57.12438j0j3&sourceid=chrome&ie=UTF-8


___
json to bash/zsh variable:
https://stackoverflow.com/questions/22528142/get-field-from-json-and-assign-to-variable-in-bash-script



___
how to JSON:
https://stackoverflow.com/questions/24698188/flatten-a-json-document-using-jq
https://jqplay.org/#


https://stackoverflow.com/questions/37710718/concat-2-fields-in-json-using-jq


merge all keys
https://stackoverflow.com/questions/43502877/how-to-use-jq-to-merge-join-concat-values-with-the-same-key



bash/zsh variable -> json:
https://stackoverflow.com/questions/38860529/create-json-using-jq-from-pipe-separated-keys-and-values-in-bash

https://stackoverflow.com/questions/52762589/add-a-new-key-value-to-every-object-in-json-array-in-file-with-jq


___
append json to json:
https://unix.stackexchange.com/questions/560100/jq-append-data-and-keep-the-rest
https://unix.stackexchange.com/questions/460985/jq-add-objects-from-file-into-json-array


___
replacing directly the file:
https://stackoverflow.com/questions/36565295/jq-to-replace-text-directly-on-file-like-sed-i