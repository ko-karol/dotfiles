-- ToggleTerm.nvim - Terminal integration plugin for Neovim
-- Provides floating, horizontal, vertical, and tabbed terminal windows
-- Easily toggle terminals with customizable keybindings and manage multiple terminal instances

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = 'curved',
      winblend = 0,
      highlights = {
        border = 'Normal',
        background = 'Normal',
      },
    },
  },
}