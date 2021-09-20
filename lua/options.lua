-- Set options for Neovim

-- works just like set in VimL
vim.g.nocompatible   = true -- no vi compatibility
vim.o.hidden         = true -- switch from unsaved files easier
vim.o.wildmenu       = true -- better completion features
vim.o.showcmd        = true -- show partial commands as they are typed
vim.o.number         = true -- show line number
vim.o.relativenumber = true -- show line distance from current
vim.o.ignorecase     = true -- case-insensitive search
vim.o.smartcase      = true -- case-sensitive search if any uppercase letters
vim.o.autoindent     = true -- remain on same indent even if filetype is not specified
vim.o.backspace      = "indent,eol,start" -- backspace across newlines, indents

