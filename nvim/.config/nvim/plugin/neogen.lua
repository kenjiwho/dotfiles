-- docstring generation plugin

vim.pack.add({ "https://github.com/danymat/neogen" })

local neogen = require("neogen")

neogen.setup({
    snippet_engine = "luasnip",
})

vim.keymap.set("n", "<leader>ng", neogen.generate)
