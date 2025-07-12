-- Diffview.nvim - Git diff viewer and merge tool
-- Provides side-by-side diff views, file history, and merge conflict resolution
-- Integrates with git to show changes between commits, branches, and working tree

return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'Open Diffview' },
    { '<leader>gc', '<cmd>DiffviewClose<cr>', desc = 'Close Diffview' },
    { '<leader>gh', '<cmd>DiffviewFileHistory<cr>', desc = 'File History' },
  },
}