nnoremap <leader>ea :Telescope colorscheme<CR>

"      _
"   __| | ___  ___ __ _ _   _
"  / _` |/ _ \/ __/ _` | | | |
" | (_| |  __/ (_| (_| | |_| |
"  \__,_|\___|\___\__,_|\__, |
"                       |___/
lua << END
local present, decay = pcall(require, 'decay')

if not present then
  error('Can\'t import decay, make sure u installed it! :v')
end

decay.setup({
  style = 'normal', -- normal, dark, light, decayce
   italics = {
    code = true,
    comments = false -- to disable italic comments, replace to true to enable
  },
  nvim_tree = {
    contrast = true, -- or false to disable tree contrast
  },
})

vim.cmd("colorscheme decay")
END

" "        _       _     _    __
" "  _ __ (_) __ _| |__ | |_ / _| _____  __
" " | '_ \| |/ _` | '_ \| __| |_ / _ \ \/ /
" " | | | | | (_| | | | | |_|  _| (_) >  <
" " |_| |_|_|\__, |_| |_|\__|_|  \___/_/\_\
" "          |___/
" lua << END
" require('nightfox').setup({
"   options = {
"     -- Compiled file's destination location
"     compile_path = vim.fn.stdpath("cache") .. "/nightfox",
"     compile_file_suffix = "_compiled", -- Compiled file suffix
"     transparent = false,    -- Disable setting background
"     terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
"     dim_inactive = false,   -- Non focused panes set to alternative background
"     styles = {              -- Style to be applied to different syntax groups
"       comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
"       conditionals = "NONE",
"       constants = "NONE",
"       functions = "NONE",
"       keywords = "NONE",
"       numbers = "NONE",
"       operators = "NONE",
"       strings = "NONE",
"       types = "NONE",
"       variables = "NONE",
"     },
"     inverse = {             -- Inverse highlight for different types
"       match_paren = false,
"       visual = false,
"       search = false,
"     },
"     modules = {             -- List of various plugins and additional options
"       -- ...
"     },
"   },
"   palettes = {},
"   specs = {},
"   groups = {},
" })
" vim.cmd("colorscheme nightfox") -- nightfox carbonfox, terafox, nordfox, dawnfox, duskfox, dayfox
" END

" "                       _            _
" "   ___  _ __   ___  __| | __ _ _ __| | __
" "  / _ \| '_ \ / _ \/ _` |/ _` | '__| |/ /
" " | (_) | | | |  __/ (_| | (_| | |  |   <
" "  \___/|_| |_|\___|\__,_|\__,_|_|  |_|\_\
" "
" lua << END
" require('onedark').setup {
"     -- Main options --
"     style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
"     transparent = false,  -- Show/hide background
"     term_colors = true, -- Change terminal color as per the selected theme style
"     ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
"     cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
" 
"     -- toggle theme style ---
"     toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
"     toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
" 
"     -- Change code style ---
"     -- Options are italic, bold, underline, none
"     -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
"     code_style = {
"         comments = 'italic',
"         keywords = 'none',
"         functions = 'bold',
"         strings = 'italic',
"         variables = 'bold'
"     },
" 
"     -- Lualine options --
"     lualine = {
"         transparent = false, -- lualine center bar transparency
"     },
" 
"     -- Custom Highlights --
"     colors = {}, -- Override default colors
"     highlights = {}, -- Override highlight groups
" 
"     -- Plugins Config --
"     diagnostics = {
"         darker = true, -- darker colors for diagnostic
"         undercurl = true,   -- use undercurl instead of underline for diagnostics
"         background = true,    -- use background color for virtual text
"     },
" }
" require('onedark').load()
" vim.cmd("colorscheme onedark")
" END
