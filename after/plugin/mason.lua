local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "gopls", "tsserver", "templ", "tailwindcss" },
    handlers = {
        function(server_name)
            lspconfig[server_name].setup {
                capabilities = capabilities
            }
        end
    }
}

lspconfig.tailwindcss.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "templ", "astro", "javascript", "typescript", "react", "gohtmltmpl" },
    init_options = { userLanguages = { templ = "html" } },
})
