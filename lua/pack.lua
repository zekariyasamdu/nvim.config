-- ls ~/.local/share/nvim/site/pack/core/opt/ - for pack
-- ls ~/.local/share/nvim/lazy/ - for lazy
-- ls ~/.local/share/nvim/site/parser - for parses
-- ls ~/.local/share/nvim/mason/packages/ - where lsps are placed
vim.pack.add({
  -- essentials
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/williamboman/mason.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/williamboman/mason-lspconfig.nvim',
  'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
  -- other
  'https://github.com/vague-theme/vague.nvim',
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/akinsho/toggleterm.nvim',
})

-- nvim-treesitter/nvim-treesitter 
require('nvim-treesitter').install {"c", "lua", "vim", "vimdoc", "query", "markdown"
,"markdown_inline", "javascript", "typescript", "cpp", "css", "html", "python", "go"}

-- vague-theme/vague.nvim
require('vague').setup()
vim.cmd.colorscheme("vague")

-- mason
require("mason").setup({
  ui = {
    icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
    }
  }
})

-- mason-lspconfig
require('mason-lspconfig').setup() -- enables language servers automatically
-- or you can do it manually
-- nvim-lspconfig 
-- vim.lsp.enable("lua_ls")

-- mason-tool-installer -> we can use mason package names insted of lspconfig names (linters and formaters as well which) 
require('mason-tool-installer').setup{
	ensure_installed = {
    -- lsps
    'lua_ls',
    'ts_ls',
    -- linters
    -- formaters
	},
   integrations = {
    ['mason-lspconfig'] = true, -- so that we can use lspconfig names as alternative options
  },
}

-- nvim-mini 
require("mini.icons").setup()
require("mini.pick").setup()
require("mini.extra").setup()
require("mini.pairs").setup()
vim.keymap.set("n", "<leader>ff", "<CMD>Pick files<CR>", { desc = "Pick find files" })
vim.keymap.set("n", "<leader>fg", "<CMD>Pick grep_live<CR>", { desc = "Pick live grep" })
vim.keymap.set("n", "<leader>fb", "<CMD>Pick buffers<CR>", { desc = "Pick buffers" })
vim.keymap.set("n", "<leader>fh", "<CMD>Pick help<CR>", { desc = "Pick help tags" })

-- oil
require("oil").setup({
  view_options = {
    show_hidden = true,
  },
  lsp_file_methods = {
    enabled = true,
    timeout_ms = 9000,
    autosave_changes = false,
  },
})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- toggleterm 
require("toggleterm").setup({
  open_mapping = [[<c-\>]],
  shade_terminals = true,
  direction = "tab",
  float_opts = {
    border = "rounded",
  },
})
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
