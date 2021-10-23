
https://github.com/nvim-telescope/telescope.nvim/pull/771
https://github.com/nvim-telescope/telescope.nvim/issues/784

https://github.com/nvim-telescope/telescope.nvim/pull/771/commits/100d18a3e62a66cbd4e68025bc7ae43a92f3982a
___
https://github.com/nvim-telescope/telescope.nvim/issues/765 READ
```lua
lua require('telescope.builtin').find_files(require('telescope.themes').get_ivy())
```




mini changes to config: https://github.com/nvim-telescope/telescope.nvim/issues/818



`layout_strategies` are _only_ for how the windows are laid out.

`themes` are for combining `layout_strategies`, `sorting_strategies`, `borders` and more to make a cohesive unit that is easy for end users to consume

what is layout_config
https://github.com/nvim-telescope/telescope.nvim/blob/876bed9632d8da78761f3d8edd3c153478c0a13f/doc/telescope_changelog.txt


from layout_strategies.lua:
layout_strategies:
original: horizontal, center, vertical
untested: cursor, flex, bottom_pane



https://github.com/nvim-telescope/telescope.nvim/blob/b13306e5cc6da855f77e02b37e807a4b7e32b761/lua/telescope/themes.lua
from themes.lua:
get_cursor()
get_ivy()
get_dropdown()



REMEMBER with get_ivy() you can pass in your own custom opts



https://github.com/nvim-telescope/telescope.nvim/issues/938



REMEMBEr pickers = {} key in .setup{} to customize per picker configs

REMEMBER dynamic previewer title:

REMEMBER
pickers.lua at end of function sets:
state.set_status(all win_opts) <-- saves in telescope.state at end of picker

require'telescope.state'.get_status()

TelescopeGlobalState.all_previewers.state.winid
TelescopeGlobalState.all_previewers.state.bufnr


===
verified:

TelescopeGlobalState[bufnr] = {all_win_opts} 

TelescopeGlobalState.global <-- all different keys like selected_entry, history, current_line

___
all global settings:

```lua
current_line = "",
  history = {
    _append = <function 1>,
    _reset = <function 2>,
    content = {},
    enabled = true,
    index = 1,
    limit = 100,
    path = "/home/f1/.local/share/nvim/telescope_history",
    <metatable> = <1>{
      __index = <table 1>,
      append = <function 3>,
      get_next = <function 4>,
      get_prev = <function 5>,
      new = <function 6>,
      reset = <function 7>
    }
  },
  selected_entry = { "rc.conf",
    <metatable> = {
      __index = <function 8>,
      cwd = "/home/f1/.dotfiles",
      display = <function 9>
    }
  }
}
```


REMEMBER how telescope goes from autocmd to self:
```lua

function pickers.on_close_prompt(prompt_bufnr)
  local status = state.get_status(prompt_bufnr)
  local picker = status.picker

  if picker.sorter then
    picker.sorter:_destroy()
  end

  if picker.previewer then
    picker.previewer:teardown()
  end

  picker.close_windows(status)
end
```




```lua
--[[
Usage:

mappings.apply_keymap(42, <function>, {
  n = {
    ["<leader>x"] = "just do this string",

    ["<CR>"] = function(picker, prompt_bufnr)
      actions.close_prompt()

>     local filename = ...
      vim.cmd(string.format(":e %s", filename))
    end,
  },

  i = {
  }
})
--]]



```




```lua

mappings.default_mappings = config.values.default_mappings or {
    i = {
      ["<C-n>"] = actions.move_selection_next,
      ["<C-p>"] = actions.move_selection_previous,

      ["<C-c>"] = actions.close,

      ["<Down>"] = actions.move_selection_next,
      ["<Up>"] = actions.move_selection_previous,

      ["<CR>"] = actions.select_default + actions.center,
      ["<C-x>"] = actions.select_horizontal,
      ["<C-v>"] = actions.select_vertical,
      ["<C-t>"] = actions.select_tab,

      ["<C-u>"] = actions.preview_scrolling_up,
      ["<C-d>"] = actions.preview_scrolling_down,

      ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
      ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
      ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
      ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      ["<C-l>"] = actions.complete_tag
    },

    n = {
      ["<esc>"] = actions.close,
      ["<CR>"] = actions.select_default + actions.center,
      ["<C-x>"] = actions.select_horizontal,
      ["<C-v>"] = actions.select_vertical,
      ["<C-t>"] = actions.select_tab,

      ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
      ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
      ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
      ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

      -- TODO: This would be weird if we switch the ordering.
      ["j"] = actions.move_selection_next,
      ["k"] = actions.move_selection_previous,
      ["H"] = actions.move_to_top,
      ["M"] = actions.move_to_middle,
      ["L"] = actions.move_to_bottom,

      ["<Down>"] = actions.move_selection_next,
      ["<Up>"] = actions.move_selection_previous,

      ["<C-u>"] = actions.preview_scrolling_up,
      ["<C-d>"] = actions.preview_scrolling_down,
    },
  }



```

FROM PREVIEWERS:
```txt
--@tag telescope.previewers

---@brief [[
--- Provides a Previewer table that has to be implemented by each previewer.
--- To achieve this, this module also provides two wrappers that abstract most
--- of the work and make it really easy create new previewers.
---   - `previewers.new_termopen_previewer`
---   - `previewers.new_buffer_previewer`
---
--- Furthermore, there are a collection of previewers already defined which
--- can be used for every picker, as long as the entries of the picker provide
--- the necessary fields. The more important once are
---   - `previewers.cat`
---   - `previewers.vimgrep`
---   - `previewers.qflist`
---   - `previewers.vim_buffer_cat`
---   - `previewers.vim_buffer_vimgrep`
---   - `previewers.vim_buffer_qflist`
---
--- Previewers can be disabled for any builtin or custom picker by doing
---   :Telescope find_files previewer=false
---@brief ]]




--- This is the base table all previewers have to implement. It's possible to
--- write a wrapper for this because most previewers need to have the same
--- keys set.
--- Examples of wrappers are:
---   - `new_buffer_previewer`
---   - `new_termopen_previewer`
---
--- To create a new table do following:
---   - `local new_previewer = Previewer:new(opts)`
---
--- What `:new` expects is listed below
---
--- The interface provides following set of functions. All of them, besides
--- `new`, will be handled by telescope pickers.
--- - `:new(opts)`
--- - `:preview(entry, status)`
--- - `:teardown()`
--- - `:send_input(input)`
--- - `:scroll_fn(direction)`
---
--- `Previewer:new()` expects a table as input with following keys:
---   - `setup` function(self): Will be called the first time preview will be
---                           called.
---   - `teardown` function(self): Will be called on cleanup.
---   - `preview_fn` function(self, entry, status): Will be called each time
---                                                 a new entry was selected.
---   - `title` function(self): Will return the static title of the previewer.
---   - `dynamic_title` function(self, entry): Will return the dynamic title of
---                                            the previewer. Will only be called
---                                            when config value dynamic_preview_title
---                                            is true.
---   - `send_input` function(self, input): This is meant for
---                                         `termopen_previewer` and it can be
---                                         used to send input to the terminal
---                                         application, like less.
---   - `scroll_fn` function(self, direction): Used to make scrolling work.

```



the only thing returned by buffer_previewer global previeweris this:
```lua


```


***IVY ADDED OPTIONS***
```lua


```