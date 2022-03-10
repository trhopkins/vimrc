-- Load plugins as necessary

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('completion') -- set up nvim-cmp and associated plugins further

return require('packer').startup(function(use)
	use "wbthomason/packer.nvim"           -- let Paq manage itself
	use "neovim/nvim-lspconfig"   -- language server integration
	use "nvim-treesitter/nvim-treesitter" -- syntax highlighting
	use "hrsh7th/nvim-cmp"        -- autocompletion
	use "hrsh7th/cmp-nvim-lsp"    -- LSP source for cmp
	use "hrsh7th/cmp-nvim-lua"    -- nvim-lua-specific source for cmp
	use "hrsh7th/cmp-path"    -- file path source for cmp
	use "hrsh7th/cmp-buffer"    -- buffer source for cmp (Markdown?)
	use "saadparwaiz1/cmp_luasnip" -- snippets source for cmp
	use "L3MON4D3/LuaSnip"        -- LSP snippets engine
	use "tpope/vim-surround"      -- wrap text automatically
	use "tpope/vim-repeat"        -- repeating macros works
	use "jiangmiao/auto-pairs"    -- wrap text automatically, part 2
	use "lervag/vimtex"           -- LaTeX integration
	use "airblade/vim-gitgutter"  -- show edited lines in git repos

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)

