-- Курсор
vim.opt.guicursor = ""

-- Строки
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Табы
vim.opt.shiftwidth = 4 
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Не обрубать текст по размеру редактора
vim.opt.wrap = false

-- Отключить вимовские бэкапы для лучшей работы undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Поиск по regex
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Поддержка цветов терминала
vim.opt.termguicolors = true

-- Отступ от верхнего края редактора
vim.opt.scrolloff = 10
vim.opt.isfname:append("@-@")

-- Апдейты
vim.opt.updatetime = 50

-- Маппинг от заглавных букв
vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("WQ", "wq", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("Q", "q", {})

vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = {"*"},
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"",false)
        end
    end
})
