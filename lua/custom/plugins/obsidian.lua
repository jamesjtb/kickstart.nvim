return {
  'epwalsh/obsidian.nvim',
  version = 'v3.9.0',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter',
  },
  opts = {
    workspaces = {
      {
        name = 'allpoint',
        path = '/mnt/c/Users/james/Onedrive/Documents/allpoint-dev',
      },
      {
        name = 'gbc',
        path = "/mnt/c/Users/james/obsidian vaults/Greybard's Corner",
      },
    },
  },
}
