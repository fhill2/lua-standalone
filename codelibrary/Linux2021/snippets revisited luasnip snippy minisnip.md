other snippets:
https://github.com/dcampos/nvim-snippy <-- .snippets file only snippets
https://github.com/dcampos/cmp-snippy
https://github.com/jose-elias-alvarez/minsnip.nvim <-- no .snippets, vscode/lsp



about snippets and lsp and tab:
the vs code behaviour

without pum visible: tab behaving as tab when writing text, 

tab selecting completion suggestions when coc is open 
tab/ shift-tab to switch between placeholders in snippets).


https://github.com/hrsh7th/nvim-cmp/issues/181



luasnip.expand_or_jumpable()
expand matches true if you are within a snippet, or if the cursor is at a location where a luasnip snippet is available (matches)
jumpable matches only if you are within a snippet


https://github.com/hrsh7th/nvim-cmp/issues/181
tab does not trigger the snippet. All it does it browse to the next item in the dropdown menu. It does not open/trigger/expand the snippet:




s() for single line and multi snippet


format 