local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

-- Original config
require("bufferline").setup{}
options = {
  numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
  close_command = "bdelete! %d",
  right_mouse_command = "bdelete! %d",
  left_mouse_command = "buffer %d",
  middle_mouse_command = nil,
  indicator_icon = '▎',
  buffer_close_icon = '',
  modified_icon = '●',
  close_icon = '',
  left_trunc_marker = '',
  right_trunc_marker = '',
  max_name_length = 18,
  max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
  tab_size = 18,
}
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<S-l>', '<Cmd>bnext<CR>', {})
vim.keymap.set('n', '<S-h>', '<Cmd>bprevious<CR>', {})
-- nnoremap <S-h> <cmd>bprevious <CR>
-- nnoremap <S-l> <cmd>bnext <CR>
