-- Set mappings for Neovim

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('n', '<leader>o', 'm`o<Esc>``') -- add line below
map('n', '<leader>O', 'm`O<Esc>``') -- add line above
map('n', 'j', 'gj') -- respect linewraps
map('n', 'k', 'gk') -- respect linewraps

