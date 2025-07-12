-- Seamless integration between Claude Code AI assistant and Neovim
return {
  'greggh/claude-code.nvim',
  config = function()
    require('claude-code').setup({
      -- Window configuration
      window = {
        -- Position: 'float', 'vsplit', 'hsplit'
        position = 'float',
        -- Size for splits (0.0 to 1.0)
        size = 0.5,
        -- Float window options
        float_opts = {
          border = 'rounded',
          width = 0.8,
          height = 0.8,
        },
      },
      
      -- Auto-reload files modified by Claude Code
      auto_reload = true,
      
      -- Terminal options
      terminal = {
        shell = vim.o.shell,
        -- Additional terminal options
      },
    })
  end,
  cmd = { 'ClaudeCode' },
  keys = {
    { '<leader>tc', '<cmd>ClaudeCode<cr>', desc = '[T]oggle [C]laude Code' },
  },
}