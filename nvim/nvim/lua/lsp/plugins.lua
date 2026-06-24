vim.pack.add({
    { src = "https://github.com/folke/trouble.nvim", name = "Trouble" },
    { src = "https://github.com/maan2003/lsp_lines.nvim", name = "LspLines" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "Treesitter" }
});

-- trouble.nvim
require("trouble").setup();

-- lsplines
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = false
});
local lslines = require("lsp_lines");
lslines.setup();
lslines.toggle();


-- vim.api.nvim_create_autocmd("LspAttach", {
--     pattern = "*",
--     callback = function ()
--         vim.treesitter.start();
--     end
-- });
