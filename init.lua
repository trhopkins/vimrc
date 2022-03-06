-- Travis Hopkins's Neovim configuration files
-- Source lua/init.lua

require('options') -- set editor configuration
require('mappings') -- load keymaps
require('lsp') -- Language Server Protocol
require('treesitter') -- highlighting and syntax-edits
require('snippets') -- shortcuts for editing

-- consider XDG_DATA_HOME ($HOME/.local/share)?
paqLocation = os.getenv('HOME') .. '/.local/share/nvim/site/pack/paqs/start/paq-nvim'
if os.execute('[ -d' .. paqLocation .. ' ]') == 0 then -- check if savq/paq-nvim is installed
	require('plugins') -- load necessary plugins. TODO: add more
end

print "Hello world!"
