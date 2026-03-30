-- lazydev: proper luaLS configuration for editing neovim config

vim.pack.add({ "https://github.com/folke/lazydev.nvim" })

require("lazydev").setup({
    library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        "nvim-dap-ui",
    },
})
