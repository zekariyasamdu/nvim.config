return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			-- list of servers for mason to install
			-- The names should be the names found in lspconfig not in the mason gui
			ensure_installed = {
				"ts_ls",
				"eslint",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				"clangd",
				"sqlls",
			},
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			-- list of formatter for mason to install
			ensure_installed = {
				"prettier", -- ts/js formatter
				"prettierd", -- like prettier but faster
				"biome", --  like prettierd but faster
				"stylua", -- lua formatter
				"clang-format", -- cpp formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pgformatter", -- sql formatter
				"pylint", -- python linter
				"eslint_d", -- eslint linter
			},
		},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
}
