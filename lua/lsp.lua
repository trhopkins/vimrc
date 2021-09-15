-- Language Server Protocol options for Neovim

require'lspconfig'.hls.setup {} -- Haskell

require'lspconfig'.jdtls.setup { -- Java (Eclipse jdtls)
	cmd = { 'jdtls' },
	root_dir = function(fname)
		return require'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
	end
}

