-- lsp configuration

vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

-- LSPs
vim.lsp.enable("rust_analyzer") -- rust
vim.lsp.enable("lua_ls") -- lua
vim.lsp.enable("bashls") -- bash
vim.lsp.enable("gopls") -- go
vim.lsp.enable("zls") -- zig
vim.lsp.enable("ty") -- python
vim.lsp.enable("clangd") -- c
vim.lsp.enable("svelte") -- svelte
vim.lsp.enable("ts_ls") -- typescript
vim.lsp.enable("expert") -- elixir
vim.lsp.enable("gleam") -- gleam
vim.lsp.enable("glsl_analyzer") -- glsl
vim.lsp.enable("cmake") -- cmake
vim.lsp.enable("ruff") -- python
vim.lsp.enable("tinymist") -- typst

-- keymaps
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>se", vim.diagnostic.open_float)
