https://www.google.com/search?q=nixOS+batch+clone+repos&newwindow=1&sxsrf=AOaemvLvZiZYZvs0YLa_HyEuhrwxZ8mDOw%3A1631834350362&ei=7tBDYfW7Fcv4gQa_oaDoCw&oq=nixOS+batch+clone+repos&gs_lcp=Cgdnd3Mtd2l6EAMyBQghEKABOgcIABBHELADOgQIIxAnOgUIABCRAjoRCC4QgAQQsQMQgwEQxwEQowI6DgguEIAEELEDEMcBENEDOgsIABCABBCxAxCDAToRCC4QgAQQsQMQgwEQxwEQ0QM6DgguEIAEELEDEMcBEKMCOggIABCABBCxAzoECAAQQzoNCC4QsQMQxwEQowIQQzoLCC4QgAQQsQMQgwE6BwgAELEDEEM6BwguELEDEEM6DQguELEDEMcBENEDEEM6BQgAEIAEOgoIABCABBCHAhAUOgYIABAWEB46BAgAEA06BggAEA0QHjoICAAQCBANEB46CAgAEA0QChAeOgcIIRAKEKABSgQIQRgAUKd7WOmMAWDFjQFoAXACeACAAZwBiAH9DJIBBDIwLjOYAQCgAQHIAQjAAQE&sclient=gws-wiz&ved=0ahUKEwj16qPW0ITzAhVLfMAKHb8QCL0Q4dUDCA4&uact=5






https://discourse.nixos.org/t/how-do-i-fetch-various-github-repos-as-i-would-git-clone-them/10891
OP wants a variant of fetchGit that can determine if there is a repo at that path
if there is, do nothing
if there is, clone it


fetchGit --impure <_- puts the repo within the nix store


answer1: systemd service that runs on a FileExists condition