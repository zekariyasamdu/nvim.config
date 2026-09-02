vim.pack.add({
  -- essentials
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/neovim/nvim-lspconfig',
  -- theme
  'https://github.com/vague-theme/vague.nvim',
  -- nav
  'https://github.com/nvim-mini/mini.pick',
  'https://github.com/nvim-mini/mini.icons',
})

-- config
vim.cmd.colorscheme("vague")
require("nvim-treesitter").setup()
-- require("nvim-lspconfig").setup()
require("mini.pick").setup()
require("mini.icons").setup()
