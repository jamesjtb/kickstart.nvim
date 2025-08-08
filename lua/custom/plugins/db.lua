return {
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', tag = 'v1.4', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,

    keys = {
      { '<leader>dba', '<cmd>DBUIAddConnection<cr>', desc = '[DB] [A]dd Connection' },
      { '<leader>dbt', '<cmd>DBUIToggle<cr>', desc = '[DB] UI [T]oggle' },
      { '<leader>dbo', '<cmd>DBUI<cr>', desc = '[DB] [O]pen' },
      { '<leader>dbf', '<cmd>DBUIFindBuffer<cr>', desc = '[DB] [F]ind Buffer' },
      -- { '<leader>dc', require('telescope').extensions.diff.diff_current { hidden = true }, '[D]iff [c]urrent files with other' },
    },
  },
}
