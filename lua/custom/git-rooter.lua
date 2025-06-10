local function getGitRoot()
    local dotGitPath = vim.fn.finddir(".git", ".;")
    return vim.fn.fnamemodify(dotGitPath, ":h")
end

local function setCurrentDir()
    vim.api.nvim_set_current_dir(getGitRoot())
end

vim.api.nvim_create_user_command("CdGitRoot", function ()
    setCurrentDir()
end, {})

vim.keymap.set('n', '<leader>gr', '<cmd>CdGitRoot<CR>', {desc="cd to [g]it project [r]oot"})
