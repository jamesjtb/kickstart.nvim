return {
  {
    'Mofiqul/dracula.nvim',
    opts = {
      colors = {
        bg = 'NONE',
      },
    },
  },
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = { {
          name = 'Dracula',
          colorscheme = 'dracula',
        } },
      }
    end,
  },
}
