vim.pack.add({
    { src = "https://github.com/folke/trouble.nvim" },
    { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" }
});

-- trouble.nvim
require("trouble").setup();

-- tiny-inline-diagnostic
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = false
});
local tid = require("tiny-inline-diagnostic");
tid.setup();
tid.enable();

-- vim.api.nvim_create_autocmd("LspAttach", {
--     pattern = "*",
--     callback = function ()
--         vim.treesitter.start();
--     end
-- });
