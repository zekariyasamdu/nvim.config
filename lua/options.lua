vim.g.netrw_banner = 0

vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.signcolumn = "yes"

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.wrap = false
vim.o.autoindent = true
vim.o.inccommand = "split"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.scrolloff = 8

vim.o.splitbelow = true
vim.o.splitright = true
vim.o.cmdheight = 0

vim.opt.clipboard = "unnamedplus"
vim.opt.isfname:append("@-@")
vim.o.winborder = "rounded"

vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("data") .. "/undodir"

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Yellow line when yanking.",
  callback = function()
    vim.hl.on_yank()
  end,
})
