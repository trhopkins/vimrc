-- enable treesitter highlighting. Move to own file if more options are added?
--
-- currently installed: Python, Haskell
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true -- consider disabling `:h syntax`?
	}
}

