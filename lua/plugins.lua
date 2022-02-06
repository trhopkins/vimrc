-- Load plugins as necessary
require "paq" {
    "savq/paq-nvim"; -- Let Paq manage itself
    "neovim/nvim-lspconfig";
    "nvim-treesitter/nvim-treesitter";
    "nvim-lua/completion-nvim";
    --"blackCauldron7/surround.nvim";
    "tpope/vim-surround";
    "tpope/vim-repeat";
    "jiangmiao/auto-pairs";
    "lervag/vimtex"
}

-- already included in lsp.lua?
--require'lspconfig'.hls.setup{on_attach=require'completion'.on_attach}

-- TODO: only require larger plugins for related filetypes, ie. lervag/vimtex
-- for .tex files

-- Find list of good neovim lua plugins:
-- nvim-telescope
-- fzf
-- vimtex
-- completion-nvim
-- deoplete
-- nvim-dap
-- ag as search replacement?

