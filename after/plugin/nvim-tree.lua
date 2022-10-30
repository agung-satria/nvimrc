-- examples for your init.lua

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    highlight_opened_files = "none",

    indent_markers = {
      enable = true,
    },

    --[[ icons = { ]]
    --[[   show = { ]]
    --[[     file = true, ]]
    --[[     folder = true, ]]
    --[[     folder_arrow = true, ]]
    --[[     git = true, ]]
    --[[   }, ]]
    --[[]]
    --[[   glyphs = { ]]
    --[[     default = "", ]]
    --[[     symlink = "", ]]
    --[[     folder = { ]]
    --[[       default = "", ]]
    --[[       empty = "", ]]
    --[[       empty_open = "", ]]
    --[[       open = "", ]]
    --[[       symlink = "", ]]
    --[[       symlink_open = "", ]]
    --[[       arrow_open = "", ]]
    --[[       arrow_closed = "", ]]
    --[[     }, ]]
    --[[     git = { ]]
    --[[       unstaged = "✗", ]]
    --[[       staged = "✓", ]]
    --[[       unmerged = "", ]]
    --[[       renamed = "➜", ]]
    --[[       untracked = "★", ]]
    --[[       deleted = "", ]]
    --[[       ignored = "◌", ]]
    --[[     }, ]]
    --[[   }, ]]
    --[[ }, ]]
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>m", "<cmd>NvimTreeFindFile<cr>")
