-- configuration of various autocmds

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    desc = "Better navigation for wrapped lines in TeX, Markdown, and typst files",
    pattern = { "tex", "markdown", "typst" },
    callback = function()
        vim.schedule(function()
            -- j->gj and k->gk to navigate wrapped lines
            vim.keymap.set({ "n", "v" }, "j", "gj")
            vim.keymap.set({ "n", "v" }, "k", "gk")

            -- -- skip to end or beginning of line in normal and visual mode
            -- vim.keymap.set("n", "L", "g$")
            -- vim.keymap.set("n", "H", "g^")
            -- vim.keymap.set("v", "L", "g$")
            -- vim.keymap.set("v", "H", "g^")
        end)
    end,
})

-- auto rename oil.nvim renames in files using snacks.nvim
vim.api.nvim_create_autocmd("User", {
    pattern = "OilActionsPost",
    callback = function(event)
        if event.data.actions[1].type == "move" then
            Snacks.rename.on_rename_file(event.data.actions[1].src_url, event.data.actions[1].dest_url)
        end
    end,
})

-- autostart typst preview
local typst_preview_group = vim.api.nvim_create_augroup("TypstAutoPreview", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
    group = typst_preview_group,
    callback = function(args)
        -- Get the LSP client that just attached
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        -- Check if the attached client is specifically tinymist
        if client and client.name == "tinymist" then
            -- vim.schedule waits for the Neovim event loop to settle before running
            vim.schedule(function()
                -- Check if we are actually in a typst buffer to be safe
                if vim.bo[args.buf].filetype == "typst" then
                    vim.cmd("TypstPreview")
                end
            end)
        end
    end,
})
