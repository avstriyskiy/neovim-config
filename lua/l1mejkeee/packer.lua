vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.3",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    -- Neovim beautify
    use({ "rose-pine/neovim", as = "rose-pine" })
    use "sainnhe/sonokai"
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    }

    -- All useful Go things
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'
    -- Debugging
    use ({"leoluz/nvim-dap-go", as = "dap-go"})
    use ({"rcarriga/nvim-dap-ui", as = "dapui"})
    use ({"nvim-neotest/nvim-nio", as = "nvim-nio"})
    use ({"theHamsta/nvim-dap-virtual-text", as = "nvim-dap-virtual-text"})
    use "mfussenegger/nvim-dap"

    -- Artificial Intellegence buddies
    use 'Exafunction/codeium.vim'

    -- Extras
    use "theprimeagen/harpoon"
    use "mbbill/undotree"
    use "terrortylor/nvim-comment"

    -- Git integration
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"

    -- LSP and Treesitter
    use ("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            {"neovim/nvim-lspconfig"},             -- Required
            {"williamboman/mason.nvim"},           -- Optional
            {"williamboman/mason-lspconfig.nvim"}, -- Optional
            {"hrsh7th/nvim-cmp"},     -- Required
            {"hrsh7th/cmp-nvim-lsp"}, -- Required
            {"L3MON4D3/LuaSnip"},     -- Required
        }
    }
    use({
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    })
end)
