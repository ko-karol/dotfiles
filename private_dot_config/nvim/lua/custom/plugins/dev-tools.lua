-- Dev Tools - In-process LSP server for enhanced code actions
-- Provides a community-driven library of code actions with enhanced picker
-- and editing helpers for improved development workflow

return {
  'yarospace/dev-tools.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- required
    'folke/snacks.nvim', -- optional, for picker and terminal
    'ThePrimeagen/refactoring.nvim' -- optional
  },
  opts = {
    filetypes = {
      include = {}, -- include all filetypes
      exclude = {} -- exclude special buffer types like terminal, etc.
    },
    -- Optional: add custom actions
    -- actions = {
    --   -- Custom action definitions go here
    -- }
  },
}