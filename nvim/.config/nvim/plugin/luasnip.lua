-- snippet engine
-- TODO: build

-- vim.pack.del({ "LuaSnip" })
vim.pack.add({
    "https://github.com/rafamadriz/friendly-snippets",
    { src = "https://github.com/L3MON4D3/LuaSnip", version = vim.version.range("2.*") },
})

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
require("luasnip.loaders.from_vscode").lazy_load()

local luasnip = require("luasnip")

-- stylua: ignore start
vim.keymap.set("i", "<C-j>", luasnip.expand)
vim.keymap.set({"i", "v"}, "<C-l>", function() luasnip.jump(1) end)
vim.keymap.set({"i", "v"}, "<C-h>", function() luasnip.jump(-1) end)
-- stylua: ignore end
vim.keymap.set({ "i", "v" }, "<C-k>", function()
    if require("luasnip").choice_active() then
        require("luasnip").change_choice(1)
    end
end)

-- build = "make install_jsregexp",
-- build command
-- vim.api.nvim_create_autocmd("PackChanged", {
--     callback = function(ev)
--         local name, kind = ev.data.spec.name, ev.data.kind
--         if name == "LuaSnip" and kind == "install" then
--             if not ev.data.active then
--                 vim.cmd.packadd("nvim-treesitter")
--             end
--             vim.cmd("make install_jsregexp")
--         end
--     end,
-- })
