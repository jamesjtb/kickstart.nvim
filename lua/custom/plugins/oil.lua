return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  lazy = false,
  keys = {
    { '<leader>-', '<cmd>Oil<cr>', desc = 'Open Parent Directory' },
  },
}
