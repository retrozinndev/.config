vim.pack.add({
    -- deps
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-java/lua-async-await" },

    -- plugins
    { src = "https://github.com/shaun-mathew/Chameleon.nvim" },
    { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
    { src = "https://github.com/vyfor/cord.nvim" },
    { src = "https://github.com/echasnovski/mini.pick" },
    { src = "https://github.com/ThePrimeagen/refactoring.nvim" },
    { src = "https://github.com/s1n7ax/nvim-window-picker" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/rcarriga/nvim-notify" },
});


require("chameleon").setup();
require("neo-tree").setup({
    filesystem = {
	filtered_items = {
	    visible = true,
	    hide_gitignored = false,
	    hide_dotfiles = false
	},

	hijack_netrw_behavior = "open_default"
    }
});
-- "hijack" netrw
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "netrw",
    callback = function()
        if vim.b.netrw_method == nil then
            vim.defer_fn(function()
	        vim.cmd("tabnew | Neotree current dir=" .. vim.b.netrw_curdir);
            end, 0)
        end
    end
});

require("cord").setup({});
require("mini.pick").setup({});
require("gitsigns").setup({});
require("lualine").setup({});

-- nvim-notify
local notify = require("notify");
notify.setup({
    fps = 30,
    merge_duplicates = true,
    timeout = 1000,
    top_down = true,
    level = 0
});
vim.notify = notify.notify;
