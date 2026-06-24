
require("plugins");
require("lsp/lsp");
require("cmd");
require("colorschemes");
require("keymaps");

vim.o.number = true;
-- vim.o.relativenumber = true; -- I personally don't like this
vim.opt.termguicolors = true;
vim.o.winborder = "rounded";
vim.o.cursorline = true;

-- tab
local tabsize = 4;
vim.o.expandtab = true;
vim.bo.softtabstop = tabsize;
vim.o.shiftwidth = tabsize;

vim.opt.fillchars = {
    eob = " "
};

vim.cmd("highlight StatusLine guibg=NONE");
