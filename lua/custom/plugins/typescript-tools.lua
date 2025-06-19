return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  config = {
    root_dir = function(f)
      local util = require 'lspconfig.util'
      return util.root_pattern 'tsconfig.json'(f)
    end,
  },
}
