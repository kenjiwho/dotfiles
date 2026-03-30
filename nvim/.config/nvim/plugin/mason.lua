-- install LSPs, formatters, debuggers, and linters

vim.pack.add({
    "https://github.com/williamboman/mason-lspconfig.nvim",
    "https://github.com/williamboman/mason.nvim",
})

require("mason").setup()
