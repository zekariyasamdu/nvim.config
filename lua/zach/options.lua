vim.o.number = true
vim.o.relativenumber = true
-- Indentation
vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.shiftwidth = 2 -- Number of spaces used for each step of (auto)indent
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.smartindent = true -- Auto-indent new lines
vim.opt.autoindent = true -- Copy indent from current line when starting a new one
vim.opt.termguicolors = true
vim.o.signcolumn = "yes"

-- others
vim.o.clipboard = "unnamedplus" -- copying to clipboard
vim.o.winborder = "rounded" -- boarder for floating window
vim.o.directory = "~/.local/state/nvim/swap//"
