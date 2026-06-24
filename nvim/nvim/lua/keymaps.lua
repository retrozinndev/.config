vim.g.mapleader = ' ';

-- mini.pick
vim.keymap.set('n', "<leader>/", ":Pick grep<CR>");
vim.keymap.set('n', "<leader>ff", ":Pick files<CR>");
vim.keymap.set('n', "<leader>rg", ":Pick grep_live<CR>");

-- trouble.nvim
vim.keymap.set('n', "<leader>xx", ":Trouble diagnostics toggle<CR>");

-- lsp_lines.nvim
vim.keymap.set('n', "<leader>ll", require("lsp_lines").toggle);

-- lsp
vim.keymap.set('n', "<leader>lr", vim.lsp.buf.rename, {
    desc = "Lsp symbol refactoring"
});
