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
    "MunifTanjim/prettier.nvim",
    "nvim-tree/nvim-web-devicons",
    {
        "nvim-lualine/lualine.nvim",
        opt = true
    },
    "joerdav/templ.vim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    "ray-x/go.nvim",
})
