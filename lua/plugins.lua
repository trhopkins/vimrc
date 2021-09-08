-- Load plugins as necessary
require "paq" {
    "savq/paq-nvim"; -- Let Paq manage itself
    "neovim/nvim-lspconfig";
    "nvim-treesitter/nvim-treesitter";
}

-- TODO: only require larger plugins for related filetypes, ie. lervag/vimtex
-- for .tex files

-- Find list of good neovim lua plugins:
-- nvim-telescope
-- fzf
-- vimtex
-- completion-nvim
-- deoplete
-- nvim-dap
