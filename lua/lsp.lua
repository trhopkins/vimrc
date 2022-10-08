-- Language Server Protocol options for Neovim

require'lspconfig'.hls.setup {} -- Haskell

require'lspconfig'.jdtls.setup { -- Java (Eclipse jdtls)
	cmd = { 'jdtls' },
	--on_attach = require'completion'.on_attach, -- configure properly first!
	root_dir = function(fname)
		return require'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
	end
}

--require'lspconfig'.ccls.setup {} -- C, C++

require'lspconfig'.ccls.setup { -- C, C++
	cmd = { "ccls" },
	filetypes = { "c", "cpp" },
	init_options = {
		compilationDatabaseDirectory = "build";
		index = {
			threads = 0;
		};
		clang = {
			excludeArgs = { "-frounding-math"} ;
		};
	}
}

require'lspconfig'.racket_langserver.setup {} -- Racket

require'lspconfig'.ocamllsp.setup {} -- OCaml

