-- ls ~/.local/share/nvim/site/pack/core/opt/ - for pack
-- ls ~/.local/share/nvim/lazy/ - for lazy
-- ls ~/.local/share/nvim/site/parser - for parses
-- ls ~/.local/share/nvim/mason/packages/ - where lsps are placed
vim.pack.add({
	-- essentials -----------------------------------------
	"https://github.com/nvim-treesitter/nvim-treesitter",
	-- Lsps
	"https://github.com/williamboman/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/williamboman/mason-lspconfig.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	-- Autocompletions
	"https://github.com/hrsh7th/nvim-cmp", -- completion manager
	"https://github.com/hrsh7th/cmp-nvim-lsp", -- connects nvim-cmp ↔ LSP
	"https://github.com/saadparwaiz1/cmp_luasnip", -- connects LuaSnip ↔ nvim-cmp
	"https://github.com/hrsh7th/cmp-buffer", -- text already inside your buffer
	"https://github.com/hrsh7th/cmp-path", -- handles filesystem paths.
	"https://github.com/L3MON4D3/LuaSnip", -- snippet engine
	"https://github.com/rafamadriz/friendly-snippets", -- huge collection of pre-made snippets.
	"https://github.com/onsails/lspkind.nvim", -- visual decoration.
	"https://github.com/onsails/lspkind.nvim", -- visual decoration.
	"https://github.com/f3fora/cmp-spell", -- spell check
	-- Formaters
	"https://github.com/stevearc/conform.nvim",
	-- Lint
	"https://github.com/mfussenegger/nvim-lint",
	-- other -----------------------------------------
	"https://github.com/vague-theme/vague.nvim",
	"https://github.com/nvim-mini/mini.nvim",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/akinsho/toggleterm.nvim",
	"https://github.com/rmagatti/auto-session",
	"https://github.com/windwp/nvim-ts-autotag",
	"https://github.com/lukas-reineke/indent-blankline.nvim",
	"https://github.com/github/copilot.vim",
})

-- lsp
require("config.lsp")
-- completion
require("config.completion")
-- formaters
require("config.formater")
-- lint
require("config.lint")

-- nvim-treesitter/nvim-treesitter
require("nvim-treesitter").install({
	"c",
	"lua",
	"vim",
	"vimdoc",
	"query",
	"markdown",
	"markdown_inline",
	"javascript",
	"typescript",
	"cpp",
	"css",
	"html",
	"python",
	"go",
})

-- vague-theme/vague.nvim
require("vague").setup()
vim.cmd.colorscheme("vague")

-- nvim-mini
require("mini.icons").setup()
require("mini.pick").setup()
require("mini.extra").setup()
require("mini.pairs").setup()
require("mini.surround").setup() -- sd sa sr
require("mini.cmdline").setup({
	autocorrect = { enable = false },
})
vim.keymap.set("n", "<leader>ff", "<CMD>Pick files<CR>", { desc = "Pick find files" })
vim.keymap.set("n", "<leader>fg", "<CMD>Pick grep_live<CR>", { desc = "Pick live grep" })
vim.keymap.set("n", "<leader>fb", "<CMD>Pick buffers<CR>", { desc = "Pick buffers" })
vim.keymap.set("n", "<leader>fh", "<CMD>Pick help<CR>", { desc = "Pick help tags" })
vim.keymap.set("n", "<leader>pk", function()
	MiniExtra.pickers.keymaps()
end, { desc = "search keymaps" })

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
-- vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

-- nvim-ts-autotag
require("nvim-ts-autotag").setup({
	opts = {
		enable_close = true, -- Auto close tags
		enable_rename = true, -- Auto rename pairs of tags
		enable_close_on_slash = false, -- Auto close on trailing </
	},
})

-- Auto-session
require("auto-session").setup({
	auto_restore_enabled = false,
	auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
})

vim.keymap.set("n", "<leader>sr", "<cmd>AutoSession restore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
vim.keymap.set("n", "<leader>ss", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

-- Indent-blankline
local highlight = {
	"CursorColumn",
	"Whitespace",
}
require("ibl").setup({
	indent = { highlight = highlight, char = "" },
	whitespace = {
		highlight = highlight,
		remove_blankline_trail = false,
	},
	scope = { enabled = false },
})

-- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-A>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
