-- Load plugins as necessary

require "paq" {
	"savq/paq-nvim";					 -- let Paq manage itself
	"neovim/nvim-lspconfig";	 -- language server integration
	"nvim-treesitter/nvim-treesitter"; -- syntax highlighting
	"hrsh7th/nvim-cmp";				-- autocompletion
	"saadparwaiz/cmp_luasnip"; -- snippets source for cmp
	"hrsh7th/cmp-nvim-lsp";		-- LSP source for cmp
	"l3m0n4d3/luasnip";				-- LSP snippets engine
	"tpope/vim-surround";			-- wrap text automatically
	"tpope/vim-repeat";				-- repeating macros works
	"jiangmiao/auto-pairs";		-- wrap text automatically, part 2
	"lervag/vimtex";					 -- LaTeX integration
	"airblade/vim-gitgutter";	-- show edited lines in git repos
	--"sirver/ultisnips";								-- snippets, mostly for LaTeX
}

-- let nvim-cmp do more stuff?
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- already included in lsp.lua?
--require'lspconfig'.hls.setup{on_attach=require'completion'.on_attach}

-- TODO: only require larger plugins for related filetypes, ie. lervag/vimtex
-- for .tex files

-- Find list of good neovim lua plugins:
-- nvim-telescope?
-- fzf?
-- deoplete?
-- nvim-dap
-- ctrlp or similar?
-- ag as search replacement?

-- fix the menu
--vim.fn["set completeopt=menu,menuone,noselect"]

-- Setup nvim-cmp. Taken directly from the docs at hrsh7th/nvim-cmp
local cmp = require'cmp'

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	mapping = {
		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
	}, {
		{ name = 'buffer' },
	})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
	}, {
		{ name = 'buffer' },
	})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['hls'].setup {
	capabilities = capabilities
}

