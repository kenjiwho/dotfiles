-- file explorer

vim.pack.add({
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/nvim-mini/mini.icons",
})

local oil = require("oil")

oil.setup({
    delete_to_trash = true,
    watch_for_changes = true,
    keymaps = {
        ["g?"] = { "actions.show_help", mode = "n" },
        ["<CR>"] = "actions.select",
        ["-"] = { "actions.parent", mode = "n" },
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["<C-t>"] = { "actions.toggle_trash", mode = "n" },
        ["<ESC>"] = { "actions.close", mode = "n" },
    },
    use_default_keymaps = true,
    view_options = {
        show_hidden = true,
    },
})

vim.keymap.set("n", "-", oil.open_float)
