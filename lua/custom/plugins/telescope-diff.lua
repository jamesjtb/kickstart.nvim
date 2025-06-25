return {
  {
    'jemag/telescope-diff.nvim',
    dependencies = {
      { 'nvim-telescope/telescope.nvim' },
    },
    opts = {},
    keys = {
      -- { '<leader>df', require('telescope').extensions.diff.diff_files { hidden = true }, '[D]iff two [f]iles' },
      -- { '<leader>dc', require('telescope').extensions.diff.diff_current { hidden = true }, '[D]iff [c]urrent files with other' },
    },
  },
}
