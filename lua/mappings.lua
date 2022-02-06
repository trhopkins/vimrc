-- Set mappings for Neovim

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' ' -- leader key for user-created "mode"

map('n', '<leader>o', 'm`o<esc>``') -- add line below
map('n', '<leader>O', 'm`O<esc>``') -- add line above
map('n', 'j', 'gj') -- respect linewraps
map('n', 'k', 'gk') -- respect linewraps
map('n', '<leader>m', ':w<cr>:!gcc %<cr>:!./a.out<cr>') -- save, run, and compile a c program
map('n', '<leader>M', ':w<cr>:!g++ %<cr>:!./a.out<cr>') -- save, run, and compile a c++ program

