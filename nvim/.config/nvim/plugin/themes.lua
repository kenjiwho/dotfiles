vim.pack.add({
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
    { src = "https://github.com/rose-pine/neovim", name = "rose-pine" },
    "https://github.com/morhetz/gruvbox",
    "https://github.com/sainnhe/everforest",
    { src = "https://github.com/folke/tokyonight.nvim", name = "tokyonight" },
    { src = "https://github.com/rebelot/kanagawa.nvim", name = "kanagawa" },
})

vim.cmd.colorscheme("catppuccin-mocha")
