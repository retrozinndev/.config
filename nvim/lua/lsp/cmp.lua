vim.pack.add({
    { src = "https://github.com/hrsh7th/nvim-cmp", name = "Cmp" },

    -- completion sources
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/cmp-cmdline" },
    { src = "https://github.com/hrsh7th/cmp-path" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help" }
});

local cmp = require("cmp");

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
	{ name = "buffer" }
    },
    matching = {
	disallow_symbol_nonprefix_matching = false,
	disallow_fullfuzzy_matching = false,
	disallow_fuzzy_matching = false,
	disallow_partial_fuzzy_matching = false,
	disallow_partial_matching = false,
	disallow_prefix_unmatching = false
    };
});

cmp.setup.cmdline({ ':' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
	{ name = "cmdline" },
        { name = "path" }
    }
});

cmp.setup({
    snippet = {
	expand = function(args)
	    vim.snippet.expand(args.body);
	end
    },

    mapping = cmp.mapping.preset.insert({
	['<C-b>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-e>'] = cmp.mapping.abort(),
	['<C-Space>'] = cmp.mapping.complete(),
	['<Tab>'] = cmp.mapping.select_next_item(),
	['<S-Tab>'] = cmp.mapping.select_prev_item(),
	['<CR>'] = cmp.mapping.confirm({ select = true })
    }),
    window = {
	--documentation = cmp.config.window.bordered(),
	--cmp = cmp.config.window.bordered()
    },
    sources = cmp.config.sources({
	{ name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" }
    }, {
	{ name = "buffer" }
    })
});
