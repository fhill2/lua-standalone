https://github.com/dcampos/nvim-snippy

https://github.com/dcampos/nvim-snippy/blob/master/doc/snippy.txt


test using snippets
saving snippets
how do i save filenames


By default every `snippets` directory in |runtimepath| will be searched for

snippets. Snippy uses the same format as SnipMate, so the following patterns

are accepted:

- snippets/{filetype}.snippets

- snippets/{filetype}_{name}.snippets

- snippets/{filetype}/{name}.snippets

- snippets/{filetype}.snippet

- snippets/{filetype}/{trigger}.snippet

- snippets/{filetype}/{trigger}/{description}.snippet


his syntax also allows Vim code to be evaluated inside backticks (``):

>

Current date is `strftime('%c')`

<