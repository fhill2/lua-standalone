https://gist.github.com/Chaser324/ce0505fbed06b947d962
1 fork repo
2 clone your fork

REMEMBER while doing work on your fork, keep your fork up to date by tracking the original upstream repo that you forked:

```git
# Add 'upstream' repo to list of remotes
git remote add upstream https://github.com/UPSTREAM-USER/ORIGINAL-PROJECT.git

# Verify the new remote named 'upstream'
git remote -v

```

then when you update your fork you do this before:
```
# Fetch from upstream remote
git fetch upstream

# View all branches, including those from upstream
git branch -va

```



___

https://jarv.is/notes/how-to-pull-request-fork-github/