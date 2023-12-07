local conf = require('modules.lsp.config')

return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "nvimdev/lspsaga.nvim",
        },
        config = conf.lsp,
    },
    -- cmd = { "Mason" },
    -- ft = {
        -- "cpp",
        -- "lua",
        -- "python",
        -- },
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig",
        config = true
    }
}
