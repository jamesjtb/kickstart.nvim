-- lazygit: https://github.com/jesseduffield/lazygit?tab=readme-ov-file
-- lazygit.nvim: 

return {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
         vim.g.lazygit_floating_window_winblend = 0 -- transparency of floating window
         vim.g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
         vim.g.lazygit_floating_window_border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" } -- customize lazygit popup window border characters
         vim.g.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
         vim.g.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed
    end,
    keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit"}
    }
}
