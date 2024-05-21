vim.diagnostic.config({
    virtual_text = true,
    virtual_lines = false,
})
vim.keymap.set("n", "<Leader>l", function()
    local new_value = not vim.diagnostic.config().virtual_text
    vim.diagnostic.config({
        virtual_text = new_value,
    })
    require("lsp_lines").toggle()
end)
