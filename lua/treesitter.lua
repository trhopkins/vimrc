-- enable treesitter highlighting. Move to own file if more options are added?
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true -- consider disabling `:h syntax`?
	}
}

