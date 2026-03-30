-- display images inside neovim

vim.pack.add({ "https://github.com/folke/snacks.nvim" })

require("snacks").setup({
    image = { enabled = false },
    bigfile = { enabled = true },
    indent = { enabled = true },
    quickfile = { enabled = true },
    picker = { enabled = true },
})

vim.keymap.set("n", "<leader>ff", Snacks.picker.smart)
vim.keymap.set("n", "<leader>rg", Snacks.picker.grep)
