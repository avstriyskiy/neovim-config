require("dap-go").setup()
local dapui = require("dapui")

require("dapui").setup()
require("nvim-dap-virtual-text").setup()

local dap = require "dap"

dap.adapters.go = {
    type = "server",
    port = "40000",
    host = "127.0.0.1",
    -- executable = {
    --     command = "dlv",
    --     args = { "connect","127.0.0.1:40000" },
    -- },
}

dap.configurations.go = {
  {
    type = "go",
    name = "Remote docker",
    request = "attach",
    mode = "remote",
    -- Путь, по которому находятся исходники в контейнере (указано в launch.json и Dockerfile на этапе сборки)
    remotePath = "/src",
    port = 40000,
    host = "127.0.0.1",
    -- Важно: укажи локальный путь к исходникам, чтобы точки останова корректно сопоставлялись
    cwd = "/Users/l1mejkeee/projects/srview/redfish-app",
    showLog = true,
    trace = "log",
  },
}


vim.keymap.set("n", "<F1>", dap.continue)
vim.keymap.set("n", "<leader>si", dap.step_into)
vim.keymap.set("n", "<leader>sv", dap.step_over)
vim.keymap.set("n", "<leader>so", dap.step_out)
vim.keymap.set("n", "<leader>sb", dap.step_back)
vim.keymap.set("n", "<leader>sr", dap.restart)
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>db", dap.run_to_cursor)
vim.keymap.set("n", "<leader>dt", dapui.toggle)
vim.keymap.set("n", "<leader>?", function()
    require("dapui").eval(nil, { enter = true })
end)
