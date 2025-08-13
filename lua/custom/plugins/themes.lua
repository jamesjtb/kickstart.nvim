return {
  {
    'tiagovla/tokyodark.nvim',
    opts = {
      transparent_background = true,
    },
  },
  {
    'Mofiqul/dracula.nvim',
    opts = {
      colors = {
        bg = 'NONE',
      },
    },
  },
  -- :Themery command to pick color theme
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          {
            name = 'Dracula',
            colorscheme = 'dracula',
          },
          {
            name = 'Tokyo Dark',
            colorscheme = 'tokyodark',
          },
        },
      }
    end,
  },
}
