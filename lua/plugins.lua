return require('packer').startup(function()
	use "wbthomason/packer.nvim"   -- let Paq manage itself
	use "neovim/nvim-lspconfig"    -- language server integration
	use "nvim-treesitter/nvim-treesitter" -- syntax highlighting
	use "hrsh7th/cmp-buffer"       -- buffer source for cmp (Markdown?)
	use "hrsh7th/cmp-nvim-lsp"     -- LSP source for cmp
	use "hrsh7th/cmp-nvim-lua"     -- nvim-lua-specific source for cmp
	use "hrsh7th/cmp-path"         -- file path source for cmp
	use "hrsh7th/nvim-cmp"         -- autocompletion
	use "L3MON4D3/LuaSnip"         -- LSP snippets engine
	use "saadparwaiz1/cmp_luasnip" -- snippets source for cmp
	use "jiangmiao/auto-pairs"     -- wrap text automatically, part 2
	use "lervag/vimtex"            -- LaTeX integration
	use "tpope/vim-repeat"         -- repeating macros works
	use "tpope/vim-surround"       -- wrap text automatically
	use "airblade/vim-gitgutter"   -- show edited lines in git repos
end)

