-- Travis Hopkins neovim configs

-- package management. TODO: move to separate file/module
require "paq" {
    "savq/paq-nvim"; -- Let Paq manage itself
    "neovim/nvim-lspconfig"
}

-- see oroques.dev/notes/neovim-init/

-- HELPERS --
-- consider adding these later for clarity

--local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
--local fn = vim.fn   -- to call Vim functions e.g. fn.bufnr()
--local g = vim.g     -- a table to access global variables
--local opt = vim.opt -- to set options

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.o.number = true
