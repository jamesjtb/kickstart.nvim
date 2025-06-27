local harpoon
-- basic telescope configuration
local conf = require('telescope.config').values

local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require('telescope.pickers')
    .new({}, {
      prompt_title = 'Harpoon',
      finder = require('telescope.finders').new_table {
        results = file_paths,
      },
      previewer = conf.file_previewer {},
      sorter = conf.generic_sorter {},
    })
    :find()
end

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    harpoon = require 'harpoon'
    harpoon:setup()
  end,
  keys = {
    {
      '<leader>af',
      function()
        harpoon:list():add()
      end,
      desc = 'harpoon file',
    },
    {
      '<leader>aa',
      function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'harpoon quick menu',
    },
    {
      '<leader>a1',
      function()
        harpoon:list():select(1)
      end,
      desc = 'select harpoon 1',
    },
    {
      '<leader>a2',
      function()
        harpoon:list():select(2)
      end,
      desc = 'select harpoon 2',
    },
    {
      '<leader>a3',
      function()
        harpoon:list():select(3)
      end,
      desc = 'select harpoon 3',
    },
    {
      '<leader>a4',
      function()
        harpoon:list():select(4)
      end,
      desc = 'select harpoon 4',
    },
    {
      '<leader>ap',
      function()
        harpoon:list():prev()
      end,
      desc = 'previous harpoon',
    },
    {
      '<leader>an',
      function()
        harpoon:list():next()
      end,
      desc = 'next harpoon',
    },
    {
      '<leader>ao',
      function()
        toggle_telescope(harpoon:list())
      end,
      desc = 'open harpoon',
    },
  },
}
