-- Oil.nvim - File explorer that lets you edit your filesystem like a buffer
-- Provides a unique approach to file management by treating directories as editable buffers
-- Use vim motions to navigate and edit operations (rename, delete, move) like text editing

return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '<leader>e', '<cmd>Oil<cr>', desc = 'Open Oil' },
  },
}