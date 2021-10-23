https://github.com/nvim-telescope/telescope-frecency.nvim


to recreate:
when fist fired, retrieve all scores from db, and as results come in, look up their scores in that table and append it



in telescope frecency he saves results to state.results, and then passes in a new finder with those results into telescope

____


get_file_scores

___

callstack of filter_workspaces


filter_workspaces > get_file_scores > update_results > on_input_filter_cb  returns results to pickers as a new_finder

___
working out when frecency adds files to db:
there is 1 call to the sql add files... in sql_wrapper:update()
sql_wrapper:update() is only called from:
oldfiles function
and autocmd_handler function


autocmd handler is called:
at startup
whenever you load a file into nvim

___
unindexed means the files dont exist in the database yet (although didnt read sql db to check)
then in sql_wrapper.filter_workspace() if show_unindexes is set to true, scan dir happens

filter_workspace is called whenever a workspace :workspace: is matched in the prompt

___

update_results is called on initial opening
and everytime you type into window, which is in on_input_filter_cb and returns to telescope to update the results of the picker



from gitter:
new_finder() is everything to make the results to update after opening

___

parameters you can configure:
    set_config_state('show_scores',         ext_config.show_scores, false)
    set_config_state('show_unindexed',      ext_config.show_unindexed, true)
    set_config_state('show_filter_column',  ext_config.show_filter_column, true)
    set_config_state('persistent_filter',   ext_config.persistent_filter, true)
    set_config_state('user_workspaces',     ext_config.workspaces, {})






from comments in code:
-- TODO: NEXT!
-- extend substr sorter to have modes:
-- when current string is prefixed by `:foo`, results are tag_names that come from tags/workspaces table. (if `:foo ` token is incomplete it is ignored)
-- when a complete workspace tag is matched ':foobar:', results are indexed_files filtered by if their parent_dir is a descendant of the workspace_dir
-- a recursive scan_dir() result is added to the  :foobar: filter results; any non-indexed_files are given a score of zero, and are alphabetically sorted below the indexed_results

-- make tab completion for tab_names in insert mode`:foo|` state: cycles through available options


Workspace feature:
The workspace filter feature enables you to select from user defined _filter tags_ that map to a directory or collection of directories. Filters are applied by entering `:workspace_tag:` anywhere in the query. Filter name completion is available by pressing `<Tab>` after the first `:` character.


When a filter is applied, results are reduced to entries whose path is a descendant of the workspace directory. The indexed results are optionally augmented with a listing of _all_ files found in a recurssive search of the workspace directory. Non-indexed files are given a score of zero and appear below the 'frecent' entries. When a non-indexed file is opened, it gains a score value and is available in future 'frecent' search results.

You can also map the directories to the language server

So behaviour is:
:workspace will show all files in the path you have setup in workspace config paths


___
from readme: no way to pass in a cwd when starting up


to start with a cwd: 
require'telescope'.extensions.frecency.frecency({ default_text = ":cwd:"})
you can also do :LSP: for lsp workspaces

___
https://github.com/nvim-telescope/telescope-frecency.nvim/issues/13
show_unindexes --> by default frecency only shows results that you have clicked (have a frecency score)