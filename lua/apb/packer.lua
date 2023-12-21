-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use ({
        "bluz71/vim-moonfly-colors",
		config = function()
			vim.o.background = "dark" -- or "light" for light mode
			vim.cmd('colorscheme moonfly')
		end})

		use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
		use('nvim-treesitter/playground')
		use('theprimeagen/harpoon')
		use('mbbill/undotree')
		use('tpope/vim-fugitive')
		use('williamboman/mason.nvim')
		use('williamboman/mason-lspconfig.nvim')
		use('jay-babu/mason-nvim-dap.nvim')
		use('neovim/nvim-lspconfig')
        use('github/copilot.vim')
        use('jose-elias-alvarez/null-ls.nvim')
        use('MunifTanjim/prettier.nvim')
        use('mfussenegger/nvim-dap')
        use('leoluz/nvim-dap-go')
        use{'nvim-lualine/lualine.nvim', 
            requires = {'nvim-tree/nvim-web-devicons', opt = true}}
        use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v3.x',
			requires = {
				--- Uncomment these if you want to manage LSP servers from neovim
				-- {'williamboman/mason.nvim'},
				-- {'williamboman/mason-lspconfig.nvim'},

				-- LSP Support
				{'neovim/nvim-lspconfig'},
				-- Autocompletion
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'L3MON4D3/LuaSnip'},
                {'mxsdev/nvim-dap-vscode-js'},
			}
		}
	end)
