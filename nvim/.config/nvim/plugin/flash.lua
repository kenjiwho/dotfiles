-- very effective vim motions

vim.pack.add({ "https://github.com/folke/flash.nvim" })

local flash = require("flash")

flash.setup({
    search = {
        mode = "search",
    },
})

vim.keymap.set({ "n", "v" }, "s", flash.jump)
vim.keymap.set({ "n", "v" }, "S", flash.treesitter)
