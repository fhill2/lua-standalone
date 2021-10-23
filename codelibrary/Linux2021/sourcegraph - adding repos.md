https://www.google.com/search?q=sourcegraph+add+repos&oq=sourcegraph+add+repos&aqs=chrome..69i57j0.3001j0j7&sourceid=chrome&ie=UTF-8



https://docs.sourcegraph.com/admin/external_service/github


https://sourcegraph.com/users/fhill2/settings/repositories/manage


add repos by:
repos matching a search query
repos from an organization
add repos affiliated with token




https://github.com/sourcegraph/sourcegraph/blob/main/doc/admin/faq.md
Sourcegraph stores bare Git repositories (without a working tree), which is a complete mirror of the repository on your code host.

If you are keen for more details on what bare Git repositories are, [check out this discussion on StackOverflow](https://stackoverflow.com/q/5540883).

The directories should contain just a few files and directories, namely: HEAD, config, description, hooks, info, objects, packed-refs, refs

___
finding where repos are installed to