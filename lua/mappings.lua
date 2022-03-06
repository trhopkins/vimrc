-- Key mappings for Neovim

-- helper function for keymaps. Thank you TJ Devries
local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' ' -- leader key for user-created "mode"

-- TODO: mapping that sources all of these files in one go?
map('n', '<leader><leader>i', ':luafile $MYVIMRC<cr>') -- source init file
map('n', '<leader><leader>m', ':luafile $XDG_CONFIG_HOME/nvim/lua/mappings.lua<cr>')   -- source keymaps
map('n', '<leader><leader>s', ':luafile $XDG_CONFIG_HOME/nvim/lua/snippets.lua<cr>')   -- source snippets
map('n', '<leader><leader>o', ':luafile $XDG_CONFIG_HOME/nvim/lua/options.lua<cr>')    -- source options
map('n', '<leader><leader>p', ':luafile $XDG_CONFIG_HOME/nvim/lua/plugins.lua<cr>')    -- source plugins
map('n', '<leader><leader>l', ':luafile $XDG_CONFIG_HOME/nvim/lua/lsp.lua<cr>')        -- source LSP info
map('n', '<leader><leader>t', ':luafile $XDG_CONFIG_HOME/nvim/lua/treesitter.lua<cr>') -- source TS info

-- normal mode
map('n', '<leader>o', 'm`o<esc>``') -- add line below
map('n', '<leader>O', 'm`O<esc>``') -- add line above
map('n', 'j', 'gj') -- respect linewraps. Messes with repeats across linewraps?
map('n', 'k', 'gk') -- respect linewraps. Messes with repeats across linewraps?
map('n', '<leader>m', ':w<cr>:!gcc %<cr>:!./a.out<cr>') -- save, run, and compile a c program
map('n', '<leader>M', ':w<cr>:!g++ %<cr>:!./a.out<cr>') -- save, run, and compile a c++ program

--[[
-- C/C++ specific bindings. Consider managing snippets this way also?
if (vim.bo.filetype == 'lua') then
	map('n', '<leader>m', ':w<cr>:!gcc %<cr>:!./a.out<cr>') -- save, run, and compile a c program
	map('n', '<leader>M', ':w<cr>:!g++ %<cr>:!./a.out<cr>') -- save, run, and compile a c++ program
end
--]]

