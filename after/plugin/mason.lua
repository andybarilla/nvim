local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "gopls", "tsserver", "templ" },
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup {
    capabilities = capabilities
            }
        end
    }
}

