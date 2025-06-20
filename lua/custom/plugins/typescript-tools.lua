vim.keymap.set('n', '<leader>lo', '<cmd>TSToolsOrganizeImports<cr>', { desc = '[L]SP - [O]rganize imports' })
vim.keymap.set('n', '<leader>lf', '<cmd>TSToolsFixAll<cr>', { desc = '[L]SP - [F]ix fixable errors' })
vim.keymap.set('n', '<leader>ld', '<cmd>TSToolsGoToSourceDefinition<cr>', { desc = '[L]SP - Go to source [d]efinition' })
vim.keymap.set('n', '<leader>ln', '<cmd>TSToolsRenameFile<cr>', { desc = '[L]SP - Re[n]ame file' })
vim.keymap.set('n', '<leader>lr', '<cmd>TSToolsFileReferences<cr>', { desc = '[L]SP - Find file [r]eferences' })

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
