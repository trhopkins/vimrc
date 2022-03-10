-- Load plugins as necessary

require "paq" {
	"savq/paq-nvim";           -- let Paq manage itself
	"neovim/nvim-lspconfig";   -- language server integration
	"nvim-treesitter/nvim-treesitter"; -- syntax highlighting
	"hrsh7th/nvim-cmp";        -- autocompletion
	"hrsh7th/cmp-nvim-lsp";    -- LSP source for cmp
	"hrsh7th/cmp-nvim-lua";    -- nvim-lua-specific source for cmp
	"hrsh7th/cmp-path";    -- file path source for cmp
	"hrsh7th/cmp-buffer";    -- buffer source for cmp (Markdown?)
	"saadparwaiz1/cmp_luasnip"; -- snippets source for cmp
	"L3MON4D3/LuaSnip";        -- LSP snippets engine
	"tpope/vim-surround";      -- wrap text automatically
	"tpope/vim-repeat";        -- repeating macros works
	"jiangmiao/auto-pairs";    -- wrap text automatically, part 2
	"lervag/vimtex";           -- LaTeX integration
	"airblade/vim-gitgutter";  -- show edited lines in git repos
	--"sirver/ultisnips";
}

--require('completion') -- set up nvim-cmp and associated plugins further

