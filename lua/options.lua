-- Set options for Neovim

-- environmental variables
--local home = vim.env.HOME -- ~
--local config = vim.env.XDG_CONFIG_HOME -- assumes .profile and XDG are set up correctly

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
vim.o.hlsearch       = false -- prevent highlighting searches outside of / or ?
vim.o.smartcase      = true -- searching is case-insensitive unless you specify capitals
vim.o.backup         = false -- don't make backups before writing
vim.o.backupcopy     = "yes" -- overwrite files on update instead of rename+rewrite
vim.o.belloff        = "all" -- never ring the bell
vim.o.lazyredraw     = true -- don't redraw the screen during macro playback
vim.o.clipboard      = 'unnamedplus' -- let xclip provide clipboard register
--vim.o.cursorline     = true -- underlines current line. Remove maybe?

