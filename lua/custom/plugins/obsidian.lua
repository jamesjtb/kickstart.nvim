return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  ft = "markdown",
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "ap-dev",
        path = "/mnt/c/Users/james/Onedrive/Documents/allpoint-dev"
      }
    },
  },
}
