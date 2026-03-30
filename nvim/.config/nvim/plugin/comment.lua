-- ctrl+/ to comment out block of code

vim.pack.add({ "https://github.com/numToStr/Comment.nvim" })

require("Comment").setup({
    opleader = {
        line = "<C-_>",
        block = "?",
    },
})
