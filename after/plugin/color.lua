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
--       keywords = 'bold',
--       functions = 'bold',
--       strings = 'italic',
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

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- vim.cmd [[colorscheme onedark]]
-- vim.cmd [[colorscheme nightfly]]
-- vim.cmd [[colorscheme gruvbox-material]]
-- vim.cmd [[colorscheme everforest]]
-- vim.cmd [[colorscheme edge]]
 vim.cmd [[colorscheme sonokai]]
-- vim.cmd [[colorscheme onedarker]]
-- vim.cmd [[colorscheme gruvbox-material]]
-- ________________________________________________

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
