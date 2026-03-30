-- treesitter for for better syntax highlighting

vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-treesitter").setup({
    ensure_installed = {
        "markdown",
        "markdown_inline",
        "regex",
        "vim",
        "vimdoc",
        "query",
        "latex",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = { "vimdoc", "latex" },
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        disable = { "python", "ocaml" },
    },
})

-- run :TSUpdate when installing/updating this package
vim.api.nvim_create_autocmd("PackChanged", {
    callback = function(ev)
        local name, kind = ev.data.spec.name, ev.data.kind
        if name == "nvim-treesitter" and kind == "update" then
            if not ev.data.active then
                vim.cmd.packadd("nvim-treesitter")
            end
            vim.cmd("TSUpdate")
        end
    end,
})
