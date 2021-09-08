-- Travis Hopkins neovim configs

-- see oroques.dev/notes/neovim-init/

-- HELPERS --
-- consider adding these later for clarity
-- local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
-- local fn = vim.fn   -- to call Vim functions e.g. fn.bufnr()
-- local g = vim.g     -- a table to access global variables
-- local opt = vim.opt -- to set options
-- local set = opt     -- to read more like VimL

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

require('options') -- call options.lua to set editor configuration
require('plugins') -- load necessary plugins. TODO: add more

