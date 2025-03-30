require('go').setup({
    -- goimports = 'gopls', -- if set to 'gopls' will use golsp format
    -- gofmt = 'gopls', -- if set to gopls will use golsp format
    -- tag_transform = false,
    -- test_dir = '',
    -- comment_placeholder = '   ',
    lsp_cfg = false, -- false: use your own lspconfig
    -- lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
    -- lsp_on_attach = true, -- use on_attach from go.nvim
    -- dap_debug = true,
})

-- Autoformat on save
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimports()
  end,
  group = format_sync_grp,
})

-- tags
vim.keymap.set("n", "<leader>gat", "<cmd>GoAddTag<CR>")
vim.keymap.set("n", "<leader>grt", "<cmd>GoRmTag<CR>")
-- tests
vim.keymap.set("n", "<leader>gta", "<cmd>GoAddTest<CR>")
vim.keymap.set("n", "<leader>gtA", "<cmd>GoAddAllTest<CR>")
vim.keymap.set("n", "<leader>gte", "<cmd>GoAddExpTest<CR>")
vim.keymap.set("n", "<leader>gtf", "<cmd>GoTestFunc<CR>")
vim.keymap.set("n", "<leader>gtF", "<cmd>GoTestFile<CR>")
vim.keymap.set("n", "<leader>gtp", "<cmd>GoTestPkg<CR>")
