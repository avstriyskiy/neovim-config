return {
    {
        "tpope/vim-fugitive",
        lazy = false,
        init = function() 
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        end
    }
}
