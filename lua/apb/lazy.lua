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
    "neovim/nvim-lspconfig",
    "nvimtools/none-ls.nvim",
    "ray-x/go.nvim",
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
        }
    }
})

vim.cmd "autocmd BufWritePre * Neoformat"