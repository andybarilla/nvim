local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "bluz71/vim-moonfly-colors",
        config = function()
            vim.o.background = "dark"
            vim.cmd("colorscheme moonfly")
        end
    },
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    {
        "nvim-treesitter/nvim-treesitter", run = ':TSUpdate'
    },
    "nvim-treesitter/playground",
    "theprimeagen/harpoon",
    "github/copilot.vim",
    "nvim-tree/nvim-web-devicons",
    "sbdchd/neoformat",
    {
        "nvim-lualine/lualine.nvim",
        opt = true
    },
    "joerdav/templ.vim",
    "nvimtools/none-ls.nvim",
    {
        "folke/trouble.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
        }
    },
    "ray-x/go.nvim",
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williambowan/mason-lspconfig.nvim",
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        }
    },

})

vim.cmd "autocmd BufWritePre * Neoformat"
