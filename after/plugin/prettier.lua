--[[ nnoremap <leader>p :Prettier<CR> ]]
local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  }
}
vim.api.nvim_set_keymap("n", "<leader>p", ":Prettier<cr>", { noremap = true })
