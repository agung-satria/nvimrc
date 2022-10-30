lua << END
-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox") -- carbonfox, terafox, nordfox, dawnfox, duskfox, dayfox
vim.cmd("nnoremap <leader>e1 :colorscheme nightfox<CR>") -- default
vim.cmd("nnoremap <leader>e2 :colorscheme dayfox<CR>")
vim.cmd("nnoremap <leader>e3 :colorscheme dawnfox<CR>")
vim.cmd("nnoremap <leader>e4 :colorscheme duskfox<CR>")
vim.cmd("nnoremap <leader>e5 :colorscheme nordfox<CR>")
vim.cmd("nnoremap <leader>e6 :colorscheme terafox<CR>")
vim.cmd("nnoremap <leader>e7 :colorscheme carbonfox<CR>")
vim.cmd("nnoremap <leader>es :colorscheme<CR>") -- quick check

END
