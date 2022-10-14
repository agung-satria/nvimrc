-- Onedark ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
--   require('onedark').setup {
--     transparent = true,  -- Show/hide background
--     term_colors = true, -- Change terminal color as per the selected theme style
--     ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--     cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--   
--     -- toggle theme style ---
--     toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
--     toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
--   
--     -- Change code style ---
--     -- Options are italic, bold, underline, none
--     -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
--     code_style = {
--       comments = 'italic',
--       keywords = 'none',
--       functions = 'none',
--       strings = 'none',
--       variables = 'none'
--     },
--     -- Custom Highlights --
--     colors = {}, -- Override default colors
--     highlights = {}, -- Override highlight groups
--   
--     -- Plugins Config --
--     diagnostics = {
--       darker = true, -- darker colors for diagnostic
--       undercurl = true,   -- use undercurl instead of underline for diagnostics
--       background = true,    -- use background color for virtual text
--     },
--   }
--   vim.cmd("colorscheme onedark")
-- Onedark ________________________________________________

-- Gruvbox ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
  --[[ palette_overrides = { -- https://github.com/ellisonleao/gruvbox.nvim/blob/main/lua/gruvbox/palette.lua ]]
  --[[   bright_green = "#990000", ]]
  --[[ } ]]
})

vim.cmd("colorscheme gruvbox")
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
-- Gruvbox ________________________________________________

-- Moonfly ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- vim.cmd [[colorscheme moonfly]]
-- Moonfly ________________________________________________

-- Catppuccin ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- local catppuccin = require("catppuccin")
--
-- -- configure it
-- catppuccin.setup({
--   transparent_background = false,
--   term_colors = true,
-- })
-- 
-- vim.cmd[[colorscheme catppuccin]]
-- Catppuccin ________________________________________________

-- Transparency ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- vim.cmd [[autocmd VimEnter * hi! Normal ctermbg=none guibg=none]]
-- vim.cmd [[autocmd VimEnter * hi! NonText ctermbg=none guibg=none]]
-- Transparency __________________________________________
